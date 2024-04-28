using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
public partial class signup : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (con.State == ConnectionState.Closed)
        {
            con.Open();

        }
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "select * from conference ";
        cmd.Connection = con;
        SqlDataReader dr = null;
        dr = cmd.ExecuteReader();
        DateTime d;
        while (dr.Read())
        {
        //    d = Convert.ToDateTime(dr["conf_date"].ToString());
        //    if (d >= Convert.ToDateTime(DateTime.Now.ToShortTimeString()))
        //    {
                DropDownList1.Items.Add(dr["subject"].ToString());
        //    }
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlDataSource1.Insert();
        SqlDataSource2.Insert();
        Response.Write("<script>alert('Registered Conference')</script>");
    }
}