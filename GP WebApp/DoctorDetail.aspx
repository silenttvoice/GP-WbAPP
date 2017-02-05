<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DoctorDetail.aspx.cs" Inherits="DoctorDetails" %>

<asp:Content ID="Body" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>

    <br />
    <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Font-Underline="True" 
        ForeColor="#229EE2" Text="View My Details"></asp:Label>
    <br />
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="Doctor  Id  :-"></asp:Label>
&nbsp;
    <asp:TextBox ID="TextBox1" runat="server" ReadOnly="True"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />
    <asp:Label ID="Label3" runat="server" Text="Name  :-"></asp:Label>
&nbsp;
    <asp:TextBox ID="TextBox2" runat="server" ReadOnly="True"></asp:TextBox>
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label4" runat="server" Text="Address  :-"></asp:Label>
&nbsp;
    <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine" 
        Width="251px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label5" runat="server" Text="Mobile  :-"></asp:Label>
&nbsp;
    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
        ErrorMessage="Enter Valid Mobile Number" Font-Size="Small" ForeColor="Red" 
        ControlToValidate="TextBox4" ValidationExpression="^(\+44\s?7\d{3}|\(?07\d{3}\)?)\s?\d{3}\s?\d{3}$"></asp:RegularExpressionValidator>
&nbsp;&nbsp;&nbsp;
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label6" runat="server" Text="Category  :-"></asp:Label>
&nbsp;
    <asp:TextBox ID="TextBox5" runat="server" ReadOnly="True"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />
    <asp:Button ID="btnUpdate" runat="server" onclick="btnUpdate_Click" Text="Update" />
    <br />
    <br />
    <br />
    <br />

</div>
</asp:Content>
