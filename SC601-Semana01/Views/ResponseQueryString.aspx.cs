using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SC601_Semana01.Views
{
    public partial class ResponseQueryString : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string User = Request.QueryString["user"];
            string Password = Request.QueryString["password"];
            lblQuery.Text = "Welcome " + User + " your password is:" + Password;
        }
    }
}