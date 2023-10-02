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
	public partial class WebForm37GridView : System.Web.UI.Page
	{
		SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=Employee;Integrated Security=True");
		protected void Page_Load(object sender, EventArgs e)
		{
			Getdata();
		}
		private void Getdata()
		{
			SqlDataAdapter da = new SqlDataAdapter("select * from tblsample ", con);
			DataSet ds = new DataSet();
			da.Fill(ds);
			GridView1.DataSource = ds;
			GridView1.DataBind();
		}

		protected void GridView1_SelectedIndexChanged(object sender, GridViewCancelEditEventArgs e)
        {
			
        }

		protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
		{
			GridView1.SelectedIndex = e.NewSelectedIndex;
			Getdata();
		}

		protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
		{
			GridView1.PageIndex = e.NewPageIndex;
			Getdata();
		}

		protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
		{
			GridView1.EditIndex=e.NewEditIndex;
			Getdata();
		}

		protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
		{
			GridView1.EditIndex = -1;
			Getdata();
		}

		protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
		{
			string id = GridView1.Rows[e.RowIndex].Cells[1].Text;
			string s = "delete from tblsample where id='" + id + "'";
			SqlCommand cmd=new SqlCommand(s, con);
			cmd.CommandType= CommandType.Text;
			con.Open();
			cmd.ExecuteNonQuery();
			Getdata();
			con.Close();
		}

		protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
		{
			string id, name, mail, address, salary;
			id = ((TextBox)GridView1.Rows[e.RowIndex].Cells[1].Controls[0]).ToString();
			name = ((TextBox)GridView1.Rows[e.RowIndex].Cells[2].Controls[0]).ToString();
			mail = ((TextBox)GridView1.Rows[e.RowIndex].Cells[3].Controls[0]).ToString();
			address = ((TextBox)GridView1.Rows[e.RowIndex].Cells[4].Controls[0]).ToString();
			salary = ((TextBox)GridView1.Rows[e.RowIndex].Cells[5].Controls[0]).ToString();
			string s="update tblsample set name='"+name+ "',mail='"+mail+ "',address='"+address+ "',salary='"+salary+"' where id='"+id+"'";
			SqlCommand cmd = new SqlCommand(s, con);
			cmd.CommandType = CommandType.Text;
			con.Open();
			cmd.ExecuteNonQuery();
			Getdata();
			con.Close();
		}
	}
}