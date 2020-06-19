<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Adminabout.aspx.cs" Inherits="TravelWebsite.Adminabout" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table align="center" width="50px">
        <tr><td>
        </td> <td> 
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource1" DataTextField="Heading" DataValueField="Heading" 
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged">
            </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:TravelTourismConnectionString %>" 
                    SelectCommand="SELECT * FROM [AboutUs]"></asp:SqlDataSource>
            </td></tr>
         <tr><td>
        Heading:</td> <td> 
        <asp:TextBox ID="txtheading" runat="server" TextMode="MultiLine"></asp:TextBox>
        </td></tr>
        <tr><td>
        Description: ID</td> <td> 
        <asp:TextBox ID="txtdesc" runat="server" TextMode="MultiLine"></asp:TextBox>
        </td></tr>
        <tr><td></td> <td> 
        <asp:Button ID="btnUpdate" runat="server" Text="Update" onclick="btnUpdate_Click"/>
        </td></tr>
        </table>
        <center>
        <asp:GridView ID="GridView1" runat="server" BorderColor="#0D2DC2" Font-Names="Lato" 
                ForeColor="#0D2DC2" ShowFooter="True">
            </asp:GridView>
        </center>
    </div>
    </form>
</body>
</html>
