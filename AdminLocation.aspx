<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLocation.aspx.cs" Inherits="TravelWebsite.AdminLocation" %>

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
                   DataSourceID="SqlDataSource1" DataTextField="location_id" 
                   DataValueField="location_id" 
                   onselectedindexchanged="DropDownList1_SelectedIndexChanged1">
            </asp:DropDownList>
               <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                   ConnectionString="<%$ ConnectionStrings:TravelTourismConnectionString %>" 
                   SelectCommand="SELECT [location_id] FROM [location_details]">
               </asp:SqlDataSource>
        </td></tr>
         <tr><td>
        Location Id:</td> <td> 
        <asp:TextBox ID="txtid" runat="server"></asp:TextBox>
        </td></tr>
       <tr><td>
        Location Name:</td> <td> 
        <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
        </td></tr>
        <tr><td>
        Introduction:</td> <td> 
        <asp:TextBox ID="txtintro" runat="server" TextMode="MultiLine"></asp:TextBox>
        </td></tr>
         <tr><td>
        Attractions:</td> <td> 
        <asp:TextBox ID="txtattractions" runat="server" TextMode="MultiLine"></asp:TextBox>
        </td></tr>
         <tr><td>
        Time To Visit:</td> <td> 
        <asp:TextBox ID="txttimetovisit" runat="server" TextMode="MultiLine"></asp:TextBox>
        </td></tr>
         <tr><td>
        How to Reach:</td> <td> 
        <asp:TextBox ID="txthow" runat="server" TextMode="MultiLine"></asp:TextBox>
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
