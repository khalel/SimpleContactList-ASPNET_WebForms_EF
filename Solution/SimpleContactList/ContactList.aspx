<%@ Page Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="ContactList.aspx.cs" Inherits="SimpleContactList.ContactList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <h1>My Contacts <asp:Label ID="lblFormTitle" runat="server" Text=""></asp:Label></h1>

    <div class="row" id="list" runat="server">
        <asp:Button ID="btnCreateNew" runat="server" Text='Create New' CssClass="btn btn-default" OnClick="btnCreateNew_Click" />

        <asp:ListView ID="lvContactList" runat="server">
            <EmptyDataTemplate>
                <div>There is no contact to display.</div>
            </EmptyDataTemplate>
            <LayoutTemplate>
                <table class="table table-striped table-hover">
                    <thead>
                        <tr>
                            <th>Contact Type</th>
                            <th>Name</th>
                            <th>Email Address</th>
                            <th>Number</th>
                            <th>&nbsp;</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr id="itemPlaceholder" runat="server"></tr>
                    </tbody>
                </table>
            </LayoutTemplate>
            <ItemTemplate>
                <tr>
                    <td><%# Eval("ContactType") %></td>
                    <td><%# Eval("Fullname") %></td>
                    <td><%# Eval("EmailAddress") %></td>
                    <td><%# Eval("Number") %></td>
                    <td class="text-right">
                        <asp:Button ID="btnSetEdit" runat="server" Text='Edit' CommandArgument='<%# "2," + Eval("ContactId") %>' CssClass="btn btn-primary" />
                        <asp:Button ID="btnSetDetails" runat="server" Text='Details' CommandArgument='<%# "1," + Eval("ContactId") %>' CssClass="btn btn-info" />
                        <asp:Button ID="btnSetDelete" runat="server" Text='Delete' CommandArgument='<%# "3," + Eval("ContactId") %>' CssClass="btn btn-danger" />
                    </td>
                </tr>
            </ItemTemplate>
        </asp:ListView>
    </div>

    <div class="row" id="form_content" runat="server">
        <fieldset>
            <legend></legend>
            <div class="form-group" id="divContactIdContainer" runat="server">
                <label for="" class="col-sm-2 control-label">Contact Id</label>
                <div class="col-sm-10">
                    <p class="form-control-static" id="pContactId" runat="server"></p>
                </div>
            </div>
            <div class="form-group">
                <label for="ddlContactType" class="col-sm-2 control-label">Contact Type</label>
                <div class="col-sm-10">
                    <asp:DropDownList ID="ddlContactType" runat="server" CssClass="form-control" required title="Contact Type">
                        <asp:ListItem Text="-- Select --" Value=""></asp:ListItem>
                        <asp:ListItem Text="Personal" Value="Personal"></asp:ListItem>
                        <asp:ListItem Text="Business" Value="Business"></asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <div class="form-group">
                <label for="txtLastName" class="col-sm-2 control-label">Last Name</label>
                <div class="col-sm-10">
                    <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control" required title="Last Name"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <label for="txtFirstName" class="col-sm-2 control-label">First Name</label>
                <div class="col-sm-10">
                    <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control" required title="First Name"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <label for="txtMiddleName" class="col-sm-2 control-label">Middle Name</label>
                <div class="col-sm-10">
                    <asp:TextBox ID="txtMiddleName" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <label for="ddlGender" class="col-sm-2 control-label">Gender</label>
                <div class="col-sm-10">
                    <asp:DropDownList ID="ddlGender" runat="server" CssClass="form-control" required title="Gender">
                        <asp:ListItem Text="-- Select --" Value=""></asp:ListItem>
                        <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
                        <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <div class="form-group">
                <label for="txtEmailAddress" class="col-sm-2 control-label">Email Address</label>
                <div class="col-sm-10">
                    <asp:TextBox ID="txtEmailAddress" runat="server" CssClass="form-control" type="email" title="Email Address"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <label for="txtNumber" class="col-sm-2 control-label">Number</label>
                <div class="col-sm-10">
                    <asp:TextBox ID="txtNumber" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <label for="txtAddress1" class="col-sm-2 control-label">Address 1</label>
                <div class="col-sm-10">
                    <asp:TextBox ID="txtAddress1" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <label for="txtAddres2" class="col-sm-2 control-label">Address 2</label>
                <div class="col-sm-10">
                    <asp:TextBox ID="txtAddress2" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <label for="txtCity" class="col-sm-2 control-label">City</label>
                <div class="col-sm-10">
                    <asp:TextBox ID="txtCity" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <label for="txtStateProvinceCounty" class="col-sm-2 control-label">State / Province / County</label>
                <div class="col-sm-10">
                    <asp:TextBox ID="txtStateProvinceCounty" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <label for="txtCountry" class="col-sm-2 control-label">Country</label>
                <div class="col-sm-10">
                    <asp:TextBox ID="txtCountry" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <label for="txtZipcode" class="col-sm-2 control-label">Zipcode</label>
                <div class="col-sm-10">
                    <asp:TextBox ID="txtZipcode" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-2">&nbsp;</div>
                <div class="col-sm-10">
                    <a class="btn btn-default" href="ContactList.aspx" role="button" id="btnBackToList" runat="server">Back to List</a>
                    <asp:Button ID="btnCreate" runat="server" Text='Create' CssClass="btn btn-info" OnClick="btnCreate_Click" />
                    <asp:Button ID="btnSave" runat="server" Text='Save' CssClass="btn btn-info" OnClick="btnSave_Click" />
                    <asp:Button ID="btnDelete" runat="server" Text='Delete' CssClass="btn btn-danger" OnClick="btnDelete_Click" />
                    <a class="btn btn-primary" href="ContactList.aspx" role="button" id="btnCancel" runat="server">Cancel</a>
                </div>
            </div>
            
        </fieldset>
    </div>

</asp:Content>

