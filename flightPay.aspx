<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="flightPay.aspx.cs" Inherits="TravelWebsite.flightPay" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Flight Booking</title>
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
    <style type="text/css">
        .style3
        {
            margin-left: 300px;
        }
    </style>
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
    <div class="header">
		<div class="container">
			<div class="header-grids">
								<div class="logo">
					<h1>
                        <asp:HyperLink ID="logohome" runat="server" NavigateUrl="~/index1.aspx" ForeColor="#0D2DC2"><span>Travel</span></asp:HyperLink>india</h1>
				</div>
              
				<!--navbar-header-->
				<div class="clearfix"> </div>
			</div>
			<div class="nav-top">
				<div class="top-nav">
					<span class="menu"><asp:Image ID="Image6" runat="server" ImageUrl="~/images/menu.png"></asp:Image></span>
					<ul class="nav1">
						<li class="active"><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/index1.aspx">Home</asp:HyperLink></li>
				<li><asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/destinations.aspx">Destinations</asp:HyperLink></li>
                <li><asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Resorts.aspx">Resorts</asp:HyperLink></li>
                <li><asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/FlightTicket.aspx">Tickets</asp:HyperLink></li>
                <li><asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Camp.aspx">Camp</asp:HyperLink></li></ul>
					<div class="clearfix"> </div>
					<!-- script-for-menu -->
							 <script>
							     $("span.menu").click(function () {
							         $("ul.nav1").slideToggle(300, function () {
							             // Animation complete.
							         });
							     });
							
							</script>
						<!-- /script-for-menu -->
				</div>
			</div>
				
				<div class="clearfix"> </div>
			</div>
		</div>

        <div class="style3">
    <h2 style="font-family: 'Lato Light'; color: #0D2DC6; text-align: left; font-weight: bold;">Payment Gateway</h2>
    <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
    <asp:TextBox ID="txtfname" runat="server" placeholder="First Name"></asp:TextBox>
    <asp:TextBox ID="txtlname" runat="server" placeholder="Surname"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="Email"></asp:Label>
    <asp:TextBox ID="txtEmail" runat="server" placeholder="First Name"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label3" runat="server" Text="Phone"></asp:Label>
    <asp:TextBox ID="txtPhone" runat="server" placeholder="Phone"></asp:TextBox>
    <br />
    <br />
    <p>Your card may be eligible if enrolled in Verified by Visa™, MasterCard® SecureCode™, Diners Club International® ProtectBuySM or American Express SafeKey payer authentication programs. After clicking the 'Pay' button, your Card Issuer may prompt you for your payer authentication password to complete your purchase.</p>
    <h4 style="font-family: 'Lato Light'; color: #0D2DC6; text-align: left; font-weight: bold;">Credit Card Details</h4>
    <fieldset>
     <asp:TextBox ID="txtCard" runat="server" placeholder="Card Number"></asp:TextBox>
     <br />
        <asp:DropDownList ID="drpexpmon" runat="server">
        <asp:ListItem Text="Jan"></asp:ListItem>
        <asp:ListItem Text="Feb"></asp:ListItem>
        <asp:ListItem Text="Mar"></asp:ListItem>
        <asp:ListItem Text="Apr"></asp:ListItem>
        <asp:ListItem Text="May"></asp:ListItem>
        <asp:ListItem Text="June"></asp:ListItem>
        <asp:ListItem Text="July"></asp:ListItem>
        <asp:ListItem Text="Aug"></asp:ListItem>
        <asp:ListItem Text="Sept"></asp:ListItem>
        <asp:ListItem Text="Oct"></asp:ListItem>
        <asp:ListItem Text="Nov"></asp:ListItem>
        <asp:ListItem Text="Dec"></asp:ListItem>
        </asp:DropDownList>
        <asp:DropDownList ID="drpexpyr" runat="server">
        <asp:ListItem Text="2016"></asp:ListItem>
        <asp:ListItem Text="2017"></asp:ListItem>
        <asp:ListItem Text="2018"></asp:ListItem>
        <asp:ListItem Text="2019"></asp:ListItem>
        <asp:ListItem Text="2020"></asp:ListItem>
        <asp:ListItem Text="2021"></asp:ListItem>
        <asp:ListItem Text="2022"></asp:ListItem>
        <asp:ListItem Text="2023"></asp:ListItem>
        <asp:ListItem Text="2024"></asp:ListItem>
        <asp:ListItem Text="2025"></asp:ListItem>
        <asp:ListItem Text="2026"></asp:ListItem>
        <asp:ListItem Text="2027"></asp:ListItem>
        <asp:ListItem Text="2028"></asp:ListItem>
        <asp:ListItem Text="2029"></asp:ListItem>
        <asp:ListItem Text="2030"></asp:ListItem>
        <asp:ListItem Text="2031"></asp:ListItem>
        <asp:ListItem Text="2032"></asp:ListItem>
        </asp:DropDownList>
         <asp:TextBox ID="txtCvv" runat="server" placeholder="CVV"></asp:TextBox>
          <asp:TextBox ID="txtCardName" runat="server" placeholder="Name on Card"></asp:TextBox>
    </fieldset>
    <asp:Button ID="btnpay" runat="server" Text="Pay ₹" BackColor="#0D2DC2" 
                BorderColor="#0D2DC2" BorderStyle="Solid" ForeColor="White" Height="46px" 
                Width="94px" onclick="btnpay_Click"/>
            
    </div>
    <div>
    <div class="footer">
		<!-- container -->
		<div class="container">
			<div class="footer-top-grids">
				<div class="footer-grids">
					<div class="col-md-3 footer-grid">
                    <h4>Our Products</h4>
						<ul>
							<li><a href="index1.aspx">Home</a></li>
				            <li><a href="destinations.aspx" >Destinations</a></li>
				            <li><a href="Resorts.aspx">Resorts</a></li>
				            <li><a href="FlightTicket.aspx">Tickets</a></li>
				            <li><a href="Camp.aspx">Camp</a></li>
                             <li><a href="About.aspx">About Us</a></li>
                           <li><a href="contact.aspx">Contact Us</a></li>
						</ul>
					</div>
                    <div class="col-md-3 footer-grid" >
						<h4 style="text-align: center"  >We Accept</h4>
						<div class="a-cards" >
							<ul>
								<li><img src="images/c1.png" alt="" /></li>
								<li><img src="images/c2.png" alt="" /></li>
								<li><img src="images/c3.png" alt="" /></li>
							</ul>
						</div>
					</div>
                    <div class="col-md-3 footer-grid">
						<h4 style="text-align: center">Follow Us</h4>
						<div class="social" style="text-align: center">
							<ul>
								<li><a href="" class="facebook"> </a></li>
								<li><a href="" class="facebook twitter"> </a></li>
								<li><a href="" class="facebook chrome"> </a></li>
								<li><a href="" class="facebook dribbble"> </a></li>
							</ul>
						</div>
					</div>
					<div class="col-md-3 footer-grid" style="text-align: right">
						<h4>Flights</h4>
						<ul>
							<li><a href="https://www.airindia.in/">Air India</a></li>
							<li><a href="https://www.spicejet.com">SpiceJet</a></li>
							<li><a href="https://book.goindigo.in/">Indigo Airlines</a></li>
							<li><a href="https://www.goair.in/">GoAir</a></li>
							<li><a href="https://www.jetairways.com/">Jet Airways</a></li>
						</ul>
					</div>
					<div class="clearfix"> </div>
                                        <div class="copyright">
						<p>Copyright © 2016 Travel India Private Limited, India. All rights reserved</p>
					</div>
				</div>
			</div>
		</div>
		<!-- //container -->
	</div>
	<!-- //footer -->
	<script defer src="js/jquery.flexslider.js"></script>
	<script src="js/easyResponsiveTabs.js" type="text/javascript"></script>
	<script src="js/jquery-ui.js"></script>
	<script type="text/javascript" src="js/script.js"></script>
	<script type="text/javascript">
	    $(function () {
	        SyntaxHighlighter.all();
	    });
	    $(window).load(function () {
	        $('.flexslider').flexslider({
	            animation: "slide",
	            start: function (slider) {
	                $('body').removeClass('loading');
	            }
	        });
	    });
	</script>		
    </div>
    </form>
</body>
</html>
