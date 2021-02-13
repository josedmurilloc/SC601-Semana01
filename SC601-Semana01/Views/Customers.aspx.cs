using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace SC601_Semana01.Views
{
    public partial class Customers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetCustormers();
            }
        }

        private void GetCustormers()
        {
            List<DataAccess.customers> customers = new List<DataAccess.customers>();
            customers = BusinessModel.Customers.GetCustomers();
            grvClientes.DataSource = customers;
            grvClientes.DataBind();

        }

        /*Este metodo nos permite cambiar el index del grid esto quiere decir que si me muevo entre tabas se posiciona en la primera fila del tab.*/
        protected void grvClientes_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grvClientes.PageIndex = e.NewPageIndex;
            grvClientes.DataBind();
            this.GetCustormers();

        }


        /*Este metodo me permite habilitar los campos para ser editados*/
        protected void grvClientes_RowEditing(object sender, GridViewEditEventArgs e)
        {
            grvClientes.EditIndex = e.NewEditIndex;
            this.GetCustormers();
        }

        /*Este metodo se encagara de realizar el update del registro*/
        protected void grvClientes_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = grvClientes.Rows[e.RowIndex];
            int customer_id = Convert.ToInt32(grvClientes.DataKeys[e.RowIndex].Values[0]);
            string firstName = (row.FindControl("txtfirst_name") as TextBox).Text;
            string lastName = (row.FindControl("txtlast_name") as TextBox).Text;
            string phone = (row.FindControl("txtphone") as TextBox).Text;
            string email = (row.FindControl("txtemail") as TextBox).Text;
            string street = (row.FindControl("txtstreet") as TextBox).Text;
            string city = (row.FindControl("txtcity") as TextBox).Text;
            string state = (row.FindControl("txtstate") as TextBox).Text;
            string zip_code = (row.FindControl("txtzip_code") as TextBox).Text;

            var customers = new DataAccess.customers
            {
                customer_id = customer_id,
                first_name = firstName,
                last_name = lastName,
                phone = phone,
                email = email,
                street = street,
                city = city,
                state = state,
                zip_code = zip_code

            };

            BusinessModel.Customers.UpdateCustomers(customers);
            grvClientes.EditIndex = -1;
            this.GetCustormers();
        }

        protected void grvClientes_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            grvClientes.EditIndex = -1;
            this.GetCustormers();
        }

        /*Este metodo valida si estoy seguro de si quiero eliminar un fila*/
        protected void grvClientes_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow && e.Row.RowIndex != grvClientes.EditIndex)
            {
                (e.Row.Cells[9].Controls[2] as LinkButton).Attributes["onclick"] = "return confirm('Do you want to delete this row?');";


            }

        }

        protected void grvClientes_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int customer_id = Convert.ToInt32(grvClientes.DataKeys[e.RowIndex].Values[0]);
            BusinessModel.Customers.DeleteCustomers(customer_id);
            this.GetCustormers();

        }



        protected void btnAdd_Click(object sender, EventArgs e)
        {
            Response.Redirect("CustomersAdd.aspx");
        }

    }
}