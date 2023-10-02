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
	public partial class WebForm36RepeterControl : System.Web.UI.Page
	{
		SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=Employee;Integrated Security=True");
		protected void Page_Load(object sender, EventArgs e)
		{
			Getdata();
		}
		private void Getdata()
		{
			SqlDataAdapter da=new SqlDataAdapter("select * from tblsample ", con);
			DataSet ds= new DataSet();
			da.Fill(ds);
			Repeter1.DataSource= ds; 
			Repeter1.DataBind();
		}
	}
}