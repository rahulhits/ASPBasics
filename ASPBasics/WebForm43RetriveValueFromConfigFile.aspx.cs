using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace ASPBasics
{
	public partial class WebForm43RetriveValueFromConfigFile : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			TextBox1.Text = ConfigurationManager.AppSettings["a"].ToString();
			TextBox2.Text = ConfigurationManager.AppSettings["b"].ToString();
		}
	}
}