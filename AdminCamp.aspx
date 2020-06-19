<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminCamp.aspx.cs" Inherits="TravelWebsite.AdminCamp" %>

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
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" 
                    DataTextField="c_id" DataValueField="c_id" 
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
                    AutoPostBack="True">
            </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:TravelTourismConnectionString %>" 
                    SelectCommand="SELECT [c_id] FROM [camp_details]"></asp:SqlDataSource>
            </td></tr>
         <tr><td>
        Camp ID:</td> <td> 
        <asp:TextBox ID="txtid" runat="server"></asp:TextBox>
        </td></tr>
        <tr><td>
        Location: ID</td> <td> 
        <asp:TextBox ID="txtlocid" runat="server"></asp:TextBox>
        </td></tr>
        <tr><td>
        Description:</td> <td> 
        <asp:TextBox ID="txtdesc" runat="server" TextMode="MultiLine"></asp:TextBox>
        </td></tr>
         <tr><td>
        Start Date:</td> <td> 
        <asp:TextBox ID="txtsdate" runat="server"></asp:TextBox>
        </td></tr>
        <tr><td>
        End Date:</td> <td> 
        <asp:TextBox ID="txtedate" runat="server"></asp:TextBox>
        </td></tr>
         <tr><td>
        Camp Name:</td> <td> 
        <asp:TextBox ID="txtcname" runat="server"></asp:TextBox>
        </td></tr>
        <tr><td></td> <td> 
        <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" />
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
