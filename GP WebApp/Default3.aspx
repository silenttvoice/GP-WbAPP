<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="Default3.aspx.cs" Inherits="Default3" %>



<asp:Content ID="Body" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
                    <asp:Label ID="lblPass" runat="server" Text="Password :-"></asp:Label>
                </td>
                <td width="50%">
                    <asp:TextBox ID="pass" runat="server" Width="127px" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
        </table>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnLogin" runat="server" Text="Login" onclick="btnLogin_Click" />
    &nbsp;
        <asp:Button ID="btnCancel" runat="server" onclick="btnCancel_Click" Text="Cancel" />
    </div>
</asp:Content>