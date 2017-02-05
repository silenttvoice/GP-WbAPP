<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Cancel.aspx.cs" Inherits="Cancel" %>
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
            Text="Cancel Booking" ForeColor="#229EE2"></asp:Label>
        <br />
        <br />
        <br />
        <asp:Label ID="lblBookingID" runat="server" Text="Booking ID  :-"></asp:Label>
&nbsp;
        <asp:TextBox ID="txtBookingID" runat="server"></asp:TextBox>
&nbsp;
        <asp:Button ID="btnDelete" runat="server" Text="Delete" onclick="btnDelete_Click" />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    
    </div>
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
                        Alert !!! <a id="closebtn" style="color: white; float: right;text-decoration:none" class="btnClose"  href="#">X</a>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="width: 45%; text-align: center;">
                        <asp:Label ID="LabelValidate" runat="server" Text="Want to Cancel  appointment ...Click Ok Button !!!" />
                    </td>
                </tr>
              
                                <tr>
                    <td>
                    </td>
                    <td>
                        <asp:Button ID="btnUpdate" runat="server" Text="Ok" OnClick="btnUpdate_Click" />
                        <input type="button" class="btnClose" value="Cancel" />
                    </td>
                </tr>
            </table>
        </asp:Panel>

</asp:Content>
