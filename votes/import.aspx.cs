using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data.OleDb;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace votes
{
    public partial class import : System.Web.UI.Page
    {

        OleDbConnection Econ;
        SqlConnection con;

        string constr, Query, sqlconn;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnDelete_Click(object sender, EventArgs e)
        {
            // Your code to delete data from SQL Server
            // Replace the following line with your actual delete logic
            // For example, using ADO.NET:
            // SqlConnection connection = new SqlConnection(connectionString);
            // SqlCommand command = new SqlCommand("DELETE FROM YourTable WHERE YourCondition", connection);

            // Execute the delete command
            // connection.Open();
            // command.ExecuteNonQuery();
          
        }

        private void ExcelConn(string FilePath)
        {
            constr = string.Format(@"Provider=Microsoft.ACE.OLEDB.12.0;Data Source={0};Extended Properties=""Excel 12.0 Xml;HDR=YES;""", FilePath);
            Econ = new OleDbConnection(constr);
        }
        private void connection()
        {
            sqlconn = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            con = new SqlConnection(sqlconn);
        }
        private void InsertExcelRecords(string FilePath)
        {
            ExcelConn(FilePath);
            Query = string.Format("Select [std_id],[username],[password] FROM [{0}]", "Sheet1$");
            OleDbCommand Ecom = new OleDbCommand(Query, Econ);
            Econ.Open();
            DataSet ds = new DataSet();
            OleDbDataAdapter oda = new OleDbDataAdapter(Query, Econ);
            Econ.Close();
            oda.Fill(ds);
            DataTable Exceldt = ds.Tables[0];
            connection();
            //creating object of SqlBulkCopy      
            SqlBulkCopy objbulk = new SqlBulkCopy(con);
            //assigning Destination table name      
            objbulk.DestinationTableName = "voters";
            //Mapping Table column      
            objbulk.ColumnMappings.Add("std_id", "std_id");
            objbulk.ColumnMappings.Add("username", "username");
            objbulk.ColumnMappings.Add("password", "password");

            //inserting Datatable Records to DataBase      
            con.Open();
            objbulk.WriteToServer(Exceldt);
            con.Close();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string filePath = Path.Combine(Path.GetTempPath(), Guid.NewGuid().ToString("N") + ".xlsx");
            FileUpload1.SaveAs(filePath);
            try
            {
                InsertExcelRecords(filePath);
            }
            finally
            {
                File.Delete(filePath);
            }
        }
        [WebMethod]
        public static stdclass[] DataBind()
        {
            List<stdclass> details = new List<stdclass>();
            string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            con.Open();
            SqlCommand cmd = new SqlCommand(@"select *from voters", con);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                stdclass field = new stdclass();
                field.std_id = dr["std_id"].ToString();
                field.username = dr["username"].ToString();
                field.password = dr["password"].ToString();

                details.Add(field);
            }
            return details.ToArray();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            // connection.Close();

            string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            con.Open();
            SqlCommand cmd = new SqlCommand(@"delete from voters ", con);
            //cmd.Parameters.AddWithValue("@id", id);
            cmd.ExecuteNonQuery();

        }

        //protected void Button2_Click(object sender, EventArgs e)
        //{
        //    ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('error!',  'Address or Password Is in correct!', 'error')", true);


        //}

        [WebMethod]
        public static string confirmDelet(string id)
        {

            string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            con.Open();
            SqlCommand cmd = new SqlCommand(@"delete from voters ", con);
            //cmd.Parameters.AddWithValue("@id", id);
            cmd.ExecuteNonQuery();
            return "true";


        }
        public class stdclass
        {
            public string std_id { get; set; }
            public string username { get; set; }
            public string password { get; set; }

        }

    }
}