using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Homework2
{
    public partial class Purchase : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            var price = Convert.ToDouble(TextBox1.Text);
            var number = Convert.ToInt64(TextBox2.Text);
            var vat = Convert.ToDouble(TextBox3.Text); 
            var priceET = price * number;
            var priceATI = price * number * (1 + vat);
            Label1.Text = "The price excluding tax is: "+priceET;
            Label2.Text = "The price all tax included is: "+priceATI;


        }
    }
}