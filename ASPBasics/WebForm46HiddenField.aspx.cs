using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPBasics
{
	public partial class WebForm46HiddenField : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}
		int count;
        protected void Button1_Click(object sender, EventArgs e)
        {
			count = int.Parse(HiddenField1.Value);
			count += 1;
			Response.Write("Count is: "+count);
			HiddenField1.Value = count.ToString();
        }

		protected void Button2_Click(object sender, EventArgs e)
		{

		}
	}
}