<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="webform_template.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-md-12">
            <div class="form-horizontal">

                <div class="form-group">
                    <label for="txtEmail" class="col-sm-2 control-label">Email</label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1"
                            runat="server"
                            ControlToValidate="txtEmail"
                            CssClass="label label-danger"
                            Display="Dynamic"
                            ValidationGroup="vgAdd"
                            ErrorMessage="Start Date is required"></asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class="form-group">
                    <label for="ddl" class="col-sm-2 control-label">Email</label>
                    <div class="col-sm-10">
                        <asp:DropDownList ID="ddl" runat="server" CssClass="form-control">
                            <asp:ListItem Value="0">Select</asp:ListItem>
                            <asp:ListItem Value="1">Val 11</asp:ListItem>
                            <asp:ListItem Value="2">Val 22</asp:ListItem>
                            <asp:ListItem Value="3">Val 33</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2"
                            runat="server"
                            ControlToValidate="ddl"
                            CssClass="label label-danger"
                            InitialValue="0"
                            Display="Dynamic"
                            ValidationGroup="vgAdd"
                            ErrorMessage="Start Date is required"></asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <asp:Button ID="btnSave"
                            runat="server"
                            Text="Save"
                            CausesValidation="true"
                            CssClass="btn btn-primary"
                            ValidationGroup="vgAdd" />
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script type="text/javascript">
        $(document).ready(function () {
            $('#<%= txtEmail.ClientID%>').datepicker();
        });
    </script>
</asp:Content>
