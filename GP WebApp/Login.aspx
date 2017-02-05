<%@ Page Language="C#"  MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="body" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <div>
        <h2 style="color: #229EE2">Choose Your Login</h2>
        <br />
        <br />
        


        <table width="80%" style="padding-left: 50px; margin-left: 213px;">
       <tr>
       <td width="33%"><center><asp:HyperLink ID="hplAdmin" runat="server" NavigateUrl="~/Default.aspx"><img src="images/adminbutton.jpg" /></asp:HyperLink></center></td>
       <td width="33%"><center><asp:HyperLink ID="hplPatient" runat="server" NavigateUrl="~/Default2.aspx"><img src="images/patientbutton.jpg" /></asp:HyperLink></center></td>
       <td><center><asp:HyperLink ID="hplDoctor" runat="server" NavigateUrl="~/Default3.aspx"><img src="images/Doctorbutton.jpg" /></asp:HyperLink></center></td>
       </tr></table> 
        <br />
        
    </div>
</asp:Content>