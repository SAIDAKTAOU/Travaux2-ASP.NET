using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Helpers;



namespace Homework2
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ServerValidation(object source, ServerValidateEventArgs args)
        {
            

            var pass = "admin";
            var hashPass = Crypto.HashPassword(pass);

            var hashedPassword = Crypto.HashPassword(args.Value);

            bool check1 = Crypto.VerifyHashedPassword(hashedPassword, pass);


            if (check1 )
            {
                args.IsValid = true;
                Server.Transfer("Login.aspx", true);
                
            }
            else
            {
                args.IsValid = false;
            }    
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
        }
    }
}