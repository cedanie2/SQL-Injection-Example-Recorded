<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SQL_Injection_Example_Recorded._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    
<br />
    <h1>SQL INJECTION EXAMPLE</h1>
    <h2>by Dr. Clinton Daniel</h2>
    <br />
        <asp:Label ID="LabelInput" runat="server" Text="Please type your First Name and Last Name to Create an account."></asp:Label>
        <br />
        <asp:Label ID="LabelMessage" runat="server" Text="All accounts with your same Last Name will then be displayed below after submitting the form."></asp:Label>
    
    <br />
    <br />
    <br />
    <asp:Label ID="LabelFirstName" runat="server" Text="First Name:"></asp:Label>
    <br />
    <asp:TextBox ID="TextBoxFirstName" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="LabelLastName" runat="server" Text="Last Name:"></asp:Label>
    <br />
    <asp:TextBox ID="TextBoxLastName" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="ButtonSubmit" runat="server" Text="Submit" OnClick="ButtonSubmit_Click" />
    <br />
    <br />
    <asp:Label ID="LabelOutput" runat="server" Text="Awaiting Output ..."></asp:Label>
    <br />
    <br />

    <asp:ListBox ID="ListBoxDatabase" runat="server"></asp:ListBox>



</asp:Content>
