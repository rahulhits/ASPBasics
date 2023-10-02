using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace ASPBasics
{
	public partial class WebForm1ConfigSetting : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

        protected void Button1_Click(object sender, EventArgs e)
        {
			if (TextBox1.Text == ConfigurationManager.AppSettings[0].ToString() && TextBox2.Text == ConfigurationManager.AppSettings[1].ToString()) 
			{
				Response.Write("Login success");
			}
			else
			{
				Response.Write("Login Failed");
			}
        }
    }
}