using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

namespace ASPBasics
{
	public class Class1
	{
		public int Id { get; set; }
		public int Name { get; set; }
		public int Mail { get; set; }
		public int Address { get; set; }
		public int Salary { get; set; }

	}
	public class DataAccess
	{
		//public static List<Class1> getdetails()
		//{
		//	List<Class1> listemp = new List<Class1>();
		//	SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=Employee;Integrated Security=True");
		//	SqlCommand cmd = new SqlCommand("Select * from tblsample", con);
		//	con.Open();
		//	SqlDataReader dr = cmd.ExecuteReader();
		//	while (dr.Read())
		//	{
		//		Class1 obj1 = new Class1();
		//		obj1.Id = Convert.ToInt32(dr["id"]);
		//		obj1.Name = dr["name"]
		//	}
		//}
		


	}
}