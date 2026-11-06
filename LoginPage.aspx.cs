using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace selfregistration
{
    public partial class LoginPage : System.Web.UI.Page
    {
        public SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            string str = ConfigurationManager.ConnectionStrings["myconnection"].ConnectionString.ToString();
            con = new SqlConnection(str);
        }

        

        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            string username = txtusername.Text.Trim();
            string password = txtpassword.Text;
            try
            {
                con.Open();
                string query = @"SELECT [Password]
                                     FROM Registration
                                     WHERE UserName = @UserName";
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.Add("@UserName",
                        SqlDbType.NVarChar, 100).Value = username;

                    object result = cmd.ExecuteScalar();

                    if (result != null && result != DBNull.Value)
                    {
                        Response.Redirect("SearchPage.aspx", false);
                    }
                }
                lblmsg.Text = "Invalid Username or Password";
            }
            catch (Exception)
            {
                throw;
            }
        }
    }
}