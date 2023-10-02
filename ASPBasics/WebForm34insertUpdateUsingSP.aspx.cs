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
	public partial class WebForm34 : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

        protected void btnInsert_Click(object sender, EventArgs e)
        {
			SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=asponline;Integrated Security=True");
			SqlCommand cmd = new SqlCommand("prcinsertrecord", con);
			cmd.CommandType = CommandType.StoredProcedure;


			SqlParameter p1 = new SqlParameter("@id", SqlDbType.Int);
			p1.Value = Convert.ToInt32(txtID.Text);
			cmd.Parameters.Add(p1);

			SqlParameter p2 = new SqlParameter("@name", SqlDbType.VarChar);
			p2.Value = txtName.Text;
			cmd.Parameters.Add(p2);

			SqlParameter p3 = new SqlParameter("@address", SqlDbType.VarChar);
			p3.Value = txtAddress.Text;
			cmd.Parameters.Add(p3);

			SqlParameter p4 = new SqlParameter("@salary", SqlDbType.Int);
			p4.Value = Convert.ToInt32(txtSalary.Text);
			cmd.Parameters.Add(p4);

			con.Open();
			int i = cmd.ExecuteNonQuery();
			if (i > 0)
			{
				Response.Write("Record is Inserted");
			}
			else
			{
				Response.Write("Not Inserted");
			}
		}

		protected void btnUpdate_Click(object sender, EventArgs e)
		{
			SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=asponline;Integrated Security=True");
			SqlCommand cmd = new SqlCommand("prcupdaterecord", con);
			cmd.CommandType = CommandType.StoredProcedure;


			SqlParameter p1 = new SqlParameter("@id", SqlDbType.Int);
			p1.Value = Convert.ToInt32(txtID.Text);
			cmd.Parameters.Add(p1);

			SqlParameter p2 = new SqlParameter("@name", SqlDbType.VarChar);
			p2.Value = txtName.Text;
			cmd.Parameters.Add(p2);

			SqlParameter p3 = new SqlParameter("@address", SqlDbType.VarChar);
			p3.Value = txtAddress.Text;
			cmd.Parameters.Add(p3);

			SqlParameter p4 = new SqlParameter("@salary", SqlDbType.Int);
			p4.Value = Convert.ToInt32(txtSalary.Text);
			cmd.Parameters.Add(p4);

			con.Open();
			int i = cmd.ExecuteNonQuery();
			if (i > 0)
			{
				Response.Write("Record is Updated");
			}
			else
			{
				Response.Write("Not Updated");
			}
		}

		protected void btnClear_Click(object sender, EventArgs e)
		{
			txtID.Text = string.Empty;
			txtAddress.Text = string.Empty;
			txtName.Text = string.Empty;
			txtSalary.Text = string.Empty;
		}
	}
}