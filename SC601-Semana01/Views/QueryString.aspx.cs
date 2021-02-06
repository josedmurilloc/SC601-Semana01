using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SC601_Semana01.Views
{
    public partial class QueryString : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            /*ir a base datos y guardar el usuario*/
            Response.Redirect("ResponseQueryString.aspx?user=" + txtUsuario.Value + "&password=" + txtPassword.Value);
        }
    }
}