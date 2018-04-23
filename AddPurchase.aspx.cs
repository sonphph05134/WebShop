using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddPurchase : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void InsertedCmd(object sender, FormViewInsertedEventArgs e)
    {
        if (e.Exception != null)
        {
            e.KeepInInsertMode = true;
            e.ExceptionHandled = true;
            errmsg.Text = "Có lỗi xảy ra: " + e.Exception.Message;
        }
    }
}