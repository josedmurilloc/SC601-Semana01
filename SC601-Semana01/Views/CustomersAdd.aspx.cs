using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SC601_Semana01.Views
{
    public partial class CustomersAdd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            string firstName = txtFirst_name.Text;
            string lastName = txtLastName.Text;
            string phone = txtPhone.Text;
            string email = txtEmail.Text;
            string street = txtStreet.Text;
            string city = txtCity.Text;
            string state = txtState.Text;
            string zip_code = txtZipCode.Text;

            var customers = new DataAccess.customers
            {
                first_name = firstName,
                last_name = lastName,
                phone = phone,
                email = email,
                street = street,
                city = city,
                state = state,
                zip_code = zip_code
            };
            BusinessModel.Customers.AddCustomers(customers);
            Response.Write("<script>alert('Data has been Added..');window.location = 'Customers.aspx';</script>");
        }
    }
}
