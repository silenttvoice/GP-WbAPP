<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<asp:Content ID="body" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <div>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <table width="50%">
            <tr>
                <td width="50%" align="right">
                    <asp:Label ID="lblID" runat="server" Text="ID  :-"></asp:Label>
                </td>
                <td width="50%">
                    <asp:TextBox ID="id" runat="server" Width="127px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td width="50%" align="right">
                    <asp:Label ID="lblPassword" runat="server" Text="Password :-"></asp:Label>
                </td>
                <td width="50%">
                    <asp:TextBox ID="pass" runat="server" Width="127px" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
        </table>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnLogin" runat="server" Text="Login" onclick="btnLogin_Click" style="height: 26px" />
    &nbsp;
        <asp:Button ID="btnCancel" runat="server" onclick="btnCancel_Click" Text="Cancel" />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        Not a member yet ?&nbsp; 
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Postcode.aspx">Register</asp:HyperLink>
    </div>
</asp:Content>