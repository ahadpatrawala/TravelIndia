<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="destinations.aspx.cs" Inherits="TravelWebsite.destinations" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Destinations</title>
    <link href="css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
<link href="css/style.css" type="text/css" rel="stylesheet" media="all">
<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
<link type="text/css" rel="stylesheet" href="css/JFFormStyle-1.css" />
<!-- js -->
<script src="js/jquery.min.js"></script>
<script src="js/modernizr.custom.js"></script>
<!-- //js -->
<!-- fonts -->
<link href='http://localhost:4548/fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,700,500italic,700italic,900,900italic' rel='stylesheet' type='text/css'>
<link href='http://localhost:4548/fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
    <style type="text/css">
        .style1
        {
            left: 0px;
            top: -1px;
        }
        .style3
        {
            left: 10px;
            top: 0px;
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
                               
        <link href="css/style.css" rel='stylesheet' type='text/css' />
        <meta content="width=device-width, initial-scale=1" name="viewport">
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        </script>
        <script src="js/jquery.min.js"></script>
        <!---smoth-scrlling---->
        <script type="text/javascript">
            $(document).ready(function () {
                $('a[href^="#"]').on('click', function (e) {
                    e.preventDefault();
                    var target = this.hash,
									    $target = $(target);
                    $('html, body').stop().animate({
                        'scrollTop': $target.offset().top
                    }, 1000, 'swing', function () {
                        window.location.hash = target;
                    });
                });
            });
				</script>
        <!---//smoth-scrlling---->
        <style type="text/css">

.menuItem
{
border:Solid 1px black;
width:100px;
padding:2px;
background-color:#eeeeee;
}
.menuItem a
{
color:blue;
}

.IE8Fix
{
z-index: 1000;

}

            .style4
            {
                position: relative;
                left: 19px;
                top: 243px;
                width: 118px;
            }
            .style5
            {
                position: relative;
                left: 140px;
                top: 17px;
                width: 751px;
                margin-top: 0px;
            }

            .style6
            {
                position: relative;
                left: 1px;
                top: -175px;
                height: 277px;
                margin-top: 0px;
            }

            .style7
            {
                position: relative;
                left: -1px;
                top: 636px;
                padding: 2em 0;
                background: #F4F7F9;
            }

            .style8
            {
                position: relative;
                left: -28px;
                top: 225px;
            }

        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div class="header">
		<div class="container">
			<div class="header-grids">
								<div class="logo">
					<h1>
                        <asp:HyperLink ID="logohome" runat="server" NavigateUrl="~/index1.aspx" ForeColor="#0D2DC2"><span>Travel</span></asp:HyperLink>india</h1>
				</div>
				<!--navbar-header-->
				<div class="clearfix" style="margin-left: 920px">
                 <asp:Button ID="Logout" runat="server" Text="Logout"  BackColor="#0D2DC2" BorderColor="#0D2DC2" BorderStyle="Solid" ForeColor="White" Height="38px" Width="76px" OnClick="Logout_Click" />
                </div>
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

        <!-- banner -->
	<div class="banner holidays-banner">
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
						<h2>Book Domestic & International Holiday packages</h2>
					</div>
					<div id="horizontalTab" style="display: block; width: 100%; margin: 0px;">	
						  <!---->		  	 
									<div class="facts about-facts train-facts">
										<div class="booking-form train-form">
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
																	<li  class="span1_of_1 desti about-desti">
																		 <h5>Destination</h5>
																		 <div class="book_date">
																			 
																				<span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span>
                                                                             <asp:DropDownList ID="DropDownList1" class="typeahead1 input-md form-control tt-input" 
																			  runat="server" DataSourceID="SqlDataSource5" DataTextField="destination_name" DataValueField="destination_name" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"></asp:DropDownList>
																		        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:TravelTourismConnectionString2 %>" SelectCommand="SELECT [destination_name] FROM [citynames]"></asp:SqlDataSource>
                                                                             <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
																		 </div>					
																	 </li>
																</ul>
															</div>
															
															<div class="reservation">
																<ul>	
																	 <li class="span1_of_3">
																			<div class="date_btn">
																				
                                                                               <asp:Button ID="Button1" runat="server" Text="SEARCH" BackColor="#0D2DC2" 
                                    BorderColor="#0D2DC2" BorderStyle="Solid" ForeColor="White" Height="38px" Width="116px" />
																				
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
	<!-- //banner -->
       
        
<div class="style6">
<div align="left" class="style4">
    <asp:Menu ID="Menu1" runat="server" BackColor="White" ForeColor="#0D2DC2" 
        RenderingMode="List" StaticSubMenuIndent="16px" Font-Bold="False" 
        Font-Names="Rod">
    <Items>
    <asp:MenuItem Text="Mumbai" Selected="True"></asp:MenuItem>
    <asp:MenuItem Text="Shimla"></asp:MenuItem>
    <asp:MenuItem Text="Goa"></asp:MenuItem>
    <asp:MenuItem Text="Leh Ladakh"></asp:MenuItem>
    <asp:MenuItem Text="Jammu & Kashmir"></asp:MenuItem>
    <asp:MenuItem Text="Gangtok"></asp:MenuItem>
    <asp:MenuItem Text="Jaipur"></asp:MenuItem>
    <asp:MenuItem Text="Kerala"></asp:MenuItem>
    <asp:MenuItem Text="Agra"></asp:MenuItem>
    <asp:MenuItem Text="Nainital"></asp:MenuItem>
    </Items>
    </asp:Menu>
</div>
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div align="center" class="style5">
         <h4  style="font-family: 'Lato Heavy'; color: #0D2DC6; text-align: center; font-weight: bolder;">Introduction</h4>
        <div align="center">
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1" 
                    Font-Names="Lato">
                    <EditItemTemplate>
                        Introduction:
                        <asp:TextBox ID="IntroductionTextBox" runat="server" 
                            Text='<%# Bind("Introduction") %>' />
                        <br />
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                            CommandName="Update" Text="Update" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        Introduction:
                        <asp:TextBox ID="IntroductionTextBox" runat="server" 
                            Text='<%# Bind("Introduction") %>' />
                        <br />
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                            CommandName="Insert" Text="Insert" />
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="IntroductionLabel" runat="server" 
                            Text='<%# Bind("Introduction") %>' />
                        <br />
                    </ItemTemplate>
                </asp:FormView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:TravelTourismConnectionString %>" 
                    SelectCommand="SELECT [Introduction] FROM [location_details] WHERE ([location_name] = @location_name)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="Menu1" Name="location_name" 
                            PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </ContentTemplate>
            </asp:UpdatePanel>
        </div>
        <h4  style="font-family: 'Lato Heavy'; color: #0D2DC6; text-align: center; font-weight: bolder;">Places to Visit</h4>
        <div align="center">
     <asp:UpdatePanel ID="UpdatePanel2" runat="server">
            <ContentTemplate>
                <asp:FormView ID="FormView2" runat="server" DataSourceID="SqlDataSource2" 
                    Font-Names="Lato">
                    <EditItemTemplate>
                        Attractions:
                        <asp:TextBox ID="AttractionsTextBox" runat="server" 
                            Text='<%# Bind("Attractions") %>' />
                        <br />
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                            CommandName="Update" Text="Update" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        Attractions:
                        <asp:TextBox ID="AttractionsTextBox" runat="server" 
                            Text='<%# Bind("Attractions") %>' />
                        <br />
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                            CommandName="Insert" Text="Insert" />
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        &nbsp;<asp:Label ID="AttractionsLabel" runat="server" 
                            Text='<%# Bind("Attractions") %>' />
                        <br />
                    </ItemTemplate>
                </asp:FormView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:TravelTourismConnectionString %>" 
                    SelectCommand="SELECT [Attractions] FROM [location_details] WHERE ([location_name] = @location_name)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="Menu1" Name="location_name" 
                            PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </ContentTemplate>
            </asp:UpdatePanel>
        </div>
        <h4 style="font-family: 'Lato Heavy'; color: #0D2DC6; text-align: center; font-weight: bolder;">Best Time To Visit</h4>
         <div align="center">
         <asp:UpdatePanel ID="UpdatePanel3" runat="server">
            <ContentTemplate>
                <asp:FormView ID="FormView3" runat="server" DataSourceID="SqlDataSource3" 
                    Font-Names="Lato">
                    <EditItemTemplate>
                        timetovisit:
                        <asp:TextBox ID="timetovisitTextBox" runat="server" 
                            Text='<%# Bind("timetovisit") %>' />
                        <br />
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                            CommandName="Update" Text="Update" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        timetovisit:
                        <asp:TextBox ID="timetovisitTextBox" runat="server" 
                            Text='<%# Bind("timetovisit") %>' />
                        <br />
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                            CommandName="Insert" Text="Insert" />
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="timetovisitLabel" runat="server" 
                            Text='<%# Bind("timetovisit") %>' />
                        <br />
                    </ItemTemplate>
                </asp:FormView>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:TravelTourismConnectionString %>" 
                    SelectCommand="SELECT [timetovisit] FROM [location_details] WHERE ([location_name] = @location_name)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="Menu1" Name="location_name" 
                            PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </ContentTemplate>
            </asp:UpdatePanel>
         </div>
         <h4 style="font-family: 'Lato Heavy'; color: #0D2DC6; text-align: center; font-weight: bolder;">How to Reach</h4>
          <div align="center">
          <asp:UpdatePanel ID="UpdatePanel4" runat="server">
            <ContentTemplate>
                <asp:FormView ID="FormView4" runat="server" DataSourceID="SqlDataSource4" 
                    Font-Names="Lato">
                    <EditItemTemplate>
                        howtoreach:
                        <asp:TextBox ID="howtoreachTextBox" runat="server" 
                            Text='<%# Bind("howtoreach") %>' />
                        <br />
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                            CommandName="Update" Text="Update" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        howtoreach:
                        <asp:TextBox ID="howtoreachTextBox" runat="server" 
                            Text='<%# Bind("howtoreach") %>' />
                        <br />
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                            CommandName="Insert" Text="Insert" />
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="howtoreachLabel" runat="server" 
                            Text='<%# Bind("howtoreach") %>' />
                        <br />
                    </ItemTemplate>
                </asp:FormView>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:TravelTourismConnectionString %>" 
                    SelectCommand="SELECT [howtoreach] FROM [location_details] WHERE ([location_name] = @location_name)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="Menu1" Name="location_name" 
                            PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </ContentTemplate>
            </asp:UpdatePanel>
         </div>
         </div>
        
</div>
<div>
         <div class="style7">
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
						<h4 style="text-align: center">Follow Ustext-align: center">
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
