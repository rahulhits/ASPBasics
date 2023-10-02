using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPBasics
{
	public partial class WebForm45Presentation : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

        protected void Button1_Click(object sender, EventArgs e)
        {
			Business45 bl=new Business45();

			bl.Id=Convert.ToInt32(TextBox1.Text);
			bl.Name=TextBox2.Text;
			bl.Mail=TextBox3.Text;
			bl.Address1=TextBox4.Text;
			bl.Salary1=Convert.ToInt32(TextBox5.Text);

			int i = bl.btninsertPresentation45(this);

			if(i>0)
			{
				lblInsert.Text = "Recored is inserted";
			}
			else
			{
				lblInsert.Text = "Recored is not inserted";
			}

        }
    }
}