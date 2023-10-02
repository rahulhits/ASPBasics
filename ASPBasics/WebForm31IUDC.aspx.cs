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
	public partial class WebForm31 : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}
		SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=asponline;Integrated Security=True");
		protected void btnInsert_Click(object sender, EventArgs e)
        {
			string s = "insert into sample values('" + txtID.Text + "','" + txtName.Text + "','" + txtAddress.Text + "','" + txtSalary.Text + "')";
			SqlCommand cmd = new SqlCommand(s, con);
			cmd.CommandType =CommandType.Text;
			con.Open();
			int i=cmd.ExecuteNonQuery();
			if (i > 0)
			{
				Response.Write("Record is inserted");
			}
			else
			{
				Response.Write("Not Inserted");
			}
        }

		protected void btnUpdate_Click(object sender, EventArgs e)
		{
			string s = "update sample set name='" + txtName.Text + "',address='" + txtAddress.Text + "',salary='" + txtSalary.Text + "' where id= '" + txtID.Text + "'";
			SqlCommand cmd = new SqlCommand(s, con);
			cmd.CommandType = CommandType.Text;
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

		protected void btnDelete_Click(object sender, EventArgs e)
		{
			string s = "delete from sample where id='" + txtID.Text + "'";
			SqlCommand cmd = new SqlCommand(s, con);
			cmd.CommandType = CommandType.Text;
			con.Open();
			int i = cmd.ExecuteNonQuery();
			if (i > 0)
			{
				Response.Write("Record is Deleted");
			}
			else
			{
				Response.Write("Not Deleted");
			}
		}

		protected void btnClear_Click(object sender, EventArgs e)
		{
			txtID.Text= string.Empty;
			txtAddress.Text= string.Empty;
			txtName.Text= string.Empty;
			txtSalary.Text= string.Empty;
		}
	}
}