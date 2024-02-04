using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace votes
{
    public partial class add : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        [WebMethod]
        public static string SaveData(string first, string second, string third, string cand, string xilka)
        {
            try
            {
                string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;

                using (SqlConnection con = new SqlConnection(cs))
                {
                    con.Open();

                    // Handle file upload
                    string imagePath = HandleFileUpload();

                    string query = "INSERT INTO candidates(cand_id, name, middlename, lastname, images, postion) " +
                                   "VALUES (@candId, @firstName, @middleName, @lastName, @imagePath, @position)";

                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        cmd.Parameters.AddWithValue("@candId", cand);
                        cmd.Parameters.AddWithValue("@firstName", first);
                        cmd.Parameters.AddWithValue("@middleName", second);
                        cmd.Parameters.AddWithValue("@lastName", third);
                        cmd.Parameters.AddWithValue("@imagePath", imagePath);
                        cmd.Parameters.AddWithValue("@position", xilka);

                        cmd.ExecuteNonQuery();
                    }

                    return "Data saved successfully!";
                }
            }
            catch (Exception ex)
            {
                // Log the exception
                LogException(ex);

                return "Error: An unexpected error occurred while saving data.";
            }
        }

        private static string HandleFileUpload()
        {
            if (HttpContext.Current.Request.Files.Count > 0)
            {
                HttpPostedFile file = HttpContext.Current.Request.Files[0];
                string fileName = Path.GetFileName(file.FileName);
                string path = HttpContext.Current.Server.MapPath("images/") + fileName;
                file.SaveAs(path);
                return "images/" + fileName;
            }

            return null;
        }

        private static void LogException(Exception ex)
        {
            // Implement your logging mechanism here, such as writing to a log file or logging framework
            // Example: File.AppendAllText("error.log", $"{DateTime.Now}: {ex.Message}{Environment.NewLine}");
        }

    }
}