using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using MySql.Data.MySqlClient;
using System.Data.SqlClient;

using System.Configuration;
//using System.Data.SqlClient.SqlCommand;

namespace WebApplication2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


            SqlCommand inscommand;
            SqlConnection conn;

            SqlCommand inscommandtop;
            SqlConnection conntop;
            int myid;


            try
            {

                string cs = ConfigurationManager.ConnectionStrings["newestateConnectionString"].ConnectionString;
                conn = new System.Data.SqlClient.SqlConnection();
                conn.ConnectionString = cs;

                string cmdtext = "SELECT * FROM room;";
                inscommand = new System.Data.SqlClient.SqlCommand(cmdtext, conn);
                conn.Open();

                SqlDataReader reader = inscommand.ExecuteReader();
                while (reader.Read())
                {
                    myid = (int)reader["roomid"];
                }
                inscommand.Dispose();
                conn.Close();
                conn.Dispose();

                conntop = new System.Data.SqlClient.SqlConnection(cs);
                //conntop.ConnectionString = cs;


                string cmdtexttop = "SELECT roomid FROM room;";
                inscommandtop = new System.Data.SqlClient.SqlCommand(cmdtexttop, conntop);
                conntop.Open();

                GridView3.DataSource = inscommandtop.ExecuteReader();
                GridView3.DataBind();

                // inscommandtop.Dispose();
                // conntop.Close();
                //  conntop.Dispose();




            }
            catch (MySqlException ex)
            {
                switch (ex.Number)
                {
                    case 0:
                        Response.Write("<br/><br/><br/>Cannot connect to server. " +
                                        "<br/>Sql Error Message = " + ex.Message +
                                        "<br/>Sql Error Number = " + ex.Number + "<br/><br/>");
                        break;
                    case 1045:
                        Response.Write("Invalid username/password, please try again" +
                                       "<br/>Sql Error Message = " + ex.Message +
                                       "<br/>Sql Error Number = " + ex.Number + "<br/><br/>");
                        break;
                    default:
                        Response.Write("<br/>Unknown Error = " + ex.Number +
                                        " Error Message = " + ex.Message);
                        break;
                }
            }


        }

        protected void Button1_Click(object sender, EventArgs e)
        {


            string tester = "Test";
            Button1.Text = tester;
        }
    }
}
