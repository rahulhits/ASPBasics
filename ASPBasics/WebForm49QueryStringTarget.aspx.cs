using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPBasics
{
	public partial class WebForm49QueryStringTarget : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			TextBox1.Text = Request.QueryString["a"].ToString();
			TextBox2.Text= Request.QueryString["b"].ToString();

			//or

			//TextBox1.Text = Request.QueryString["0"].ToString();
			//TextBox2.Text = Request.QueryString["1"].ToString();
		}
	}
}