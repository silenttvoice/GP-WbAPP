<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Postcode.aspx.cs" Inherits="Postcode" %>

<asp:Content ID="body" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <div>

        <br />

    <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Font-Underline="True" 
            Text="Postcode Verification" ForeColor="#229EE2"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Please Enter Your Postcode Below"></asp:Label>
        <br />
        <asp:TextBox ID="txtPostcode" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="btnVerify" runat="server" OnClick="btnVerify_Click" Text="Verify" />
    </div>
</asp:Content>