using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPBasics
{
	public partial class WebForm47TargetWebPage : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			string value = Request.Form["HiddenField1"];
			Response.Write("Your Count is: "+value);
		}
	}
}