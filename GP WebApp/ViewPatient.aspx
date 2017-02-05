<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ViewPatient.aspx.cs" Inherits="ViewPatient" %>

<asp:Content ID="body" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <div>
    
        <br />
        <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Font-Underline="True" 
            Text="Customer Details" ForeColor="#229EE2"></asp:Label>
        <br />
        <br />

    
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="UId" DataSourceID="SqlDataSource1" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="UId" HeaderText="UId" ReadOnly="True" SortExpression="UId" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Sex" HeaderText="Sex" SortExpression="Sex" />
                <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                <asp:BoundField DataField="Pass" HeaderText="Pass" SortExpression="Pass" />
                <asp:BoundField DataField="Bg" HeaderText="Bg" SortExpression="Bg" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" DeleteCommand="DELETE FROM [Cust] WHERE [UId] = @UId" InsertCommand="INSERT INTO [Cust] ([UId], [Name], [Address], [Mobile], [Email], [Sex], [Age], [Pass], [Bg]) VALUES (@UId, @Name, @Address, @Mobile, @Email, @Sex, @Age, @Pass, @Bg)" SelectCommand="SELECT * FROM [Cust]" UpdateCommand="UPDATE [Cust] SET [Name] = @Name, [Address] = @Address, [Mobile] = @Mobile, [Email] = @Email, [Sex] = @Sex, [Age] = @Age, [Pass] = @Pass, [Bg] = @Bg WHERE [UId] = @UId">
            <DeleteParameters>
                <asp:Parameter Name="UId" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="UId" Type="String" />
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="Mobile" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Sex" Type="String" />
                <asp:Parameter Name="Age" Type="String" />
                <asp:Parameter Name="Pass" Type="String" />
                <asp:Parameter Name="Bg" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="Mobile" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Sex" Type="String" />
                <asp:Parameter Name="Age" Type="String" />
                <asp:Parameter Name="Pass" Type="String" />
                <asp:Parameter Name="Bg" Type="String" />
                <asp:Parameter Name="UId" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <asp:Label ID="Label2" runat="server" Font-Size="X-Large" Font-Underline="True" 
            Text="Patient's Treatment History" ForeColor="#229EE2"></asp:Label>
        <br />
        <br />
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource2" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:BoundField DataField="Dise" HeaderText="Dise" SortExpression="Dise" />
                <asp:BoundField DataField="Treatment" HeaderText="Treatment" SortExpression="Treatment" />
                <asp:BoundField DataField="DNote" HeaderText="DNote" SortExpression="DNote" />
                <asp:BoundField DataField="DateTime" HeaderText="DateTime" SortExpression="DateTime" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" SelectCommand="SELECT [Dise], [Treatment], [DNote], [DateTime] FROM [History] WHERE ([UId] = @UId) ORDER BY [DateTime]">
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" Name="UId" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />

    
    </div>
</asp:Content>
