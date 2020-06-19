<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index1.aspx.cs" Inherits="TravelWebsite.index1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Travel</title>
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Govihar Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
	Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //Custom Theme files -->
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
<!--pop-up-->
<script src="js/menu_jquery.js"></script>
<!--//pop-up-->	

</head>
<body background="images/travel_HD (1).jpg"  >
	<!--header-->
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
                <li><asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Camp.aspx">Camp</asp:HyperLink></li>
                <div class="dropdown-grids">
						<div id="loginContainer" class="style1">
                         <asp:HyperLink ID="registerButton" runat="server" NavigateUrl="~/signup.aspx"><span>Register</span></asp:HyperLink>
						</div>
				</div>
                </ul>
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
				<div class="dropdown-grids">
						<div id="loginContainer" class="style1"><a href="#" id="loginButton"><span>Login</span></a>
							<div id="loginBox">                
								<form id="loginForm" runat="server">
									<div class="login-grids">
										<div class="login-grid-left">
											<fieldset id="body">
												<fieldset>
													 <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="txtUsr">Username:</asp:Label>
                                                     <asp:TextBox ID="txtUsr" runat="server"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Username" ControlToValidate="txtUsr" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
												</fieldset>
												<fieldset>
													<asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="txtPwd">Password:</asp:Label>
                                                    <asp:TextBox ID="txtPwd" runat="server" TextMode="Password"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter password" ControlToValidate="txtPwd" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                               </fieldset>
												<asp:Button ID="login" runat="server" Text="Login" OnClick="submit_click"/>												
											</fieldset>
											<span><asp:HyperLink runat="server" NavigateUrl="~/verifyuser.aspx" ID="forgotpass">Forgot Password?</asp:HyperLink></span>
												<div class="button-bottom">
													<p>New account? <a href="signup.aspx">Signup</a></p>
												</div>
											</div>
									</div>
								
							</div>
						</div>
				</div>
                
				<div class="clearfix"> </div>
			</div>
		</div>
	<!--//header-->
	<!-- banner -->
	<!-- container -->
    <div class="banner">
		<!-- container -->
		<div class="container">
			<div class="col-md-4 banner-left" style="width: 1080px">
				<section class="slider2">
					<div class="flexslider" style="width: 1150px">
						<ul class="slides" style="width: inherit">
							<li>
								<div class="slider-info">
									<asp:Image ID="Image22" runat="server" ImageUrl="~/images/banner5.jpg"></asp:Image>
								</div>
							</li>
							<li>
								<div class="slider-info">
									<asp:Image ID="Image23" runat="server" ImageUrl="~/images/tahiti.jpg"></asp:Image>
								</div>
							</li>
							<li>	
								<div class="slider-info">
									<asp:Image ID="Image24" runat="server" ImageUrl="~/images/hotairballoon.jpg"></asp:Image>
								</div>
							</li>
							<li>	
								<div class="slider-info">
									<asp:Image ID="Image25" runat="server" ImageUrl="~/images/bora.jpg"></asp:Image>
								</div>
							</li>
							<li>	
								<div class="slider-info">
									<asp:Image ID="Image26" runat="server" ImageUrl="~/images/slider1.jpg"></asp:Image>
								</div>
							</li>
						</ul>
					</div>
				</section>
				<!--FlexSlider-->
			</div>
			
			<div class="clearfix"> </div>
		</div>
		<!-- //container -->
	</div>  
    <div class="move-text">
		<div class="marquee" 
            style="font-family: 'Lato Light'; font-size: large; font-weight: bold; font-style: italic; color: #FFFFFF;">Welcome to Travelindia!!</div>
		<script type="text/javascript" src="js/jquery.marquee.min.js"></script>
        <script>
            $('.marquee').marquee({ pauseOnHover: true });
            //@ sourceURL=pen.js
		</script>
	</div>
	<!-- banner-bottom -->
		<!-- //container -->
	<!-- banner-bottom -->
	<div class="banner-bottom">
		<!-- container -->
        <div class="style2">
    <h4 style="font-family: 'Lato Heavy'; color: #0D2DC6; text-align: center; font-weight: bolder; font-size: x-large;">Super Saver Packages</h4>
            <p style="font-family: 'Lato Light'; color: #0D2DC6; text-align: center;">&nbsp;</p>
            <p style="font-family: 'Lato Light'; color: #0D2DC6; text-align: center;">&nbsp;</p>
            <asp:Image ID="Image1" runat="server" ImageUrl="~/images/andaman.jpg"/>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="Image2" runat="server" ImageUrl="~/images/Kashmir.4jpg.jpg" 
                ImageAlign="Middle"/>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="Image3" runat="server" ImageUrl="~/images/kerala2 - Copy.jpg"/>
            <br />
            <br />
            <asp:Image ID="Image4" runat="server" ImageUrl="~/images/goa3 - Copy.jpg"/>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="Imag15" runat="server" ImageUrl="~/images/Manali2 - Copy.jpg"/>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="Image28" runat="server" ImageUrl="~/images/lehl.jpg"/>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </div>
		<div class="container">
			<div class="banner-bottom-grids">
				<div class="col-md-4 banner-bottom-grid">
					<div class="destinations">
						 <ul>
							<li class="button"><a>Goa Popular Hotels</a>
								<li class="dropdown active">
										<div class="destinations-grid">
                                            <asp:Image ID="Image5" runat="server" ImageUrl="~/images/a1.jpg"/>
										</div>
										<div class="destinations-grid-info">
											<div class="destinations-hotel">Exotic Goa</div>
											<div class="destinations-star"><span class="glyphicon glyphicon-star" aria-hidden="true"></span><span class="glyphicon glyphicon-star" aria-hidden="true"></span><span class="glyphicon glyphicon-star" aria-hidden="true"></span></div>
											<div class="destinations-price">Rs 7,999</div>
											<div class="clearfix"> </div>
										</div>
									
								 </li>
							</li>
							<li class="button"><a>Hot Deal</a>
								<li class="dropdown">
										<div class="destinations-grid">
                                            <asp:Image ID="Image15" runat="server" ImageUrl="~/images/a3.jpg"/>
										</div>
										<div class="destinations-grid-info">
											<div class="destinations-hotel">Domestic Hotel Booking</div>
											<div class="destinations-star"><span class="glyphicon glyphicon-star" aria-hidden="true"></span><span class="glyphicon glyphicon-star" aria-hidden="true"></span><span class="glyphicon glyphicon-star" aria-hidden="true"></span><span class="glyphicon glyphicon-star" aria-hidden="true"></span></div>
											<div class="destinations-price">35% Instant Discount</div>
											<div class="clearfix"> </div>
										</div>
								 </li>
							</li>							
							<li class="button"><a>Special Offer</a>
								 <li class="dropdown">
										<div class="destinations-grid">
											 <asp:Image ID="Image27" runat="server" ImageUrl="~/images/b3.jpg"/>
										</div>
										<div class="destinations-grid-info">
											<div class="destinations-hotel">Best Price</div>
											<div class="destinations-star"><span class="glyphicon glyphicon-star" aria-hidden="true"></span><span class="glyphicon glyphicon-star" aria-hidden="true"></span><span class="glyphicon glyphicon-star" aria-hidden="true"></span></div>
											<div class="destinations-price">Flat 20% Off</div>
											<div class="clearfix"></div>
										</div>
								 </li>
							</li>
                            </ul>
					</div>
                    &nbsp;&nbsp;&nbsp;&nbsp;		                    			
				</div>
				<div class="col-md-4 banner-bottom-grid">
					
					<div class="top-destinations-grids">
						<div class="top-destinations-info">
							<h4 style="font-family: 'Lato Light'; color: #0D2DC6; text-align: center; font-weight: bold;">Top Destinations</h4>
						</div>
						<div class="top-destinations-bottom">
							<div class="td-grids">
								<div class="col-xs-3 td-left">
                                    <asp:Image ID="Image16" runat="server" ImageUrl="~/images/jami-masjid-delhi.jpg"/>
								</div>
								<div class="col-xs-7 td-middle">
									<a>
                                        <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1">
                                            <EditItemTemplate>
                                                Name:
                                                <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                                                <br />
                                                Description:
                                                <asp:TextBox ID="DescriptionTextBox" runat="server" 
                                                    Text='<%# Bind("Description") %>' />
                                                <br />
                                                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                                                    CommandName="Update" Text="Update" />
                                                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                                                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                            </EditItemTemplate>
                                            <InsertItemTemplate>
                                                Name:
                                                <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                                                <br />
                                                Description:
                                                <asp:TextBox ID="DescriptionTextBox" runat="server" 
                                                    Text='<%# Bind("Description") %>' />
                                                <br />
                                                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                                                    CommandName="Insert" Text="Insert" />
                                                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                                                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                            </InsertItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="NameLabel" runat="server" Text='<%# Bind("Name") %>' />
                                                <br />
                                                <asp:Label ID="DescriptionLabel" runat="server" 
                                                    Text='<%# Bind("Description") %>' />
                                                <br />
                                            </ItemTemplate>
                                        </asp:FormView>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:TravelTourismConnectionString %>" 
                                        SelectCommand="SELECT [Name], [Description] FROM [Topdestinations] WHERE ([Rank] = @Rank)">
                                        <SelectParameters>
                                            <asp:Parameter DefaultValue="1" Name="Rank" Type="Int32" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                    </a>
									<span class="glyphicon glyphicon-star" aria-hidden="true"></span> <span class="glyphicon glyphicon-star" aria-hidden="true"></span> <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
								</div>
								<div class="col-xs-2 td-right">
									<p>
                                        <asp:FormView ID="FormView2" runat="server" DataSourceID="SqlDataSource2">
                                            <EditItemTemplate>
                                                Price:
                                                <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
                                                <br />
                                                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                                                    CommandName="Update" Text="Update" />
                                                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                                                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                            </EditItemTemplate>
                                            <InsertItemTemplate>
                                                Price:
                                                <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
                                                <br />
                                                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                                                    CommandName="Insert" Text="Insert" />
                                                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                                                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                            </InsertItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="PriceLabel" runat="server" Text='<%# Bind("Price") %>' />
                                                <br />

                                            </ItemTemplate>
                                        </asp:FormView>
                                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:TravelTourismConnectionString %>" 
                                            SelectCommand="SELECT [Price] FROM [Topdestinations] WHERE ([Rank] = @Rank)">
                                            <SelectParameters>
                                                <asp:Parameter DefaultValue="1" Name="Rank" Type="Int32" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                    </p>
								</div>
								<div class="clearfix"> </div>
							</div>
							<div class="td-grids">
								<div class="col-xs-3 td-left">
								<asp:Image ID="Image17" runat="server" ImageUrl="~/images/colomb.jpg"/>
								</div>
								<div class="col-xs-7 td-middle">
									<a>
                                        <asp:FormView ID="FormView3" runat="server" DataSourceID="SqlDataSource3">
                                            <EditItemTemplate>
                                                Description:
                                                <asp:TextBox ID="DescriptionTextBox" runat="server" 
                                                    Text='<%# Bind("Description") %>' />
                                                <br />
                                                Name:
                                                <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                                                <br />
                                                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                                                    CommandName="Update" Text="Update" />
                                                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                                                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                            </EditItemTemplate>
                                            <InsertItemTemplate>
                                                Description:
                                                <asp:TextBox ID="DescriptionTextBox" runat="server" 
                                                    Text='<%# Bind("Description") %>' />
                                                <br />
                                                Name:
                                                <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                                                <br />
                                                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                                                    CommandName="Insert" Text="Insert" />
                                                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                                                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                            </InsertItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="DescriptionLabel" runat="server" 
                                                    Text='<%# Bind("Description") %>' />
                                                <br />
                                                <asp:Label ID="NameLabel" runat="server" Text='<%# Bind("Name") %>' />
                                                <br />
                                            </ItemTemplate>
                                        </asp:FormView>
                                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:TravelTourismConnectionString2 %>" 
                                        SelectCommand="SELECT [Description], [Name] FROM [Topdestinations] WHERE ([Rank] = @Rank)">
                                        <SelectParameters>
                                            <asp:Parameter DefaultValue="2" Name="Rank" Type="Int32" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                    </a>
									<span class="glyphicon glyphicon-star" aria-hidden="true"></span> <span class="glyphicon glyphicon-star" aria-hidden="true"></span> <span class="glyphicon glyphicon-star" aria-hidden="true"></span> <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
								</div>
								<div class="col-xs-2 td-right">
									<p>
                                        <asp:FormView ID="FormView4" runat="server" DataSourceID="SqlDataSource4">
                                            <EditItemTemplate>
                                                Price:
                                                <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
                                                <br />
                                                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                                                    CommandName="Update" Text="Update" />
                                                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                                                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                            </EditItemTemplate>
                                            <InsertItemTemplate>
                                                Price:
                                                <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
                                                <br />
                                                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                                                    CommandName="Insert" Text="Insert" />
                                                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                                                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                            </InsertItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="PriceLabel" runat="server" Text='<%# Bind("Price") %>' />
                                                <br />

                                            </ItemTemplate>
                                        </asp:FormView>
                                        <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:TravelTourismConnectionString2 %>" 
                                            SelectCommand="SELECT [Price] FROM [Topdestinations] WHERE ([Rank] = @Rank)">
                                            <SelectParameters>
                                                <asp:Parameter DefaultValue="2" Name="Rank" Type="Int32" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                    </p>
								</div>
								<div class="clearfix"> </div>
							</div>
							<div class="td-grids">
								<div class="col-xs-3 td-left">
                                    <asp:Image ID="Image18" runat="server" ImageUrl="~/images/jaipur1.jpg"/>
								</div>
								<div class="col-xs-7 td-middle">
									<a>
                                        <asp:FormView ID="FormView5" runat="server" DataSourceID="SqlDataSource5">
                                            <EditItemTemplate>
                                                Name:
                                                <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                                                <br />
                                                Description:
                                                <asp:TextBox ID="DescriptionTextBox" runat="server" 
                                                    Text='<%# Bind("Description") %>' />
                                                <br />
                                                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                                                    CommandName="Update" Text="Update" />
                                                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                                                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                            </EditItemTemplate>
                                            <InsertItemTemplate>
                                                Name:
                                                <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                                                <br />
                                                Description:
                                                <asp:TextBox ID="DescriptionTextBox" runat="server" 
                                                    Text='<%# Bind("Description") %>' />
                                                <br />
                                                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                                                    CommandName="Insert" Text="Insert" />
                                                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                                                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                            </InsertItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="NameLabel" runat="server" Text='<%# Bind("Name") %>' />
                                                <br />
                                                <asp:Label ID="DescriptionLabel" runat="server" 
                                                    Text='<%# Bind("Description") %>' />
                                                <br />

                                            </ItemTemplate>
                                        </asp:FormView>
                                    <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:TravelTourismConnectionString2 %>" 
                                        SelectCommand="SELECT [Name], [Description] FROM [Topdestinations] WHERE ([Rank] = @Rank)">
                                        <SelectParameters>
                                            <asp:Parameter DefaultValue="3" Name="Rank" Type="Int32" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                    </a>
									<span class="glyphicon glyphicon-star" aria-hidden="true"></span> <span class="glyphicon glyphicon-star" aria-hidden="true"></span> <span class="glyphicon glyphicon-star" aria-hidden="true"></span> <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
								</div>
								<div class="col-xs-2 td-right">
									<p>
                                        <asp:FormView ID="FormView6" runat="server" DataSourceID="SqlDataSource6">
                                            <EditItemTemplate>
                                                Price:
                                                <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
                                                <br />
                                                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                                                    CommandName="Update" Text="Update" />
                                                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                                                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                            </EditItemTemplate>
                                            <InsertItemTemplate>
                                                Price:
                                                <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
                                                <br />
                                                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                                                    CommandName="Insert" Text="Insert" />
                                                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                                                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                            </InsertItemTemplate>
                                            <ItemTemplate>
                                                &nbsp;<asp:Label ID="PriceLabel" runat="server" Text='<%# Bind("Price") %>' />
                                                <br />

                                            </ItemTemplate>
                                        </asp:FormView>
                                        <asp:SqlDataSource ID="SqlDataSource6" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:TravelTourismConnectionString2 %>" 
                                            SelectCommand="SELECT [Price] FROM [Topdestinations] WHERE ([Rank] = @Rank)">
                                            <SelectParameters>
                                                <asp:Parameter DefaultValue="3" Name="Rank" Type="Int32" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                    </p>
								</div>
								<div class="clearfix"> </div>
							</div>
							<div class="td-grids">
								<div class="col-xs-3 td-left">
                                    <asp:Image ID="Image19" runat="server" ImageUrl="~/images/mumbai (1).jpg"/>
								</div>
								<div class="col-xs-7 td-middle">
									<a>
                                        <asp:FormView ID="FormView7" runat="server" DataSourceID="SqlDataSource7">
                                            <EditItemTemplate>
                                                Name:
                                                <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                                                <br />
                                                Description:
                                                <asp:TextBox ID="DescriptionTextBox" runat="server" 
                                                    Text='<%# Bind("Description") %>' />
                                                <br />
                                                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                                                    CommandName="Update" Text="Update" />
                                                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                                                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                            </EditItemTemplate>
                                            <InsertItemTemplate>
                                                Name:
                                                <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                                                <br />
                                                Description:
                                                <asp:TextBox ID="DescriptionTextBox" runat="server" 
                                                    Text='<%# Bind("Description") %>' />
                                                <br />
                                                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                                                    CommandName="Insert" Text="Insert" />
                                                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                                                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                            </InsertItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="NameLabel" runat="server" Text='<%# Bind("Name") %>' />
                                                <br />
                                                <asp:Label ID="DescriptionLabel" runat="server" 
                                                    Text='<%# Bind("Description") %>' />
                                                <br />
                                            </ItemTemplate>
                                        </asp:FormView>
                                    <asp:SqlDataSource ID="SqlDataSource7" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:TravelTourismConnectionString %>" 
                                        SelectCommand="SELECT [Name], [Description] FROM [Topdestinations] WHERE ([Rank] = @Rank)">
                                        <SelectParameters>
                                            <asp:Parameter DefaultValue="4" Name="Rank" Type="Int32" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                    </a>
									<span class="glyphicon glyphicon-star" aria-hidden="true"></span> <span class="glyphicon glyphicon-star" aria-hidden="true"></span> <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
								</div>
								<div class="col-xs-2 td-right">
									<p>
                                        <asp:FormView ID="FormView8" runat="server" DataSourceID="SqlDataSource8">
                                            <EditItemTemplate>
                                                Price:
                                                <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
                                                <br />
                                                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                                                    CommandName="Update" Text="Update" />
                                                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                                                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                            </EditItemTemplate>
                                            <InsertItemTemplate>
                                                Price:
                                                <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
                                                <br />
                                                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                                                    CommandName="Insert" Text="Insert" />
                                                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                                                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                            </InsertItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="PriceLabel" runat="server" Text='<%# Bind("Price") %>' />
                                                <br />

                                            </ItemTemplate>
                                        </asp:FormView>
                                        <asp:SqlDataSource ID="SqlDataSource8" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:TravelTourismConnectionString %>" 
                                            SelectCommand="SELECT [Price] FROM [Topdestinations] WHERE ([Rank] = @Rank)">
                                            <SelectParameters>
                                                <asp:Parameter DefaultValue="4" Name="Rank" Type="Int32" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                    </p>
								</div>
								<div class="clearfix"> </div>
							</div>
                            <div class="td-grids">
								<div class="col-xs-3 td-left">
                                    <asp:Image ID="Image20" runat="server" ImageUrl="~/images/pune (1).jpg"/>
								</div>
								<div class="col-xs-7 td-middle">
									<a>
                                        <asp:FormView ID="FormView9" runat="server" DataSourceID="SqlDataSource9">
                                            <EditItemTemplate>
                                                Name:
                                                <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                                                <br />
                                                Description:
                                                <asp:TextBox ID="DescriptionTextBox" runat="server" 
                                                    Text='<%# Bind("Description") %>' />
                                                <br />
                                                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                                                    CommandName="Update" Text="Update" />
                                                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                                                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                            </EditItemTemplate>
                                            <InsertItemTemplate>
                                                Name:
                                                <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                                                <br />
                                                Description:
                                                <asp:TextBox ID="DescriptionTextBox" runat="server" 
                                                    Text='<%# Bind("Description") %>' />
                                                <br />
                                                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                                                    CommandName="Insert" Text="Insert" />
                                                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                                                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                            </InsertItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="NameLabel" runat="server" Text='<%# Bind("Name") %>' />
                                                <br />
                                                <asp:Label ID="DescriptionLabel" runat="server" 
                                                    Text='<%# Bind("Description") %>' />
                                                <br />
                                            </ItemTemplate>
                                        </asp:FormView>
                                    <asp:SqlDataSource ID="SqlDataSource9" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:TravelTourismConnectionString %>" 
                                        SelectCommand="SELECT [Name], [Description] FROM [Topdestinations] WHERE ([Rank] = @Rank)">
                                        <SelectParameters>
                                            <asp:Parameter DefaultValue="5" Name="Rank" Type="Int32" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                    </a>
									<span class="glyphicon glyphicon-star" aria-hidden="true"></span> <span class="glyphicon glyphicon-star" aria-hidden="true"></span> <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
								</div>
								<div class="col-xs-2 td-right">
									<p>
                                        <asp:FormView ID="FormView10" runat="server" DataSourceID="SqlDataSource10">
                                            <EditItemTemplate>
                                                Price:
                                                <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
                                                <br />
                                                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                                                    CommandName="Update" Text="Update" />
                                                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                                                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                            </EditItemTemplate>
                                            <InsertItemTemplate>
                                                Price:
                                                <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
                                                <br />
                                                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                                                    CommandName="Insert" Text="Insert" />
                                                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                                                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                            </InsertItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="PriceLabel" runat="server" Text='<%# Bind("Price") %>' />
                                                <br />

                                            </ItemTemplate>
                                        </asp:FormView>
                                        <asp:SqlDataSource ID="SqlDataSource10" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:TravelTourismConnectionString %>" 
                                            SelectCommand="SELECT [Price] FROM [Topdestinations] WHERE ([Rank] = @Rank)">
                                            <SelectParameters>
                                                <asp:Parameter DefaultValue="5" Name="Rank" Type="Int32" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                    </p>
								</div>
								<div class="clearfix"> </div>
							</div>
						</div>
					</div>
					
                    				
				</div>
				<div class="col-md-4 banner-bottom-grid">
					<div class="banner-bottom-middle">
						<a>
                            <asp:Image ID="Image21" runat="server" ImageUrl="~/images/jaipur2.jpg"/>
							<div class="destinations-grid-info tours">
								<h5>
                                    <asp:FormView ID="FormView11" runat="server" DataSourceID="SqlDataSource11">
                                        <EditItemTemplate>
                                            Heading:
                                            <asp:TextBox ID="HeadingTextBox" runat="server" Text='<%# Bind("Heading") %>' />
                                            <br />
                                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                                                CommandName="Update" Text="Update" />
                                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                                                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            Heading:
                                            <asp:TextBox ID="HeadingTextBox" runat="server" Text='<%# Bind("Heading") %>' />
                                            <br />
                                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                                                CommandName="Insert" Text="Insert" />
                                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                                                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="HeadingLabel" runat="server" Text='<%# Bind("Heading") %>' />
                                            <br />

                                        </ItemTemplate>
                                    </asp:FormView>
                                    <asp:SqlDataSource ID="SqlDataSource11" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:TravelTourismConnectionString %>" 
                                        SelectCommand="SELECT [Heading] FROM [DestinationBanner]">
                                    </asp:SqlDataSource>
                                </h5>
								<p class="b-period">
                                    <asp:FormView ID="FormView12" runat="server" DataSourceID="SqlDataSource12">
                                        <EditItemTemplate>
                                            Description:
                                            <asp:TextBox ID="DescriptionTextBox" runat="server" 
                                                Text='<%# Bind("Description") %>' />
                                            <br />
                                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                                                CommandName="Update" Text="Update" />
                                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                                                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            Description:
                                            <asp:TextBox ID="DescriptionTextBox" runat="server" 
                                                Text='<%# Bind("Description") %>' />
                                            <br />
                                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                                                CommandName="Insert" Text="Insert" />
                                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                                                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="DescriptionLabel" runat="server" 
                                                Text='<%# Bind("Description") %>' />
                                            <br />

                                        </ItemTemplate>
                                    </asp:FormView>
                                    <asp:SqlDataSource ID="SqlDataSource12" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:TravelTourismConnectionString %>" 
                                        SelectCommand="SELECT [Description] FROM [DestinationBanner]">
                                    </asp:SqlDataSource>
                                </p>
							</div>
						</a>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
		<!-- //container -->
	</div>
	<!-- //banner-bottom -->

	<!-- popular-grids -->
	<div class="popular-grids">
		<!-- container -->
		<div class="container">
			<div class="popular-info">
				<h3>Popular Places</h3>
			</div>
			<!-- slider -->
			<div class="slider">
				<div class="arrival-grids">			 
					 <ul id="flexiselDemo1">
						 <li>
                             <asp:Image ID="Image7" runat="server" ImageUrl="~/images/goa.jpg"/>
						 </li>
						 <li>
                             <asp:Image ID="Image8" runat="server" ImageUrl="~/images/srinagar.jpg"/>
						 </li>
						 <li>
                             <asp:Image ID="Image9" runat="server" ImageUrl="~/images/darjeeling.jpg"/>							 
						 </li>
						 <li>
                             <asp:Image ID="Image10" runat="server" ImageUrl="~/images/delhi.jpg"/>
						 </li>
                         <li>
                             <asp:Image ID="Image11" runat="server" ImageUrl="~/images/jaipur.jpg"/>
						 </li>
                         <li>
                             <asp:Image ID="Image12" runat="server" ImageUrl="~/images/kerala.png"/>
						 </li>
                         <li>
                             <asp:Image ID="Image13" runat="server" ImageUrl="~/images/mumbai.jpg"/>
						 </li>
                         <li>
                             <asp:Image ID="Image14" runat="server" ImageUrl="~/images/Shimla.jpg"/>
						 </li>
						</ul>
						<script type="text/javascript">
						    $(window).load(function () {
						        $("#flexiselDemo1").flexisel({
						            visibleItems: 4,
						            animationSpeed: 1000,
						            autoPlay: true,
						            autoPlaySpeed: 3000,
						            pauseOnHover: true,
						            enableResponsiveBreakpoints: true,
						            responsiveBreakpoints: {
						                portrait: {
						                    changePoint: 480,
						                    visibleItems: 1
						                },
						                landscape: {
						                    changePoint: 640,
						                    visibleItems: 2
						                },
						                tablet: {
						                    changePoint: 768,
						                    visibleItems: 3
						                }
						            }
						        });
						    });
						</script>
						<script type="text/javascript" src="js/jquery.flexisel.js"></script>			 
				</div>
			</div>
			<!-- //slider -->
		</div>
		<!-- //container -->
	</div>
	<!-- popular-grids -->
	<!-- footer -->
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
								<li><a href="https://www.facebook.com/Travel-India-Web-468181213376342/" class="facebook"> </a></li>
								<li><a href="" class="facebook twitter"> </a></li>
								
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