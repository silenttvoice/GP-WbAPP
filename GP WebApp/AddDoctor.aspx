<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddDoctor.aspx.cs" Inherits="AddDoctor" %>

<asp:Content ID="body" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>

    <br />
    <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Font-Underline="True" 
        ForeColor="#229EE2" Text="Add Doctor "></asp:Label>
    <br />
    <br />
    <br />
        <asp:Label ID="lblDocID" runat="server" Text="Doc ID  :-"></asp:Label>
&nbsp;
        <asp:TextBox ID="txtDocID" runat="server" ReadOnly="True"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <asp:Label ID="lblName" runat="server" Text="Name  :-"></asp:Label>
&nbsp;
        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="lblPass" runat="server" Text="Pass:-"></asp:Label>
&nbsp;<asp:TextBox ID="txtPass" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="lblAddress" runat="server" Text="Address  :-"></asp:Label>
&nbsp;
        <asp:TextBox ID="txtAddress" runat="server" Height="36px" TextMode="MultiLine" 
            Width="202px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <asp:Label ID="lblMobile" runat="server" Text="Mobile No  :-"></asp:Label>
&nbsp;
        <asp:TextBox ID="txtMobile" runat="server"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <asp:Label ID="lblEmail" runat="server" Text="Email  :-"></asp:Label>
&nbsp;
        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
        &nbsp;
    <br />
        <br />
        <asp:Label ID="lblCategory" runat="server" Text="Category  :-"></asp:Label>
&nbsp;
        <asp:DropDownList ID="ddlCategory" runat="server">
            <asp:ListItem>--Select--</asp:ListItem>
            <asp:ListItem>General Physician</asp:ListItem>
            <asp:ListItem>Bone</asp:ListItem>
            <asp:ListItem>Heart</asp:ListItem>
            <asp:ListItem>Dentist</asp:ListItem>
            <asp:ListItem>Neurologist</asp:ListItem>
            <asp:ListItem>Kidney</asp:ListItem>
            <asp:ListItem>Cardiologist</asp:ListItem>
            <asp:ListItem>Plastic Surgeon</asp:ListItem>
        </asp:DropDownList>
&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
        <br />
        <asp:Button ID="btnSubmit" runat="server" onclick="btnSubmit_Click" Text="Submit" />
&nbsp;
        <asp:Button ID="btnCancel" runat="server" Text="Cancel" OnClick="btnCancel_Click" />
        &nbsp;
    <br />
    <br />
    <br />

</div>
</asp:Content>
