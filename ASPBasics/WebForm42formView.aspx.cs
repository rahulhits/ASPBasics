using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace ASPBasics
{
	public partial class WebForm42formView : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

        protected void DetailsView1_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
        {
			if(Page.IsPostBack==false)
			{
				GetData();
			}
        }
		private void GetData()
		{
			SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=Employee;Integrated Security=True");
			string s = "select * from tblsample";
			SqlDataAdapter da = new SqlDataAdapter(s, con);
			DataSet ds=new DataSet();
			da.Fill(ds);
			Formview1.DataSource= ds;
			DetailsView1.DataSource= ds;
			Formview1.DataBind();
			DetailsView1.DataBind();
		}

		protected void Formview1_PageIndexChanging(object sender, FormViewPageEventArgs e)
		{
			Formview1.PageIndex = e.NewPageIndex;
			GetData();

		}
	}
}