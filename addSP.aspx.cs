using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class addSP : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ItemInserting(object sender, FormViewInsertEventArgs e)
    {
        FileUpload f = (FileUpload)FormView1.FindControl("FileUpload1");
        String patch = Server.MapPath("~/Images/");
        f.PostedFile.SaveAs(patch + f.FileName);
        SqlDataSource1.InsertParameters["Url"].DefaultValue = f.FileName;
    }

    protected void InsertCmd(object sender, FormViewInsertedEventArgs e)
    {
        if (e.Exception != null)
        {
            e.KeepInInsertMode = true;
            e.ExceptionHandled = true;
            errmsg.Text = "Có lỗi xảy ra: " + e.Exception.Message;
        }
    }
}