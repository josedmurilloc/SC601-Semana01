using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SC601_Semana01.Views
{
    public partial class Clients : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                refreshData();
            }

        }

        public void refreshData()
        {
            //DataSet ds = new DataSet();
            grvClients.DataSource = ObtenerClientes();
            grvClients.DataBind();
        }

        private static readonly List<Models.Clients> clients = new List<Models.Clients>()
        {
             new Models.Clients {ClientId=1, Name="Jose", LastName="Murillo", Email="j@gmail.com"},
             new Models.Clients {ClientId=1, Name="Jose", LastName="Murillo", Email="j@gmail.com"},
             new Models.Clients {ClientId=1, Name="Jose", LastName="Murillo", Email="j@gmail.com"},
             new Models.Clients {ClientId=1, Name="Jose", LastName="Murillo", Email="j@gmail.com"},
             new Models.Clients {ClientId=1, Name="Jose", LastName="Murillo", Email="j@gmail.com"},
             new Models.Clients {ClientId=1, Name="Jose", LastName="Murillo", Email="j@gmail.com"},
             new Models.Clients {ClientId=1, Name="Jose", LastName="Murillo", Email="j@gmail.com"},
             new Models.Clients {ClientId=1, Name="Jose", LastName="Murillo", Email="j@gmail.com"},
             new Models.Clients {ClientId=1, Name="Jose", LastName="Murillo", Email="j@gmail.com"},
             new Models.Clients {ClientId=1, Name="Jose", LastName="Murillo", Email="j@gmail.com"},
             new Models.Clients {ClientId=1, Name="Jose", LastName="Murillo", Email="j@gmail.com"},
             new Models.Clients {ClientId=1, Name="Jose", LastName="Murillo", Email="j@gmail.com"},
        };
        public List<Models.Clients> ObtenerClientes()
        {
            return clients;
        }

        protected void OnPageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grvClients.PageIndex = e.NewPageIndex;
            this.refreshData();
        }
    }


}