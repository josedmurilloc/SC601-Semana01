using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Routing;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.FriendlyUrls.Resolvers;

namespace SC601_Semana01
{
    public partial class Properties1 : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public String Name
        {
            get { return txtName.Text; }
            set { txtName.Text = value; }

        }
        public String LastName
        {
            get { return txtLastName.Text; }
            set { txtLastName.Text = value; }

        }
    }
}