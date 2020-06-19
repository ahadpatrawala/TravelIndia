﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Booking.aspx.cs" Inherits="TravelWebsite.Booking" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Booking</title>
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
<body background="images/travel_HD (1).jpg"  >
<form id="form1" runat="server">
<div class="header">
		<div class="container">
			<div class="header-grids">
								<div class="logo">
					<h1>
                        <asp:HyperLink ID="logohome" runat="server" NavigateUrl="~/index1.aspx" ForeColor="#0D2DC2"><span>Travel</span></asp:HyperLink>india</h1>
				</div>
              
				<!--navbar-header-->
				<div class="clearfix" style="margin-left: 920px"><asp:Button ID="Logout" runat="server" Text="Logout"  BackColor="#0D2DC2" BorderColor="#0D2DC2" BorderStyle="Solid" ForeColor="White" Height="38px" Width="76px" OnClick="Logout_Click" /></div>
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
                     <asp:HyperLink ID="HyperLink6" runat="server" ForeColor="#0D2DC2" Font-Size="Medium" NavigateUrl="~/Changepassword.aspx">Change Password</asp:HyperLink>
                <asp:Label ID="Label2" runat="server" Text=""  ForeColor="#0D2DC2" Font-Size="Large"></asp:Label>
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
        <div>
        <div class="banner bus-banner">
		<!-- container -->
		<div class="container">
			<div class="col-md-4 banner-left">
				<section class="slider2">
					<div class="flexslider">
						<ul class="slides">
							<li>
								<div class="slider-info">
									<img src="images/5.jpg" alt="">
								</div>
							</li>
							<li>
								<div class="slider-info">
									<img src="images/6.jpg" alt="">
								</div>
							</li>
							<li>	
								<div class="slider-info">
									<img src="images/7.jpg" alt="">
								</div>
							</li>
							<li>	
								<div class="slider-info">
									<img src="images/8.jpg" alt="">
								</div>
							</li>
							<li>	
								<div class="slider-info">
									<img src="images/6.jpg" alt="">
								</div>
							</li>
						</ul>
					</div>
				</section>
				<!--FlexSlider-->
               
			</div>
			<div class="col-md-8 banner-right">
				<div class="sap_tabs">	
					<div class="booking-info about-booking-info">
						<h2>Book Online</h2>
					</div>
					<div id="horizontalTab" style="display: block; width: 100%; margin: 0px;">	
						  <!---->		  	 
									<div class="facts about-facts">
										<div class="booking-form">
										<link rel="stylesheet" href="css/jquery-ui.css" />
											<!---strat-date-piker---->
											<script>
											    $(function () {
											        $("#datepicker,#datepicker1").datepicker();
											    });
											</script>
											<!---/End-date-piker---->
											<!-- Set here the key for your domain in order to hide the watermark on the web server -->
											
											<div class="online_reservation">
												<div class="b_room">
															<div class="booking_room">
																<div class="reservation">
																	<ul>		
																		 <div class="clearfix"></div>
																	</ul>
																</div>
																<div class="reservation">
																	<ul>	
																		 <li  class="span1_of_1">
																			 <h5>Start Date:</h5>
																			 <div class="book_date">		
																				<span class="glyphicon glyphicon-calendar" aria-hidden="true"></span>
                                                                             <asp:TextBox ID="txtstart" runat="server" TextMode="Date"></asp:TextBox>
																			
																			 </div>		
																		 </li>
                                                                          <li  class="span1_of_1">
																			 <h5>End Date:</h5>
																			 <div class="book_date">
																				<span class="glyphicon glyphicon-calendar" aria-hidden="true"></span>
                                                                             <asp:TextBox ID="txtend" runat="server" TextMode="Date"></asp:TextBox>
																			 </div>		
																		 </li>
                                                                         <asp:CompareValidator ID="cmpVal1" ControlToCompare="txtstart" ControlToValidate="txtend" Type="Date" Operator="GreaterThanEqual"  ErrorMessage="End Date should be greater than Start Date" runat="server" ForeColor="Red"></asp:CompareValidator>
																		 <li class="span1_of_1 left">
																			 <h5>Adults</h5>
																			 <!----------start section_room----------->
																			 <div class="section_room">
                                                                                 <asp:DropDownList ID="drpadult" runat="server">
                                                                                 <asp:ListItem Text="1"></asp:ListItem>
                                                                                 <asp:ListItem Text="2"></asp:ListItem>
                                                                                 <asp:ListItem Text="3"></asp:ListItem>
                                                                                 <asp:ListItem Text="4"></asp:ListItem>
                                                                                 <asp:ListItem Text="5"></asp:ListItem>
                                                                                 <asp:ListItem Text="6"></asp:ListItem>
                                                                                 </asp:DropDownList> 
																			 </div>	
																		</li>
																		<li class="span1_of_1 left">
																			 <h5>Children (0-10)</h5>
																			 <!----------start section_room----------->
																			 <div class="section_room">
																				 <asp:DropDownList ID="drpchild" runat="server">
                                                                                 <asp:ListItem Text="0"></asp:ListItem>
                                                                                 <asp:ListItem Text="1"></asp:ListItem>
                                                                                 <asp:ListItem Text="2"></asp:ListItem>
                                                                                 <asp:ListItem Text="3"></asp:ListItem>
                                                                                 <asp:ListItem Text="4"></asp:ListItem>
                                                                                 <asp:ListItem Text="5"></asp:ListItem>
                                                                                 </asp:DropDownList> 
																			 </div>	
																		</li>
                                                                        																		<li class="span1_of_1 left">
																			 <h5>Rooms</h5>
																			 <!----------start section_room----------->
																			 <div class="section_room">
																				 <asp:DropDownList ID="drprooms" runat="server">
                                                                                 <asp:ListItem Text="1"></asp:ListItem>
                                                                                 <asp:ListItem Text="2"></asp:ListItem>
                                                                                 <asp:ListItem Text="3"></asp:ListItem>
                                                                                 <asp:ListItem Text="4"></asp:ListItem>
                                                                                 <asp:ListItem Text="5"></asp:ListItem>
                                                                                 <asp:ListItem Text="6"></asp:ListItem>
                                                                                 </asp:DropDownList> 
																			 </div>	
																		</li>
																		 <div class="clearfix"></div>
																	</ul>
																</div>
																<div class="reservation">
																	<ul>	
																		 <li class="span1_of_3">
																				<div class="date_btn">
																					
                                                                                    <asp:Button ID="Button1" runat="server" Text="Book" BackColor="#0D2DC2" 
                                    BorderColor="#0D2DC2" BorderStyle="Solid" ForeColor="White" Height="38px" Width="76px" onclick="Button1_Click" />
																				</div>
																		 </li>
																		 <div class="clearfix"></div>
																	</ul>
																</div>
															</div>
															<div class="clearfix"></div>
												</div>
											</div>
											<!---->
										</div>	
									</div>
					</div>	
				</div>
			</div>
			<div class="clearfix"> </div>
		</div>
		<!-- //container -->
	</div>
        </div>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label1" runat="server" Text="" ForeColor="Red" Font-Size="Larger" Font-Names="Lato"></asp:Label>
&nbsp;<div class="footer">
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
