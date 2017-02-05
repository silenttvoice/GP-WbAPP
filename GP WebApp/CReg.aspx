<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CReg.aspx.cs" Inherits="CReg" %>

<asp:Content ID="body" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <div>
    <br />
        <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Font-Underline="True" 
            Text="Registration" ForeColor="#229EE2"></asp:Label>
        <br />
       
    
        <br />
        <asp:Label ID="lblUserID" runat="server" Text="User ID  :-"></asp:Label>
&nbsp;
        <asp:TextBox ID="txtUserID" runat="server" ReadOnly="True" ></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <asp:Label ID="lblName" runat="server" Text="Name  :-"></asp:Label>
&nbsp;
        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
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
        <asp:TextBox ID="txtMobileNo" runat="server"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        &nbsp;<asp:Label ID="lblEmail" runat="server" Text="Email  :-"></asp:Label>
&nbsp;
        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="lblSex" runat="server" Text="Sex  :-"></asp:Label>
&nbsp;
        <asp:DropDownList ID="ddlSex" runat="server">
            <asp:ListItem>Male</asp:ListItem>
            <asp:ListItem>Female</asp:ListItem>
        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblAge" runat="server" Text="Age  :-"></asp:Label>
&nbsp;
        <asp:TextBox ID="txtAge" runat="server" MaxLength="4"></asp:TextBox>
       
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <asp:Label ID="lblBloodGroup" runat="server" Text="Bloog Group  :-"></asp:Label>
&nbsp;
        <asp:DropDownList ID="ddlBloodGroup" runat="server" Height="16px" Width="100px">
            <asp:ListItem>A +</asp:ListItem>
            <asp:ListItem>A -</asp:ListItem>
            <asp:ListItem>B +</asp:ListItem>
            <asp:ListItem>B -</asp:ListItem>
            <asp:ListItem>O +</asp:ListItem>
            <asp:ListItem>O -</asp:ListItem>
            <asp:ListItem>AB +</asp:ListItem>
            <asp:ListItem>AB -</asp:ListItem>
        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        &nbsp;<asp:Label ID="lblPassword" runat="server" Text="Password  :-"></asp:Label>
&nbsp;
        <asp:TextBox ID="txtPass" runat="server" TextMode="Password"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <asp:Label ID="lblConfirmPass" runat="server" Text="Confirm Password  :-"></asp:Label>
&nbsp;
        <asp:TextBox ID="txtConPass" runat="server" TextMode="Password"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <asp:Button ID="btnSubmit" runat="server" onclick="btnSubmit_Click" Text="Submit" />
&nbsp;
        <asp:Button ID="btnCancel" runat="server" onclick="btnCancel_Click" Text="Cancel" />
        <br />
        <br />
        <br />
    
    </div>
</asp:Content>