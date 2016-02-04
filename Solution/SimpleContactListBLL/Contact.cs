using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SimpleContactListDAL;

namespace SimpleContactListBLL
{
    public class Contact
    {
        public int ContactId { get; set; }
        public string ContactType { get; set; } // Values: Business || Personal
        public string LastName { get; set; }
        public string FirstName { get; set; }
        public string MiddleName { get; set; }
        public string Gender { get; set; } // Values: Male || Female
        public string EmailAddress { get; set; }
        public string Number { get; set; }
        public string Address1 { get; set; }
        public string Address2 { get; set; }
        public string City { get; set; }
        public string State_Province_County { get; set; }
        public string Country { get; set; }
        public string Zipcode { get; set; }
        public string FullName
        {
            get
            {
                return LastName + ", " + FirstName;
            }
        }

        public bool Save(ref ArrayList validationErrors)
        {
            ValidateSave(ref validationErrors);

            if (validationErrors.Count == 0)
            {
                if (ContactId == 0)
                {
                    ContactId = ContactData.Insert(
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
                else
                {
                    ContactData.Update(
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
                return true;
            }
            else
            {
                return false;
            }
        }

        private void ValidateSave(ref ArrayList validationErrors)
        {
            if (ContactType.Trim() == "")
            {
                validationErrors.Add("The Contact Type is required.");
            }

            if (LastName.Trim() == "")
            {
                validationErrors.Add("The Last Name is required.");
            }

            if (FirstName.Trim() == "")
            {
                validationErrors.Add("The First Name is required.");
            }

            if (Gender.Trim() == "")
            {
                validationErrors.Add("The Gender is required.");
            }
        }

        public void Delete(ref ArrayList validationErrors)
        {
            ValidateDelete(ref validationErrors);

            if (validationErrors.Count == 0)
            {
                ContactData.Delete(ContactId);
            }
        }

        private void ValidateDelete(ref ArrayList validationErrors)
        {
            //Check for referential integrity.
        }

        public bool GetById(int id)
        {
            Contact_GetById_Result contact = ContactData.GetById(id);

            if (contact != null)
            {
                MapData(contact);
                return true;
            }
            else
            {
                return false;
            }
        }

        internal void MapData(Contact_GetById_Result contact)
        {
            ContactId = contact.ContactId;
            ContactType = contact.ContactType;
            LastName = contact.LastName;
            FirstName = contact.FirstName;
            MiddleName = contact.MiddleName;
            Gender = contact.Gender;
            EmailAddress = contact.EmailAddress;
            Number = contact.Number;
            Address1 = contact.Address1;
            Address2 = contact.Address2;
            City = contact.City;
            State_Province_County = contact.State_Province_County;
            Country = contact.Country;
            Zipcode = contact.Zipcode;
        }

        public List<Contact> GetAll()
        {
            List<Contact> contactList = new List<Contact>();

            List<Contact_GetAll_Result> contacts = ContactData.GetAll();

            foreach (Contact_GetAll_Result contactRow in contacts)
            {
                Contact contact = new Contact();
                contact.MapData(contactRow);
                contactList.Add(contact);
            }

            return contactList;
        }

        internal void MapData(Contact_GetAll_Result contact)
        {
            ContactId = contact.ContactId;
            ContactType = contact.ContactType;
            LastName = contact.LastName;
            FirstName = contact.FirstName;
            MiddleName = contact.MiddleName;
            Gender = contact.Gender;
            EmailAddress = contact.EmailAddress;
            Number = contact.Number;
            Address1 = contact.Address1;
            Address2 = contact.Address2;
            City = contact.City;
            State_Province_County = contact.State_Province_County;
            Country = contact.Country;
            Zipcode = contact.Zipcode;
        }

    }
}
