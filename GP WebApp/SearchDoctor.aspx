<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SearchDoctor.aspx.cs" Inherits="SearchDoctor" %>

<asp:Content ID="body" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    
        <br />
        <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Font-Underline="True" 
            ForeColor="#229EE2" Text="Search Doctor "></asp:Label>
        <br />
        <br />
        <br />
        <asp:Label ID="lblSearchBy" runat="server" Text="Search By  :-"></asp:Label>
&nbsp;
        <asp:DropDownList ID="ddlSearch" runat="server" AutoPostBack="True" 
            onselectedindexchanged="DropDownList1_SelectedIndexChanged">
            <asp:ListItem>Name</asp:ListItem>
            <asp:ListItem>Type</asp:ListItem>
            <asp:ListItem>Address</asp:ListItem>
        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblName" runat="server" Text="Text  :-  "></asp:Label>
        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" 
            Visible="False" style="height: 26px" />
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Submit" 
            Visible="False" />
        <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="Submit" 
            Visible="False" />
        <br />
        <br />
        <br />
        <asp:Panel ID="Panel4" runat="server" Height="150px">
            <asp:GridView ID="GridView1" runat="server" 
    BackColor="White" BorderColor="#999999" BorderWidth="1px" 
    CellPadding="3" GridLines="Vertical" BorderStyle="None">
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
        </asp:Panel>
        <br />
        <br />
        <br />
    
    </div>
</asp:Content>
