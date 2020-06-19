<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TravelWebsite.Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Login</title>
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
        .style1
        {
            left: 0px;
            top: -1px;
        }
        .style2
        {
            margin-left: 40px;
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
<body background="images/travel_HD (1).jpg"  >
<form runat="server" id="form1">
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

    <div class="banner-bottom">
		<!-- container -->
		<div class="container">
			<div class="faqs-top-grids">
				<div class="book-grids">
					<div class="col-md-6 book-left">
						<div class="book-left-info">
							<h3>Book Tickets/Holidays by signing in</h3>
						</div>
						<div class="book-left-form">
                          <fieldset>
													 <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="txtUsr">Username:</asp:Label>
                                                     <asp:TextBox ID="txtUsr" runat="server"></asp:TextBox>
												</fieldset>
												<fieldset>
													<asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="txtPwd">Password:</asp:Label>
                                                    <asp:TextBox ID="txtPwd" runat="server" TextMode="Password"></asp:TextBox>
                                                    <asp:Label ID="TypeLabel" runat="server" AssociatedControlID="rbttype">Select Type:</asp:Label>
												    <asp:RadioButtonList ID="rbttype" runat="server" RepeatDirection="Horizontal">
                                                    <asp:ListItem>Admin</asp:ListItem>
                                                    <asp:ListItem>User</asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </fieldset>
												<asp:Button ID="login" runat="server" Text="Login" onclick="login_Click"/>												
											<asp:HyperLink runat="server" NavigateUrl="~/verifyuser.aspx" ID="forgotpass">Forgot Password?</asp:HyperLink>
						</div>
						
					</div>
					<div class="col-md-6 book-left book-right">
						<div class="col-md-4 banner-left" style="width: 550px; height: 700px;" >
				<section class="slider2">
					<div class="flexslider">
						<ul class="slides">
							<li>
								<div class="slider-info">
									<asp:Image ID="Image1" runat="server" ImageUrl="~/images/andaman1.jpg"></asp:Image>
								</div>
							</li>
							<li>
								<div class="slider-info">
									<asp:Image ID="Image2" runat="server" ImageUrl="~/images/goa1.jpg"></asp:Image>
								</div>
							</li>
							<li>	
								<div class="slider-info">
									<asp:Image ID="Image3" runat="server" ImageUrl="~/images/Kashmir1.jpg"></asp:Image>
								</div>
							</li>
							<li>	
								<div class="slider-info">
									<asp:Image ID="Image4" runat="server" ImageUrl="~/images/Kerala1.jpg"></asp:Image>									
								</div>
							</li>
							<li>	
								<div class="slider-info">
									<asp:Image ID="Image5" runat="server" ImageUrl="~/images/manali.jpg"></asp:Image>									
								</div>
							</li>
						</ul>
					</div>
				</section>
				<!--FlexSlider-->
                <div>
                	<ul style="text-align: center"  >
							<li style="font-family: 'Lato Light'; color: #0D2DC2; font-size: larger; font-weight: bold">Book hotel accommodations</li>
							<li style="font-family: 'Lato Light'; color: #0D2DC2; font-size: larger; font-weight: bold">View ticket availability</li>
							<li style="font-family: 'Lato Light'; color: #0D2DC2; font-size: larger; font-weight: bold">Go on adventure camps</li>
							<li style="font-family: 'Lato Light'; color: #0D2DC2; font-size: larger; font-weight: bold">Enter your contact details only once</li>
							<li style="font-family: 'Lato Light'; color: #0D2DC2; font-size: larger; font-weight: bold">Travel india at low fares</li>
						</ul>
                        </div>
			</div>
					</div>
					<div class="clearfix"> </div>

				</div>

			</div>

		</div>
		<!-- //container -->
	</div>
     <div class="footer">
		<!-- container -->
		<div class="container">
			<div class="footer-top-grids">
				<div class="footer-grids">
					<div class="col-md-3 footer-grid">
                    <h4>Our Products</h4><ul>
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
    </form>		
</body>
</html>
