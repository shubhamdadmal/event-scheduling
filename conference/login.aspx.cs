using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        if (con.State == ConnectionState.Closed)
        {
            con.Open();

        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox9.Text == "admin" && TextBox10.Text == "admin")
        {
            Response.Redirect("~/ahome.aspx");
        }
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "select count(*) from login where uname=@uname and pass=@pass";
        cmd.Parameters.AddWithValue("@uname", TextBox9.Text);
        cmd.Parameters.AddWithValue("@pass", TextBox10.Text);
        cmd.Connection = con;
        int i = (Int32)cmd.ExecuteScalar();
        if (i >= 1)
        {
            Response.Redirect("~/Default.aspx");
        }
        else
        {
            Response.Write("<script>alert('Wrong login credentials')</script>");
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/signup.aspx");
    }
}