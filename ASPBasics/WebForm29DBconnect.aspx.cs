using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace ASPBasics
{
	public partial class WebForm29 : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

        protected void btnConnect_Click(object sender, EventArgs e)
        {
			SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=asponline;Integrated Security=True");
			con.Open();
			Response.Write("<h2>connected to DB successfully.</h2>");
			con.Close();
		}
    }
}


//SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=asponline;Integrated Security=True");
//string s = "create table sample(id int,name varchar(30),address varchar(30),salary int";
//SqlCommand cmd = new SqlCommand(s, con);
//cmd.CommandType = CommandType.Text;
//con.Open();
//int i = cmd.ExecuteNonQuery();
//if (i > 0)
//{
//	Response.Write("Table Created Successfully");
//}
//else
//{
//	Response.Write("Table is not created");
//}
//Response.Write("<h2>connected to DB successfully.</h2>");
//con.Close();