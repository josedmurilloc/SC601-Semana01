using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataAccess;

namespace BusinessModel
{
    public class Customers
    {

        /*Metodo para retornar una lista*/

        public static List<customers> GetCustomers()
        {
            using (BikeStoresEntities db = new BikeStoresEntities())
            {
                return db.customers.Take(500).ToList();
                //return db.customers.ToList();

            }
        }

        public static void UpdateCustomers(customers customers)
        {
            using (BikeStoresEntities db = new BikeStoresEntities())
            {
                db.customers.Add(customers);
                db.Entry(customers).State = System.Data.Entity.EntityState.Modified;
                db.SaveChanges();

            }

        }

        public static void DeleteCustomers(int customer_id)
        {
            using (BikeStoresEntities db = new BikeStoresEntities())
            {
                var customers = new DataAccess.customers { customer_id = customer_id };
                db.customers.Attach(customers);
                //db.customers.Remove(customers);
                db.Entry(customers).State = System.Data.Entity.EntityState.Deleted;
                db.SaveChanges();

            }

        }

        public static void AddCustomers(customers customers)
        {
            using (BikeStoresEntities db = new BikeStoresEntities())
            {
                db.customers.Add(customers);
                db.SaveChanges();

            }
        }
    }
}
