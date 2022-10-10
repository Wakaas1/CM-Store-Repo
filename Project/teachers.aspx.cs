using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace CM_Store
{
    public partial class teachers : System.Web.UI.Page
    {
        public string constr = ConfigurationManager.ConnectionStrings["con"].ConnectionString; 
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand cmd = Create_Command("getTeachersWithSubjects");
            string content = Read_Command(cmd);
            tablebody.InnerHtml = content;
        }
        public SqlCommand Create_Command(string query)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = query;
            return cmd;
        }
        public string Read_Command(SqlCommand cmd)
        {
            SqlConnection con = new SqlConnection(constr);
            cmd.Connection = con;
            string html = "";
            try
            {
                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                if(reader.HasRows)
                {
                    while (reader.Read())
                    {
                        html += "<tr class='row100'>";
                        html += "<td class='column100 column1' data-coulmn='column1'>" + reader[0].ToString() + "</td>";
                        html += "<td class='column100 column2' data-coulmn='column2'>" + reader[1].ToString() + "</td>";
                        html += "<td class='column100 column3' data-coulmn='column3'>" + reader[2].ToString() + "</td>";
                        html += "<td class='column100 column4' data-coulmn='column4'>" + reader[3].ToString() + "</td>";
                        html += "</tr>";
                    }
                }

            }
            catch (SqlException ex)
            {

                throw ex;
            }
            finally
            {
                con.Close();
            }
            return html;
        }
    }
}