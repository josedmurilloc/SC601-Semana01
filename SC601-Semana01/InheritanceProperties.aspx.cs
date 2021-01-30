using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SC601_Semana01.Views
{
    public partial class InheritanceProperties : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            propertiesControl.Name = txtName.Text;
            propertiesControl.LastName = txtLastName.Text;

        }


    }
}