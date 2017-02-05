<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddDescription.aspx.cs" Inherits="AddDescription" %>

<asp:Content ID="Body" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <div>

    <br />
    <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Font-Underline="True" 
        ForeColor="#229EE2" Text="Add Treatment"></asp:Label>
    <br />
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label2" runat="server" Text="User ID  :-"></asp:Label>
&nbsp;
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;
    <asp:Button ID="btnSearch" runat="server" onclick="btnSearch_Click" Text="Search" />
    <br />
    <asp:Panel ID="Panel4" runat="server" Height="281px" Visible="False">
        <br />
        <asp:Label ID="Label3" runat="server" Text="Name  :-"></asp:Label>
        &nbsp;
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="Treatment For  :-"></asp:Label>
        &nbsp;
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" Text="Treatment  :-"></asp:Label>
        &nbsp;
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <asp:Label ID="Label6" runat="server" Text="** Note  :-"></asp:Label>
        &nbsp;
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" onclick="btnSubmit_Click" />
    </asp:Panel>
    <br />
    <br />

</div>
</asp:Content>
