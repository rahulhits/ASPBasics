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
	public partial class WebForm32 : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

        protected void btnDelete_Click(object sender, EventArgs e)
        {
			SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=asponline;Integrated Security=True");
			SqlCommand cmd = new SqlCommand("prcdelrecord", con);
			cmd.CommandType = CommandType.StoredProcedure;
			con.Open();
			int i = cmd.ExecuteNonQuery();
			if (i > 0)
			{
				Response.Write("Record is Deleted");
			}
			else
			{
				Response.Write("Not Inserted");
			}

		}
    }
}