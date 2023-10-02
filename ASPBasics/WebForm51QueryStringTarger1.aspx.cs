using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace ASPBasics
{
	public partial class WebForm51QueryStringTarger1 : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["sqlcon"].ToString());
			string s = "select * from tblsample where id=" + Request.QueryString["I"].ToString();
			SqlDataAdapter da=new SqlDataAdapter(s, con);

			DataSet ds = new DataSet();

			da.Fill(ds);
			GridView1.DataSource= ds;

			GridView1.DataBind();
		}

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}