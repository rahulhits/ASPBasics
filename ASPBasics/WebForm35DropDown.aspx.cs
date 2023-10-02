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
	public partial class WebForm35 : System.Web.UI.Page
	{
		SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=asponline;Integrated Security=True");
		protected void Page_Load(object sender, EventArgs e)
		{
			if(Page.IsPostBack==false)
			{
				string s = "select id from sample";
				SqlCommand cmd = new SqlCommand(s, con);
				cmd.CommandType = CommandType.Text;
				con.Open();

				SqlDataReader dr = cmd.ExecuteReader();

				while (dr.Read() == true)
				{
					DropDownList1.Items.Add(dr["id"].ToString());
				}
				con.Close();
				DropDownList1.Items.Insert(0, "select");
			}
			
		}

		protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
		{
			if (DropDownList1.SelectedItem.Text == "select")
			{
				Response.Write("<script>alert('Select any ID')</script>");
			}
			else
			{
				string s = "select * from sample where id='" + DropDownList1.SelectedItem.Text + "'";
				SqlCommand cmd = new SqlCommand(s, con);

				cmd.CommandType = CommandType.Text;
				con.Open();

				SqlDataReader dr = cmd.ExecuteReader();



				if (dr.Read() == true)
				{
					TextBox1.Text = dr["name"].ToString();
					TextBox2.Text = dr["address"].ToString();
					TextBox3.Text = dr["salary"].ToString();
				}
				con.Close();
			}
			

		}
	}
}