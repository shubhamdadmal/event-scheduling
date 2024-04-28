using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class fpass : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (con.State == ConnectionState.Closed)
        {
            con.Open();

        }


    }
    protected void TextBox9_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "select * from login where uname=@uname and ques=@que and ans=@ans";
        cmd.Parameters.AddWithValue("@uname", TextBox9.Text);
        cmd.Parameters.AddWithValue("@que", DropDownList1.SelectedItem.Text);
        cmd.Parameters.AddWithValue("@ans", TextBox10.Text);
        cmd.Connection = con;
        SqlDataReader dr = null;
        dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            Label15.Text = dr["pass"].ToString();

        }
        dr.Close();
    }
}