using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;
using System.Configuration;
using System.Data;
using System.Reflection.Emit;

namespace votes
{
    public partial class insertcandi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["name"] == null)
            {
                // Session variables are null, redirect to the login page
                Response.Redirect("insertlogin.aspx"); // Replace "LoginPage.aspx" with the actual login page URL
            }
            else
            {
                // Session variables are not null, display them in labels

                Label1.Text = Session["name"]?.ToString() ?? "N/A";
                Session.Clear();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            try
            {
                string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
                using (SqlConnection con = new SqlConnection(cs))
                {
                    con.Open();

                    // Validate file upload
                    if (FileUpload1.HasFile)
                    {
                        string ext = Path.GetExtension(FileUpload1.FileName);
                        if (ext.Equals(".jpg", StringComparison.OrdinalIgnoreCase) || ext.Equals(".png", StringComparison.OrdinalIgnoreCase))
                        {
                            string path = Server.MapPath("images/");
                            FileUpload1.SaveAs(path + FileUpload1.FileName);
                            string imagePath = "images/" + FileUpload1.FileName;

                            // Insert data into the database
                            string query = "INSERT INTO candidates(cand_id, name, middlename, lastname, images, postion) VALUES (@cand_id, @name, @middlename, @lastname, @images, @position)";
                            using (SqlCommand cmd = new SqlCommand(query, con))
                            {
                                cmd.Parameters.AddWithValue("@cand_id", cand.Text);
                                cmd.Parameters.AddWithValue("@name", first.Text);
                                cmd.Parameters.AddWithValue("@middlename", second.Text);
                                cmd.Parameters.AddWithValue("@lastname", third.Text);
                                cmd.Parameters.AddWithValue("@images", imagePath);
                                cmd.Parameters.AddWithValue("@position", DropDownList1.Text);

                                cmd.ExecuteNonQuery();

                                // Provide feedback to the user
                                // You can redirect to another page or display a success message here
                                Response.Write("Form submitted successfully!");
                            }
                        }
                        else
                        {
                            // Handle invalid file type
                            Response.Write("Invalid file type. Please upload a .jpg or .png file.");
                        }
                    }
                    else
                    {
                        // Handle case where no file is uploaded
                        Response.Write("Please upload a file.");
                    }
                }
            }
            catch (Exception ex)
            {
                // Handle other exceptions
                Response.Write("An error occurred: " + ex.Message);
            }

        }
    }
}