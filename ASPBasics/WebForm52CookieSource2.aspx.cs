using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPBasics
{
	public partial class WebForm52CookieSource2 : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

        protected void Button1_Click(object sender, EventArgs e)
        {
			HttpCookie obj1 = new HttpCookie("a");
			HttpCookie obj2 = new HttpCookie("b");

			obj1.Value = "100";
			obj2.Value = "200";

			// to make cookie persistant

			obj1.Expires =DateTime.Now.AddDays(2);
			obj2.Expires =DateTime.Now.AddDays(1);

			Response.Cookies.Add(obj1);
			Response.Cookies.Add(obj2);

			Response.Redirect("WebForm52Target2.aspx");
		}
    }
}