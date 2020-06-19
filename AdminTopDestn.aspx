<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminTopDestn.aspx.cs" Inherits="TravelWebsite.AdminTopDestn" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link href="css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
<link href="css/style.css" type="text/css" rel="stylesheet" media="all">
<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
<link type="text/css" rel="stylesheet" href="css/JFFormStyle-1.css" />
<!-- js -->
<script src="js/jquery.min.js"></script>
<script src="js/modernizr.custom.js"></script>
<!-- //js -->
<!-- fonts -->
<link href='//fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,700,500italic,700italic,900,900italic' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<!-- //fonts -->	
<script type="text/javascript">
    $(document).ready(function () {
        $('#horizontalTab').easyResponsiveTabs({
            type: 'default', //Types: default, vertical, accordion           
            width: 'auto', //auto or any width like 600px
            fit: true   // 100% fit in a container
        });
    });
	</script>
    <!-- script-for-menu -->
							 <script>
							     $("span.menu").click(function () {
							         $("ul.nav1").slideToggle(300, function () {
							             // Animation complete.
							         });
							     });
							
							</script>
						<!-- /script-for-menu -->
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table align="center" width="10px">
       <tr><td>
       Select Username:</td><td>
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                   DataSourceID="SqlDataSource1" DataTextField="Rank" DataValueField="Rank" 
                   onselectedindexchanged="DropDownList1_SelectedIndexChanged">
            </asp:DropDownList>
               <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                   ConnectionString="<%$ ConnectionStrings:TravelTourismConnectionString %>" 
                   SelectCommand="SELECT [Rank] FROM [Topdestinations]"></asp:SqlDataSource>
        </td></tr>
         <tr><td>
        Name:</td> <td> <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
        </td></tr>
       <tr><td>
        Description:</td> <td> <asp:TextBox ID="txtdesc" runat="server"></asp:TextBox>
        </td></tr>
        <tr><td>
        Price:</td> <td>   <asp:TextBox ID="txtprice" runat="server"></asp:TextBox>
        </td></tr>
        <tr><td>
        Rank:</td> <td>   <asp:TextBox ID="txtrank" runat="server"></asp:TextBox>
        </td></tr>
        <tr><td></td><td>
            <asp:Button ID="btnUpdate" runat="server" Text="Update" />
        </td></tr>
        </table>
         <center>
    <asp:GridView ID="GridView1" runat="server"></asp:GridView>
    </center>
    </div>
    </form>
</body>
</html>
