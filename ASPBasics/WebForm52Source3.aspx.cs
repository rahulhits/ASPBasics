using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPBasics
{
	public partial class WebForm52Source3 : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

        protected void Button1_Click(object sender, EventArgs e)
        {
			HttpCookie obj1 = new HttpCookie("id");
			obj1.Value=TextBox1.Text;

			Response.Cookies.Add(obj1);
			Response.Redirect(" WebForm53Target3.aspx");
        }
    }
}