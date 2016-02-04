using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SimpleContactListBLL;
using System.Collections;

namespace SimpleContactList
{
    public partial class ContactList : System.Web.UI.Page
    {
        protected void Page_Init(object sender, EventArgs e)
        {
            this.lvContactList.ItemCommand += new EventHandler<ListViewCommandEventArgs>(lvContactList_ItemCommand);
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                this.form_content.Visible = false;

                SetList();
            }
        }

        void SetList()
        {
            Contact contact = new Contact();
            this.lvContactList.DataSource = contact.GetAll();
            this.lvContactList.DataBind();
        }

        void lvContactList_ItemCommand(object sender, ListViewCommandEventArgs e)
        {
            string arg = (String)e.CommandArgument;
            string[] args = arg.Split(',');
            int argType = int.Parse(args[0]); // (1) Details (2) Edit (3) Delete
            int contactId = int.Parse(args[1]);

            switch (argType)
            { 
                case 1:
                    this.lblFormTitle.Text = "(Details)";
                    this.btnCreate.Visible = false;
                    this.btnSave.Visible = false;
                    this.btnDelete.Visible = false;
                    this.btnCancel.Visible = false;
                    break;
                case 2:
                    this.lblFormTitle.Text = "(Edit)";
                    this.btnBackToList.Visible = false;
                    this.btnCreate.Visible = false;
                    this.btnDelete.Visible = false;
                    break;
                case 3:
                    this.lblFormTitle.Text = "(Delete)";
                    this.btnBackToList.Visible = false;
                    this.btnCreate.Visible = false;
                    this.btnSave.Visible = false;
                    break;
                default:
                    break;
            }

            SetContactForm(contactId);

            ShowForm();
        }

        protected void btnCreateNew_Click(object sender, EventArgs e)
        {
            this.lblFormTitle.Text = "(Create New)";
            this.divContactIdContainer.Visible = false;
            this.btnBackToList.Visible = false;
            this.btnSave.Visible = false;
            this.btnDelete.Visible = false;
            ShowForm();
        }

        protected void btnCreate_Click(object sender, EventArgs e)
        {
            Save();
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            Save();
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            Contact contact = new Contact();
            int contactId = int.Parse(this.pContactId.InnerText);
            ArrayList validationErrors = new ArrayList(); // For referencial integrity

            contact.ContactId = contactId;
            contact.Delete(ref validationErrors);

            if (validationErrors.Count > 0)
            {
                // Do a backend code for validation errors
            }
            else
            {
                BackToList();
            }
        }

        void ShowForm()
        {
            this.list.Visible = false;
            this.form_content.Visible = true;
        }

        void BackToList()
        {
            Response.Redirect("ContactList.aspx");
        }

        void SetContactForm(int contactId)
        {
            Contact contact = new Contact();
            contact.GetById(contactId);

            this.pContactId.InnerText = contactId.ToString();
            this.ddlContactType.SelectedValue = contact.ContactType;
            this.txtLastName.Text = contact.LastName;
            this.txtFirstName.Text = contact.FirstName;
            this.txtMiddleName.Text = contact.MiddleName;
            this.ddlGender.SelectedValue = contact.Gender;
            this.txtEmailAddress.Text = contact.EmailAddress;
            this.txtNumber.Text = contact.Number;
            this.txtAddress1.Text = contact.Address1;
            this.txtAddress2.Text = contact.Address2;
            this.txtCity.Text = contact.City;
            this.txtStateProvinceCounty.Text = contact.State_Province_County;
            this.txtCountry.Text = contact.Country;
            this.txtZipcode.Text = contact.Zipcode;
        }

        void Save()
        {
            Contact contact = new Contact();
            ArrayList validationErrors = new ArrayList(); // For additional backend validation

            contact.ContactId = (this.pContactId.InnerText == "") ? 0 : int.Parse(this.pContactId.InnerText);
            contact.ContactType = this.ddlContactType.SelectedValue;
            contact.LastName = this.txtLastName.Text;
            contact.FirstName = this.txtFirstName.Text;
            contact.MiddleName = this.txtMiddleName.Text;
            contact.Gender = this.ddlGender.SelectedValue;
            contact.EmailAddress = this.txtEmailAddress.Text;
            contact.Number = this.txtNumber.Text;
            contact.Address1 = this.txtAddress1.Text;
            contact.Address2 = this.txtAddress2.Text;
            contact.City = this.txtCity.Text;
            contact.State_Province_County = this.txtStateProvinceCounty.Text;
            contact.Country = this.txtCountry.Text;
            contact.Zipcode = this.txtZipcode.Text;

            contact.Save(ref validationErrors);

            if (validationErrors.Count > 0)
            {
                // Do a backend code for validation errors
            }
            else
            {
                BackToList();
            }
        }
    }
}
