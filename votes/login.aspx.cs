using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace votes
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try {




                string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;

                using (SqlConnection con = new SqlConnection(cs))
                {
                    con.Open();

                    using (SqlCommand cmd = new SqlCommand(@"SELECT std_id, username FROM voters WHERE std_id = @stdid AND password = @pass", con))
                    {
                        cmd.Parameters.AddWithValue("@stdid", TextBox2.Text);
                        cmd.Parameters.AddWithValue("@pass", TextBox3.Text);

                        using (SqlDataReader dr = cmd.ExecuteReader())
                        {
                            if (dr.Read())
                            {
                                Session["stdid"] = dr["std_id"].ToString();
                                Session["name"] = dr["username"].ToString();
                                dr.Close();

                                // Check if the user exists in the other table
                                using (SqlCommand cmd2 = new SqlCommand(@"SELECT * FROM votes WHERE std_id = @stdid", con))
                                {
                                    cmd2.Parameters.AddWithValue("@stdid", TextBox2.Text);

                                    using (SqlDataReader dr2 = cmd2.ExecuteReader())
                                    {
                                        if (dr2.Read())
                                        {
                                            // User already exists in the other table
                                         
                                            Label1.Text = ("horey ayaa u coodese.");
                                            Label1.ForeColor = System.Drawing.Color.Red;
                                            Label1.Style["font-size"] = "20px";

                                        }
                                        else
                                        {
                                            // User exists in 'voters' table but not in the other table, redirect to homepage
                                            Response.Redirect("home.aspx");
                                            //Response.Redirect("homepage.aspx");
                                        }
                                    }
                                }
                            }
                            else
                            {
                                //Response.Write("waa qalad passwordkaaga.");
                                Label1.Text = ("waa qalad passwordkaaga.");
                                Label1.ForeColor = System.Drawing.Color.Red;
                                Label1.Style["font-size"] = "20px";

                            }
                        }
                    }
                }

            } catch(Exception ex) {
            
            }

         
        }
    }
}