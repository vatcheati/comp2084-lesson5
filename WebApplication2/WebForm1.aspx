<%@ Page Title="Input Validation" Language="C#" MasterPageFile="~/lesson4.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication2.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>ASP.NET input Validation</h1>

    <fieldset>
        <label for="txtName">Name:</label>
        <asp:TextBox ID="txtName" runat="server" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required" ControlToValidate="txtName" CssClass="label label-danger"></asp:RequiredFieldValidator>
    </fieldset>
    <fieldset>
        <label for="txtPassword">Password:</label>
        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required" ControlToValidate="txtPassword" CssClass="label label-danger" Display="dynamic"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="passwords do not match" ControlToValidate="txtPassword" ControlToCompare="txtConfirm" type="String" Operator="Equal"></asp:CompareValidator>
    </fieldset>
        <fieldset>
        <label for="txtConfirm">Confirm Password:</label>
        <asp:TextBox ID="txtConfirm" runat="server" TextMode="Password" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Required" ControlToValidate="txtConfirm" CssClass="label label-danger"></asp:RequiredFieldValidator>
    </fieldset>
    <fieldset>
        <label for="txtAge">Age:</label>
        <asp:TextBox ID="txtAge" runat="server" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Required" ControlToValidate="txtAge" CssClass="label label-danger" Display="Dynamic"></asp:RequiredFieldValidator>
        <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="enter a # between 1 -128" ControlToValidate="txtAge" CssClass="label label-danger" MaximumValue="120" MinimumValue="1" Type="Integer" Display="Dynamic"></asp:RangeValidator>
        </fieldset>
    <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn btn-primary"
        OnClick="btnSubmit_Click" />
    <asp:Label ID="lblMessage" runat="server" />
</asp:Content>
