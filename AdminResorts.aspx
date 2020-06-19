<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminResorts.aspx.cs" Inherits="TravelWebsite.AdminResorts" %>

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
                 DataSourceID="SqlDataSource1" DataTextField="R_id" DataValueField="R_id" 
                 onselectedindexchanged="DropDownList1_SelectedIndexChanged">
            </asp:DropDownList>
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                 ConnectionString="<%$ ConnectionStrings:TravelTourismConnectionString %>" 
                 SelectCommand="SELECT [R_id] FROM [resort_details]"></asp:SqlDataSource>
        </td></tr>
        <tr><td>
        Resort ID:</td> <td> 
        <asp:TextBox ID="txtresid" runat="server"></asp:TextBox>
        </td></tr>
        <tr><td>
        Resort Name:</td> <td> 
        <asp:TextBox ID="txtresname" runat="server"></asp:TextBox>
        </td></tr>
        <tr><td>
        Location_id:</td> <td> 
        <asp:TextBox ID="txtlocid" runat="server"></asp:TextBox>
        </td></tr>
        <tr><td>
        Basic Info:</td> <td> 
        <asp:TextBox ID="txtinfo" runat="server" TextMode="MultiLine"></asp:TextBox>
        </td></tr>
        <tr><td>
        Features:</td> <td> 
        <asp:TextBox ID="txtfeatures" runat="server"></asp:TextBox>
        </td></tr>
        <tr><td>
        Price :</td> <td> 
        <asp:TextBox ID="txtprice" runat="server"></asp:TextBox>
        </td></tr>
        <tr><td></td> <td> 
        <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" />
        </td></tr>
        </table>
        <center>
        <asp:GridView ID="GridView1" runat="server"></asp:GridView>
        </center>   
    </div>
    </form>
</body>
</html>
