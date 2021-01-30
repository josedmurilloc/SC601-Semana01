using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SC601_Semana01.Views
{
    public partial class EventHandling : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblMessage.Text += "Page Load handled<br/>";

            if (Page.IsPostBack)
            {
                lblMessage.Text += "Page IsPostBack <br/>";
            }

        }
        protected void Page_Init(object sender, EventArgs e)
        {
            lblMessage.Text += "Page Init handled<br/>";
        }

        protected void Page_PreRender(object sender, EventArgs e)
        {
            lblMessage.Text += "Page PreRender handled<br/>";
        }

        protected void btnClick_Click(object sender, EventArgs e)
        {
            lblMessage.Text += "Button click event handled<br/>";
        }
    }
}