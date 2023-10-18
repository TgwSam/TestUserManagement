using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UserManagement
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Request.QueryString["testQueryString"];
            TextBox1.Text = Request.Form["TextBox1"] + Request.Form["CheckBox1"] + Request.Form["DropDownList1"];
        }
    }
}