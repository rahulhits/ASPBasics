using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace ASPBasics
{
	public partial class WebForm33 : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

        protected void btnDelete_Click(object sender, EventArgs e)
        {
			SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=asponline;Integrated Security=True");
			SqlCommand cmd = new SqlCommand("prcdelrecord1", con);
			cmd.CommandType = CommandType.StoredProcedure;
			SqlParameter p1=new SqlParameter("@id",SqlDbType.Int);
			p1.Value=Convert.ToInt32(txtID.Text);
			cmd.Parameters.Add(p1);

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