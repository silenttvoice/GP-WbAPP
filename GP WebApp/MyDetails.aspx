<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MyDetails.aspx.cs" Inherits="MyDetails" %>

<asp:Content ID="Body" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <div>
    
        <br />
        <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Font-Underline="True" 
            Text="Details" ForeColor="#229EE2"></asp:Label>
        <br />
        <br />
        <br />
        <asp:Label ID="lblUserID" runat="server" Text="User Id  :-"></asp:Label>
&nbsp;
        <asp:TextBox ID="txtUserID" runat="server" ReadOnly="True"></asp:TextBox>
        <br />
        <br />
&nbsp;&nbsp;
        <asp:Label ID="lblName" runat="server" Text="Name  :-"></asp:Label>
&nbsp;
        <asp:TextBox ID="txtName" runat="server" ReadOnly="True"></asp:TextBox>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblAddress" runat="server" Text="Address  :-"></asp:Label>
&nbsp;
        <asp:TextBox ID="txtAddress" runat="server" Height="43px" TextMode="MultiLine" 
            Width="280px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
        <asp:Label ID="lblMobileNo" runat="server" Text="Mobile No  :-"></asp:Label>
&nbsp;
        <asp:TextBox ID="txtMobileNo" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ErrorMessage="Enter Valid Mobile Number" Font-Size="Small" ForeColor="Red" 
            ControlToValidate="txtMobileNo" ValidationExpression="^(\+44\s?7\d{3}|\(?07\d{3}\)?)\s?\d{3}\s?\d{3}$"></asp:RegularExpressionValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;
        <asp:Label ID="lblEmail" runat="server" Text="Email  :-"></asp:Label>
&nbsp;
        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
            ErrorMessage="Enter Valid Email ID" Font-Size="Small" ForeColor="Red" 
            ControlToValidate="txtEmail" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <asp:Button ID="btnUpdate" runat="server" onclick="btnUpdate_Click" Text="Update" />
        <br />
        <br />
        <asp:Label ID="Label7" runat="server" Font-Size="X-Large" Font-Underline="True" 
            Text="Treatment History" ForeColor="#229EE2"></asp:Label>
        <br />
&nbsp;
        <br />
        <asp:GridView ID="GridView1" runat="server" BackColor="White" 
            BorderColor="#999999" BorderWidth="1px" CellPadding="3" 
            GridLines="Vertical" BorderStyle="None">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" 
                HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" ForeColor="White" Font-Bold="True" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
        </asp:GridView>
        <br />
        <br />
        <br />
    
    </div>
</asp:Content>