<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Book.aspx.cs" Inherits="Book" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
<script src="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.9/jquery-ui.js" type="text/javascript"></script>
<link href="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.9/themes/start/jquery-ui.css"
    rel="stylesheet" type="text/css" />

</asp:Content>

<asp:Content ID="body" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    
        <br />
        <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Font-Underline="True" 
            Text="New Booking" ForeColor="#229EE2"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Appointment Id  :-"></asp:Label>
&nbsp;
        <asp:TextBox ID="txtAppID" runat="server" OnTextChanged="txtAppID_TextChanged"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Category  :-"></asp:Label>
&nbsp;
        <asp:DropDownList ID="ddlCategory" runat="server" AutoPostBack="True" 
            onselectedindexchanged="ddlCategory_SelectedIndexChanged">
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
        <br />
        <br />
&nbsp;<asp:Label ID="Label9" runat="server" Text="Doctor :-"></asp:Label>
&nbsp;
        <asp:DropDownList ID="ddlDoctor" runat="server" Height="25px" 
            style="margin-left: 1px" Width="123px">
            <asp:ListItem>--Select--</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="Date  :-"></asp:Label>
&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Calendar ID="Calendar1" runat="server" ondayrender="Calendar1_DayRender" 
            onselectionchanged="Calendar1_SelectionChanged"></asp:Calendar>
        <asp:Label ID="Label12" runat="server" Visible="False"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;
        <asp:Button ID="btnCheck" runat="server" onclick="btnCheck_Click" Text="Check" 
            style="height: 26px" />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <asp:Panel ID="Panel4" runat="server" Height="359px" Width="732px">
            <asp:Button ID="Button7" runat="server" onclick="Button7_Click" 
                Text="9:00-9:30" Height="50px" Width="85px" />
            &nbsp;<asp:Button ID="Button8" runat="server" onclick="Button8_Click" 
                Text="9:30-10:00" Height="50px" Width="85px" />
            &nbsp;<asp:Button ID="Button9" runat="server" onclick="Button9_Click" 
                Text="10:00-10:30" Height="50px" Width="85px" />
&nbsp;<asp:Button ID="Button10" runat="server" onclick="Button10_Click" 
                Text="10:30-11:00" Height="50px" Width="85px" />
            &nbsp;<asp:Button ID="Button11" runat="server" onclick="Button11_Click" 
                Text="11:00-11:30" Height="50px" Width="85px" />
            &nbsp;<asp:Button ID="Button12" runat="server" onclick="Button12_Click" 
                Text="11:30-12:00" Height="50px" Width="85px" />
            <br />
            <br />
            <asp:Button ID="Button19" runat="server" BackColor="#229EE2" 
                EnableTheming="False" Height="50px" onclick="Button19_Click" 
                Text="12:00 - 1:30   Break" Width="550px" />
            <br />
            <br />
            <asp:Button ID="Button21" runat="server" Height="50px" onclick="Button21_Click" 
                Text="1:30-2:00" Width="85px" />
            &nbsp;<asp:Button ID="Button22" runat="server" Height="50px" 
                onclick="Button22_Click" Text="2:00-2:30" Width="85px" />
            &nbsp;<asp:Button ID="Button23" runat="server" Height="50px" 
                onclick="Button23_Click" Text="2:30-3:00" Width="85px" />
            &nbsp;<asp:Button ID="Button24" runat="server" Height="50px" 
                onclick="Button24_Click" Text="3:00-3:30" Width="85px" />
            &nbsp;<asp:Button ID="Button25" runat="server" Height="50px" 
                onclick="Button25_Click" Text="3:30-4:00" Width="85px" />
            &nbsp;<asp:Button ID="Button26" runat="server" Height="50px" 
                onclick="Button26_Click" Text="4:00-4:30" Width="85px" />
            <br />
            <br />
            &nbsp;<asp:Button ID="Button20" runat="server" BackColor="#229EE2" 
                EnableTheming="False" Height="50px" onclick="Button20_Click" 
                Text="4:30 - 6:00   Break" Width="550px" />
            &nbsp;<br />
            <br />
            <asp:Button ID="Button13" runat="server" Height="50px" 
                onclick="Button13_Click" Text="6:00-6:30" Width="85px" />
            &nbsp;<asp:Button ID="Button14" runat="server" Height="50px" 
                onclick="Button14_Click" Text="6:30-7:00" Width="85px" />
            &nbsp;<asp:Button ID="Button15" runat="server" onclick="Button15_Click" 
                Text="7:00-7:30" Height="50px" Width="85px" />
            &nbsp;<asp:Button ID="Button16" runat="server" onclick="Button16_Click" 
                Text="7:30-8:00" Height="50px" Width="85px" />
            &nbsp;<asp:Button ID="Button17" runat="server" onclick="Button17_Click" 
                Text="8:00-8:30" Height="50px" Width="85px" />
            &nbsp;<asp:Button ID="Button18" runat="server" onclick="Button18_Click" 
                Text="8:30-9:00" Height="50px" Width="85px" />
            <br />
            <br />
            <asp:Button ID="btnBook" runat="server" Height="30px" onclick="btnBook_Click" 
                Text="Book" Visible="False" Width="51px" />
        </asp:Panel>
&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <asp:Label ID="Label7" runat="server" Visible="False"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label 
            ID="Label10" runat="server" Visible="False"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label8" runat="server" Visible="False"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label11" runat="server" Text="0" Visible="False"></asp:Label>
        <br />
        <br />
    <style type="text/css">
        #mask
        {
            position: fixed;
            left: 0px;
            top: 0px;
            z-index: 4;
            opacity: 0.4;
            -ms-filter: "progid:DXImageTransform.Microsoft.Alpha(Opacity=40)"; /* first!*/
            filter: alpha(opacity=40); /* second!*/
            background-color: gray;
            display: none;
            width: 100%;
            height: 100%;
        }
    </style>
    
    <script type="text/javascript" language="javascript">
        function ShowPopup() {
            $('#mask').show();
            $('#<%=pnlpopup.ClientID %>').show();
        }
        function HidePopup() {
            $('#mask').hide();
            $('#<%=pnlpopup.ClientID %>').hide();
        }
        $(".btnClose").live('click', function () {
            HidePopup();
        });
    </script>
    
      <asp:Panel ID="pnlpopup" runat="server"  BackColor="White" Height="250px"
            Width="300px" Style="z-index:111;background-color: White; position: absolute; left: 35%; top: 10%; 
 
border: outset 2px gray;padding:5px;display:none">
            <table width="100%" style="width: 100%; height: 100%;" cellpadding="0" cellspacing="5">
                <tr style="background-color: #0924BC">
                    <td colspan="2" style="color:White; font-weight: bold; font-size: 1.2em; padding:3px"
                        align="center">
                      Information !!!<a id="closebtn" style="color: white; float: right;text-decoration:none" class="btnClose"  href="#">X</a>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="width: 45%; text-align: center;">
                        <asp:Label ID="LabelValidate" runat="server" Text="if you want to book this slot.. click ok" />
                    </td>
                </tr>
                               <tr>
                    <td>
                    </td>
                    <td>
                   <asp:Button ID="btnUpdate"  runat="server" Text="Ok" OnClick="btnUpdate_Click" />
                        <input type="button" class="btnClose" value="Cancel" />
                    </td>
                </tr>
            </table>
        </asp:Panel>


    </div>
</asp:Content>