using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SC601_Semana01.Views
{
    public partial class Person : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnSave_Click(object sender, EventArgs e)
        {
            message.Text = "Hello Person" + txtPrimerNombre.Value + txtApellido1.Value + "<br/> Thanks for your visit from " + ssoProvincias.Value + "!";
            message.Text = message.Text + "<br/> You have successfuly registered ";


        }
    }
}