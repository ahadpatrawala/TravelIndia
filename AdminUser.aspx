<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminUser.aspx.cs" Inherits="TravelWebsite.AdminUser" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table align="center" width="10px">
       <tr><td>
       Select Username:</td><td>
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                DataSourceID="SqlDataSource1" DataTextField="Username" 
                DataValueField="Username" 
                onselectedindexchanged="DropDownList1_SelectedIndexChanged">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:TravelTourismConnectionString %>" 
                SelectCommand="SELECT [Username] FROM [register]"></asp:SqlDataSource>
        </td></tr>
         <tr><td>
        Username:</td> <td> <asp:TextBox ID="txtusername" runat="server"></asp:TextBox>
        </td></tr>
       <tr><td>
        Fname:</td> <td> <asp:TextBox ID="txtfname" runat="server"></asp:TextBox>
        </td></tr>
        <tr><td>
        Lname:</td> <td>   <asp:TextBox ID="txtlname" runat="server"></asp:TextBox>
        </td></tr>
        <tr><td>
        Email:</td> <td>   <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
        </td></tr>
        <tr><td>
        Phone:</td> <td>   <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
        </td></tr>
        <tr><td></td><td>
        <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" />
        </td></tr>
        <tr><td>Username to delete: </td> <td> <asp:TextBox ID="txtDeleteID" runat="server"></asp:TextBox>
    </td></tr>
    <tr><td>                                    </td><td>
    <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" /></td></tr></table>
    <center>
    <asp:GridView ID="GridView1" runat="server"></asp:GridView>
    </center>
    </div>
    </div>
    </form>
</body>
</html>
