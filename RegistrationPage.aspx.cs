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
    public partial class RegistrationPage : System.Web.UI.Page
    {
       public SqlConnection con;
        
        //con = new SqlConnection(str);
        //con.Open();
        protected void Page_Load(object sender, EventArgs e)
        {
            string str = ConfigurationManager.ConnectionStrings["myconnection"].ConnectionString.ToString();
            con = new SqlConnection(str);
        }

        protected void BtnSave_Click(object sender, EventArgs e)
        {
            try
            {
                // DBConnection db = new DBConnection();
                con.Open();
                SqlCommand insertsturegis = new SqlCommand("sp_selfregistation", con);
                insertsturegis.CommandType = CommandType.StoredProcedure;
               // insertsturegis.Parameters.AddWithValue("@STU_ID", 0);
                insertsturegis.Parameters.AddWithValue("@FullName", txtname.Text);
                insertsturegis.Parameters.AddWithValue("@UserName", txtusername.Text);
                insertsturegis.Parameters.AddWithValue("@Address", txtaddress.Text);
                insertsturegis.Parameters.AddWithValue("@Phone", txtphone.Text);
                insertsturegis.Parameters.AddWithValue("@Password", txtpassword.Text);             
                //insertsturegis.Parameters.AddWithValue("@MODE", 'I');
                insertsturegis.ExecuteNonQuery();
            }
            catch(Exception)
            {
                throw;
            }
        }

        //protected void btnlogin_Click(object sender, EventArgs e)
        //{
        //    Response.Redirect("LoginPage.aspx");
        //}
    }
}