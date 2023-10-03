using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace ASPBasics
{
	public partial class WebForm53Target3 : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

			SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["sqlcon"].ToString());
			string s = "select * from tblsample where id=" + Request.Cookies["id"].Value;
			SqlDataAdapter da = new SqlDataAdapter(s, con);

			DataSet ds = new DataSet();

			da.Fill(ds);
			//GridView1.DataSource = ds;

			//GridView1.DataBind();
		}
	}
}