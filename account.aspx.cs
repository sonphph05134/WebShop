using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class account : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\WebShop\App_Data\WebShopOnline.mdf;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void login_Click(object sender, EventArgs e)
    {

        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        /* Lay du lieu tu database*/
        cmd.CommandText = "select * from NGUOIDUNG where USERNAME='" + t1.Text + "' and PASSWORD='" + t2.Text+ "'";
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        foreach (DataRow dr in dt.Rows)
        {
            Session["USERNAME"] = dr["USERNAME"].ToString();
            Response.Redirect("Default.aspx"); 
        }
       
        con.Close();
    }   
}