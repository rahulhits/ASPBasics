using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPBasics
{
	public partial class WebForm44ConnectionStringGlobal : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

        protected void Button1_Click(object sender, EventArgs e)
        {
			SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["sqlcon"].ToString()); ;
			con.Open();
			Response.Write("<h1> connectec to database successfully<h1>");
			con.Close();
        }
    }
}