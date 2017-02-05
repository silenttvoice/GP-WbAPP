<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ViewApp.aspx.cs" Inherits="ViewApp" %>

<asp:Content ID="body" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Font-Underline="True" 
        ForeColor="#229EE2" Text="Appiontments"></asp:Label>

        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="AId" DataSourceID="SqlDataSource1" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" />
                <asp:BoundField DataField="AId" HeaderText="AId" ReadOnly="True" SortExpression="AId" />
                <asp:BoundField DataField="UId" HeaderText="UId" SortExpression="UId" />
                <asp:BoundField DataField="DName" HeaderText="DName" SortExpression="DName" />
                <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" DeleteCommand="DELETE FROM [App] WHERE [AId] = @AId" InsertCommand="INSERT INTO [App] ([AId], [UId], [DName], [Date], [Time]) VALUES (@AId, @UId, @DName, @Date, @Time)" SelectCommand="SELECT * FROM [App]" UpdateCommand="UPDATE [App] SET [UId] = @UId, [DName] = @DName, [Date] = @Date, [Time] = @Time WHERE [AId] = @AId">
            <DeleteParameters>
                <asp:Parameter Name="AId" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="AId" Type="String" />
                <asp:Parameter Name="UId" Type="String" />
                <asp:Parameter Name="DName" Type="String" />
                <asp:Parameter Name="Date" Type="String" />
                <asp:Parameter Name="Time" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="UId" Type="String" />
                <asp:Parameter Name="DName" Type="String" />
                <asp:Parameter Name="Date" Type="String" />
                <asp:Parameter Name="Time" Type="String" />
                <asp:Parameter Name="AId" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />

    </div>
</asp:Content>
