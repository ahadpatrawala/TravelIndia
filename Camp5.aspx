<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Camp5.aspx.cs" Inherits="TravelWebsite.Camp5" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
<link href='http://localhost:4548/fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,700,500italic,700italic,900,900italic' rel='stylesheet' type='text/css'>
<link href='http://localhost:4548/fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
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
        <div class="single-pg-hdr">
								<h2>Water Rafting</p>
								
							</div>
							
							
							<div class="flexslider">
											<ul class="slides">
												<li data-thumb="images/p1.jpg">
													<img src="images/p1.jpg" alt=""/>
												</li>
												<li data-thumb="images/p2.jpg">
													<img src="images/p2.jpg" alt=""/>
												</li>
												<li data-thumb="images/p3.jpg">
													<img src="images/p3.jpg" alt=""/>
												</li>
												<li data-thumb="images/p4.jpg">
													<img src="images/p4.jpg" alt=""/>
												</li>
												<li data-thumb="images/p1.jpg">
													<img src="images/p1.jpg" alt=""/>
												</li>
												<li data-thumb="images/p2.jpg">
													<img src="images/p2.jpg" alt=""/>
												</li>
												<li data-thumb="images/p3.jpg">
													<img src="images/p3.jpg" alt=""/>
												</li>
												<li data-thumb="images/p4.jpg">
													<img src="images/p4.jpg" alt=""/>
												</li>
												<li data-thumb="images/p1.jpg">
													<img src="images/p1.jpg" alt=""/>
												</li>
												<li data-thumb="images/p2.jpg">
													<img src="images/p2.jpg" alt=""/>
												</li>
												<li data-thumb="images/p3.jpg">
													<img src="images/p3.jpg" alt=""/>
												</li>
												<li data-thumb="images/p4.jpg">
													<img src="images/p4.jpg" alt=""/>
												</li>
												<li data-thumb="images/p1.jpg">
													<img src="images/p1.jpg" alt=""/>
												</li>
												<li data-thumb="images/p2.jpg">
													<img src="images/p2.jpg" alt=""/>
												</li>
												<li data-thumb="images/p3.jpg">
													<img src="images/p3.jpg" alt=""/>
												</li>
												<li data-thumb="images/p4.jpg">
													<img src="images/p4.jpg" alt=""/>
												</li>
												<li data-thumb="images/p1.jpg">
													<img src="images/p1.jpg" alt=""/>
												</li>
												<li data-thumb="images/p2.jpg">
													<img src="images/p2.jpg" alt=""/>
												</li>
												<li data-thumb="images/p3.jpg">
													<img src="images/p3.jpg" alt=""/>
												</li>
											</ul>
						
										<!-- FlexSlider -->
									<script defer src="js/jquery.flexslider.js"></script>
										<script>
										    // Can also be used with $(document).ready()
										    $(window).load(function () {
										        $('.flexslider').flexslider({
										            animation: "slide",
										            controlNav: "thumbnails"
										        });
										    });
										</script>

						</div>
        </div>
                        <div style="position: relative; top: -460px;  left: 405px; width: 661px; height: 64px;">
                                 <h4  style="font-family: 'Lato Heavy'; color: #0D2DC6; text-align: center; font-weight: bolder;">Introduction</h4>
              <div align="right">
                  <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1" Width="620px">
                      <EditItemTemplate>
                          description:
                          <asp:TextBox ID="descriptionTextBox" runat="server" Text='<%# Bind("description") %>' />
                          <br />
                          <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                          &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                      </EditItemTemplate>
                      <InsertItemTemplate>
                          description:
                          <asp:TextBox ID="descriptionTextBox" runat="server" Text='<%# Bind("description") %>' />
                          <br />
                          <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                          &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                      </InsertItemTemplate>
                      <ItemTemplate>
                          &nbsp;<asp:Label ID="descriptionLabel" runat="server" Text='<%# Bind("description") %>' />
                          <br />

                      </ItemTemplate>
                  </asp:FormView>
                   <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TravelTourismConnectionString2 %>" SelectCommand="SELECT [description] FROM [camp_details] WHERE ([c_id] = @c_id)">
                       <SelectParameters>
                           <asp:ControlParameter ControlID="FormView1" DefaultValue="10005" Name="c_id" PropertyName="SelectedValue" Type="Int64" />
                       </SelectParameters>
                  </asp:SqlDataSource>
                   </div>
             </div>
       <div style="position: relative; top: -340px;  left: 405px; width: 661px; height: 60px;">
         <h4  style="font-family: 'Lato Heavy'; color: #0D2DC6; text-align: center; font-weight: bolder;">Best Season</h4>
              <div align="right">
                  <asp:FormView ID="FormView2" runat="server" DataSourceID="SqlDataSource2" Width="620px">
                      <EditItemTemplate>
                          timetogo:
                          <asp:TextBox ID="timetogoTextBox" runat="server" Text='<%# Bind("timetogo") %>' />
                          <br />
                          <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                          &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                      </EditItemTemplate>
                      <InsertItemTemplate>
                          timetogo:
                          <asp:TextBox ID="timetogoTextBox" runat="server" Text='<%# Bind("timetogo") %>' />
                          <br />
                          <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                          &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                      </InsertItemTemplate>
                      <ItemTemplate>
                          &nbsp;<asp:Label ID="timetogoLabel" runat="server" Text='<%# Bind("timetogo") %>' />
                          <br />

                      </ItemTemplate>
                  </asp:FormView>
                  <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:TravelTourismConnectionString2 %>" SelectCommand="SELECT [timetogo] FROM [camp_details] WHERE ([c_id] = @c_id)">
                      <SelectParameters>
                          <asp:ControlParameter ControlID="FormView2" DefaultValue="10005" Name="c_id" PropertyName="SelectedValue" Type="Int64" />
                      </SelectParameters>
                  </asp:SqlDataSource>
              </div>
            </div>

                   <div style="position: relative; top: -300px;  left: 405px; width: 661px; height: 64px;">
         <h4  style="font-family: 'Lato Heavy'; color: #0D2DC6; text-align: center; font-weight: bolder;">Essentials To Carry</h4>
              <div align="right">
                  <asp:FormView ID="FormView3" runat="server" DataSourceID="SqlDataSource3" Width="620px">
                      <EditItemTemplate>
                          essentials:
                          <asp:TextBox ID="essentialsTextBox" runat="server" Text='<%# Bind("essentials") %>' />
                          <br />
                          <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                          &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                      </EditItemTemplate>
                      <InsertItemTemplate>
                          essentials:
                          <asp:TextBox ID="essentialsTextBox" runat="server" Text='<%# Bind("essentials") %>' />
                          <br />
                          <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                          &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                      </InsertItemTemplate>
                      <ItemTemplate>
                          &nbsp;<asp:Label ID="essentialsLabel" runat="server" Text='<%# Bind("essentials") %>' />
                          <br />

                      </ItemTemplate>
                  </asp:FormView>
                  <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:TravelTourismConnectionString2 %>" SelectCommand="SELECT [essentials] FROM [camp_details] WHERE ([c_id] = @c_id)">
                      <SelectParameters>
                          <asp:ControlParameter ControlID="FormView3" DefaultValue="10005" Name="c_id" PropertyName="SelectedValue" Type="Int64" />
                      </SelectParameters>
                  </asp:SqlDataSource>
              </div>
                       </div>

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
