using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPBasics
{
	public partial class WebForm30 : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

        protected void btn_Create_Click(object sender, EventArgs e)
        {
			SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=asponline;Integrated Security=True");
			string s = "create table sampleE(id int,name varchar(30),address varchar(30),salary int)";
			SqlCommand cmd = new SqlCommand(s, con);
			cmd.CommandType = CommandType.Text;
			con.Open();
			int i = cmd.ExecuteNonQuery();
			if (i < 0)
			{
				Response.Write("Table Created Successfully");
			}
			else
			{
				Response.Write("Table is not created");
			}
			Response.Write("<h2>connected to DB successfully.</h2>");
			con.Close();
		}
    }
}