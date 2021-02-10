using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Homework2
{
    public partial class Form : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            String Name = Request.Form["TextBox1"];
            Label1.Text = "Welcome " + Name + ",  your password is correct";

        }
    }
}