using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace votes
{
    public partial class homepage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Session["stdid"].ToString();
            Label2.Text = Session["name"].ToString();
        }
        [WebMethod]
        public static string submitData(int std, string name, int selectedId)
        {
            string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;

            using (SqlConnection con = new SqlConnection(cs))
            {
                con.Open();

                using (SqlCommand cmd = new SqlCommand(@"
                INSERT INTO votes (std_id, username, cand_id) 
                VALUES (@std, @name, @cand)
            ", con))
                {
                    cmd.Parameters.AddWithValue("@std", std);
                    cmd.Parameters.AddWithValue("@name", name);
                    cmd.Parameters.AddWithValue("@cand", selectedId);
                    cmd.ExecuteNonQuery();
                }
            }

            return "true";
        }

    }
}