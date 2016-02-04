using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SimpleContactListDAL
{
    public static class ContactData
    {

        public static List<Contact_GetAll_Result> GetAll()
        {
            using (SimpleContactListEntities db = new SimpleContactListEntities())
            {
                return db.Contact_GetAll().ToList();
            }
        }

        public static Contact_GetById_Result GetById(int ContactId)
        {
            using (SimpleContactListEntities db = new SimpleContactListEntities())
            {
                return db.Contact_GetById(ContactId).ElementAtOrDefault(0);
            }
        }

        public static int Insert(
            string ContactType,
            string LastName,
            string FirstName,
            string MiddleName,
            string Gender,
            string EmailAddress,
            string Number,
            string Address1,
            string Address2,
            string City,
            string State_Province_County,
            string Country,
            string Zipcode)
        {
            using (SimpleContactListEntities db = new SimpleContactListEntities())
            {
                return db.Contact_Insert(
                    ContactType,
                    LastName,
                    FirstName,
                    MiddleName,
                    Gender,
                    EmailAddress,
                    Number,
                    Address1,
                    Address2,
                    City,
                    State_Province_County,
                    Country,
                    Zipcode
                ).ElementAt(0).Value;
            }
        }

        public static void Update(
            int ContactId,
            string ContactType,
            string LastName,
            string FirstName,
            string MiddleName,
            string Gender,
            string EmailAddress,
            string Number,
            string Address1,
            string Address2,
            string City,
            string State_Province_County,
            string Country,
            string Zipcode)
        {
            using (SimpleContactListEntities db = new SimpleContactListEntities())
            {
                db.Contact_Update(
                    ContactId,
                    ContactType,
                    LastName,
                    FirstName,
                    MiddleName,
                    Gender,
                    EmailAddress,
                    Number,
                    Address1,
                    Address2,
                    City,
                    State_Province_County,
                    Country,
                    Zipcode
                );
            }

        }

        public static void Delete(int ContactId)
        {
            using (SimpleContactListEntities db = new SimpleContactListEntities())
            {
                db.Contact_Delete(ContactId);
            }
        }

    }
}
