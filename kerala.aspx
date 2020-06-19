<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="kerala.aspx.cs" Inherits="TravelWebsite.kerala" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Resorts</title>
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
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

<body>
    <form id="Form1" runat="server">
	<!--header-->
	<div class="header">
		<div class="container">
			<div class="header-grids">
				<div class="logo">
					<h1><a  href="index1.aspx" style="color: #0D2DC6"><span>Travel</span></a>india</h1>
				</div>
              

				</div>
              
				<!--navbar-header-->
				<div class="clearfix"> </div>
			</div>
			<div class="nav-top">
				<div class="top-nav">
					<span class="menu"><asp:Image ID="Image6" runat="server" ImageUrl="~/images/menu.png"></asp:Image></span>
					<ul class="nav1">
						<li class="active"><a href="index1.aspx">Home</a></li>
				<li><a href="destinations.aspx" >Destinations</a></li>
				<li><a href="Resorts.aspx">Resorts</a></li>
				<li><a href="FlightTicket.aspx">Tickets</a></li>
				<li><a href="Camp.aspx">Camp</a></li>
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
				
				<div class="clearfix"> </div>
			</div>
		</div>
	<!--//header-->
    
	<!-- banner-bottom -->
	
		<!-- container -->
		<div class="c-rooms">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<div class="p-table">
                    <asp:Label ID="Label1" runat="server" Text="Vedic Village Resort" ForeColor="#0D2DC2" Font-Bold="True" Font-Size="Large"></asp:Label>
					<div class="p-table-grids">
						<div class="col-md-3 p-table-grid">
							<div class="p-table-grad-heading">
								<h6>Resort Information</h6>
							</div>
							<div class="p-table-grid-info">
								<div class="room-basic-info">
                                <asp:Image ID="Image1" runat="server" ImageUrl="~/images/cliff-top-club-1.jpg"/>
                                   
								</div>
							</div>
						</div>
						<div class="col-md-3 p-table-grid">
							<div class="p-table-grad-heading">
								<h6>Features</h6>
							</div>
							<div class="rate-features">
                                <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1">
                                    <EditItemTemplate>
                                        basic_info:
                                        <asp:TextBox ID="basic_infoTextBox" runat="server" 
                                            Text='<%# Bind("basic_info") %>' />
                                        <br />
                                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                                            CommandName="Update" Text="Update" />
                                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                                            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                    </EditItemTemplate>
                                    <InsertItemTemplate>
                                        basic_info:
                                        <asp:TextBox ID="basic_infoTextBox" runat="server" 
                                            Text='<%# Bind("basic_info") %>' />
                                        <br />
                                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                                            CommandName="Insert" Text="Insert" />
                                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                                            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                    </InsertItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="basic_infoLabel" runat="server" 
                                            Text='<%# Bind("basic_info") %>' />
                                        <br />

                                    </ItemTemplate>
                                </asp:FormView>   
							    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:TravelTourismConnectionString2 %>" 
                                    SelectCommand="SELECT [basic_info] FROM [kerala] WHERE ([R_id] = @R_id)">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="FormView1" DefaultValue="1036" Name="R_id" 
                                            PropertyName="SelectedValue" Type="Int64" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
							</div>
						</div>
						<div class="col-md-3 p-table-grid">
							<div class="p-table-grad-heading">
								<h6>Cost</h6>
							</div>
							<div class="avg-rate">								
								<p>Price is now:</p>
								<span class="p-offer">
                                    <asp:FormView ID="FormView2" runat="server" DataSourceID="SqlDataSource2">
                                        <EditItemTemplate>
                                            price:
                                            <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
                                            <br />
                                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                                                CommandName="Update" Text="Update" />
                                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                                                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            price:
                                            <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
                                            <br />
                                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                                                CommandName="Insert" Text="Insert" />
                                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                                                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            &nbsp;<asp:Label ID="priceLabel" runat="server" Text='<%# Bind("price") %>' />
                                            <br />

                                        </ItemTemplate>
                                    </asp:FormView>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:TravelTourismConnectionString2 %>" 
                                    SelectCommand="SELECT [price] FROM [kerala] WHERE ([R_id] = @R_id)">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="FormView2" DefaultValue="1036" Name="R_id" 
                                            PropertyName="SelectedValue" Type="Int64" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                </span>
							</div>
						</div>
						<div class="col-md-3 p-table-grid">
							<div class="p-table-grad-heading">
								<h6>Book</h6>
							</div>
							<div class="book-button-column">
								<asp:Button ID="Button1" runat="server" Text="Book" BackColor="#0D2DC2" 
                                    BorderColor="#0D2DC2" BorderStyle="Solid" ForeColor="White" Height="38px" Width="76px" 
                                     />
							</div>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				
                <div class="p-table">
                 <asp:Label ID="Label4" runat="server" Text="Punnamada Backwater Resort Kerala" ForeColor="#0D2DC2" Font-Bold="True" Font-Size="Large"></asp:Label>
					<div class="p-table-grids">
						<div class="col-md-3 p-table-grid">
							<div class="p-table-grad-heading">
								<h6>Resort Information</h6>
							</div>
							<div class="p-table-grid-info">
                                <asp:Image ID="Image4" runat="server" ImageUrl="~/images/ClubMahindraManali.jpg"/>
								<div class="room-basic-info">
                                    
								</div>
							</div>
						</div>
						<div class="col-md-3 p-table-grid">
							<div class="p-table-grad-heading">
								<h6>Features</h6>
							</div>
							<div class="rate-features">
                                <asp:FormView ID="FormView3" runat="server" DataSourceID="SqlDataSource3">
                                    <EditItemTemplate>
                                        basic_info:
                                        <asp:TextBox ID="basic_infoTextBox" runat="server" 
                                            Text='<%# Bind("basic_info") %>' />
                                        <br />
                                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                                            CommandName="Update" Text="Update" />
                                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                                            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                    </EditItemTemplate>
                                    <InsertItemTemplate>
                                        basic_info:
                                        <asp:TextBox ID="basic_infoTextBox" runat="server" 
                                            Text='<%# Bind("basic_info") %>' />
                                        <br />
                                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                                            CommandName="Insert" Text="Insert" />
                                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                                            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                    </InsertItemTemplate>
                                    <ItemTemplate>
                                        &nbsp;<asp:Label ID="basic_infoLabel" runat="server" 
                                            Text='<%# Bind("basic_info") %>' />
                                        <br />

                                    </ItemTemplate>
                                </asp:FormView>  
							    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:TravelTourismConnectionString2 %>" 
                                    SelectCommand="SELECT [basic_info] FROM [kerala] WHERE ([R_id] = @R_id)">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="FormView3" DefaultValue="1037" Name="R_id" 
                                            PropertyName="SelectedValue" Type="Int64" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
							</div>
						</div>
						<div class="col-md-3 p-table-grid">
							<div class="p-table-grad-heading">
								<h6>Cost</h6>
							</div>
							<div class="avg-rate">								
								<p>Price is now:</p>
								<span class="p-offer">
                                    <asp:FormView ID="FormView4" runat="server" DataSourceID="SqlDataSource4">
                                        <EditItemTemplate>
                                            price:
                                            <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
                                            <br />
                                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                                                CommandName="Update" Text="Update" />
                                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                                                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            price:
                                            <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
                                            <br />
                                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                                                CommandName="Insert" Text="Insert" />
                                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                                                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            &nbsp;<asp:Label ID="priceLabel" runat="server" Text='<%# Bind("price") %>' />
                                            <br />

                                        </ItemTemplate>
                                    </asp:FormView>
                                <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:TravelTourismConnectionString2 %>" 
                                    SelectCommand="SELECT [price] FROM [kerala] WHERE ([R_id] = @R_id)">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="FormView4" DefaultValue="1037" Name="R_id" 
                                            PropertyName="SelectedValue" Type="Int64" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                </span>
							</div>
						</div>
						<div class="col-md-3 p-table-grid">
							<div class="p-table-grad-heading">
								<h6>Book</h6>
							</div>
							<div class="book-button-column">
								<asp:Button ID="Button4" runat="server" Text="Book"  BackColor="#0D2DC2" 
                                    BorderColor="#0D2DC2" BorderStyle="Solid" ForeColor="White" Height="38px" Width="76px" />
							</div>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <div class="p-table">
                 <asp:Label ID="Label6" runat="server" Text="Vsthiri resort" ForeColor="#0D2DC2" Font-Bold="True" Font-Size="Large"></asp:Label>
					<div class="p-table-grids">
						<div class="col-md-3 p-table-grid">
							<div class="p-table-grad-heading">
								<h6>Resort Information</h6>
							</div>
							<div class="p-table-grid-info">
                                <asp:Image ID="Image7" runat="server" ImageUrl="~/images/Golden Tusk.jpg"/>
								<div class="room-basic-info">
                                    
								</div>
							</div>
						</div>
						<div class="col-md-3 p-table-grid">
							<div class="p-table-grad-heading">
								<h6>Features</h6>
							</div>
							<div class="rate-features">
                                <asp:FormView ID="FormView5" runat="server" DataSourceID="SqlDataSource5">
                                    <EditItemTemplate>
                                        basic_info:
                                        <asp:TextBox ID="basic_infoTextBox" runat="server" 
                                            Text='<%# Bind("basic_info") %>' />
                                        <br />
                                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                                            CommandName="Update" Text="Update" />
                                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                                            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                    </EditItemTemplate>
                                    <InsertItemTemplate>
                                        basic_info:
                                        <asp:TextBox ID="basic_infoTextBox" runat="server" 
                                            Text='<%# Bind("basic_info") %>' />
                                        <br />
                                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                                            CommandName="Insert" Text="Insert" />
                                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                                            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                    </InsertItemTemplate>
                                    <ItemTemplate>
                                        &nbsp;<asp:Label ID="basic_infoLabel" runat="server" 
                                            Text='<%# Bind("basic_info") %>' />
                                        <br />

                                    </ItemTemplate>
                                </asp:FormView>
							    <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:TravelTourismConnectionString2 %>" 
                                    SelectCommand="SELECT [basic_info] FROM [kerala] WHERE ([R_id] = @R_id)">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="FormView5" DefaultValue="1038" Name="R_id" 
                                            PropertyName="SelectedValue" Type="Int64" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
							</div>
						</div>
						<div class="col-md-3 p-table-grid">
							<div class="p-table-grad-heading">
								<h6>Cost</h6>
							</div>
							<div class="avg-rate">								
								<p>Price is now:</p>
								<span class="p-offer">
                                    <asp:FormView ID="FormView6" runat="server" DataSourceID="SqlDataSource6">
                                        <EditItemTemplate>
                                            price:
                                            <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
                                            <br />
                                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                                                CommandName="Update" Text="Update" />
                                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                                                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            price:
                                            <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
                                            <br />
                                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                                                CommandName="Insert" Text="Insert" />
                                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                                                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="priceLabel" runat="server" Text='<%# Bind("price") %>' />
                                            <br />

                                        </ItemTemplate>
                                    </asp:FormView> 
                                <asp:SqlDataSource ID="SqlDataSource6" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:TravelTourismConnectionString2 %>" 
                                    SelectCommand="SELECT [price] FROM [kerala] WHERE ([R_id] = @R_id)">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="FormView6" DefaultValue="1038" Name="R_id" 
                                            PropertyName="SelectedValue" Type="Int64" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                </span>
							</div>
						</div>
						<div class="col-md-3 p-table-grid">
							<div class="p-table-grad-heading">
								<h6>Book</h6>
							</div>
							<div class="book-button-column">
								<asp:Button ID="Button6" runat="server" Text="Book" BackColor="#0D2DC2" 
                                    BorderColor="#0D2DC2" BorderStyle="Solid" ForeColor="White" Height="38px" Width="76px" />
							</div>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<div class="p-table">
                 <asp:Label ID="Label7" runat="server" Text="Fragrant Resort" ForeColor="#0D2DC2" Font-Bold="True" Font-Size="Large"></asp:Label>
					<div class="p-table-grids">
						<div class="col-md-3 p-table-grid">
							<div class="p-table-grad-heading">
								<h6>Resort Information</h6>
							</div>
							<div class="p-table-grid-info">
                                <asp:Image ID="Image8" runat="server" ImageUrl="~/images/AvalonMussorie.jpg"/>
								<div class="room-basic-info">
                                    
								</div>
							</div>
						</div>
						<div class="col-md-3 p-table-grid">
							<div class="p-table-grad-heading">
								<h6>Features</h6>
							</div>
							<div class="rate-features">
                                <asp:FormView ID="FormView7" runat="server" DataSourceID="SqlDataSource7">
                                    <EditItemTemplate>
                                        basic_info:
                                        <asp:TextBox ID="basic_infoTextBox" runat="server" 
                                            Text='<%# Bind("basic_info") %>' />
                                        <br />
                                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                                            CommandName="Update" Text="Update" />
                                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                                            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                    </EditItemTemplate>
                                    <InsertItemTemplate>
                                        basic_info:
                                        <asp:TextBox ID="basic_infoTextBox" runat="server" 
                                            Text='<%# Bind("basic_info") %>' />
                                        <br />
                                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                                            CommandName="Insert" Text="Insert" />
                                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                                            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                    </InsertItemTemplate>
                                    <ItemTemplate>
                                        &nbsp;<asp:Label ID="basic_infoLabel" runat="server" 
                                            Text='<%# Bind("basic_info") %>' />
                                        <br />

                                    </ItemTemplate>
                                </asp:FormView> 
							    <asp:SqlDataSource ID="SqlDataSource7" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:TravelTourismConnectionString2 %>" 
                                    SelectCommand="SELECT [basic_info] FROM [kerala] WHERE ([R_id] = @R_id)">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="FormView7" DefaultValue="1039" Name="R_id" 
                                            PropertyName="SelectedValue" Type="Int64" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
							</div>
						</div>
						<div class="col-md-3 p-table-grid">
							<div class="p-table-grad-heading">
								<h6>Cost</h6>
							</div>
							<div class="avg-rate">								
								<p>Price is now:</p>
								<span class="p-offer">
                                    <asp:FormView ID="FormView8" runat="server" DataSourceID="SqlDataSource8">
                                        <EditItemTemplate>
                                            price:
                                            <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
                                            <br />
                                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                                                CommandName="Update" Text="Update" />
                                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                                                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            price:
                                            <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
                                            <br />
                                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                                                CommandName="Insert" Text="Insert" />
                                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                                                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            &nbsp;<asp:Label ID="priceLabel" runat="server" Text='<%# Bind("price") %>' />
                                            <br />

                                        </ItemTemplate>
                                    </asp:FormView> 
                                <asp:SqlDataSource ID="SqlDataSource8" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:TravelTourismConnectionString2 %>" 
                                    SelectCommand="SELECT [price] FROM [kerala] WHERE ([R_id] = @R_id)">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="FormView8" DefaultValue="1039" Name="R_id" 
                                            PropertyName="SelectedValue" Type="Int64" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                </span>
							</div>
						</div>
						<div class="col-md-3 p-table-grid">
							<div class="p-table-grad-heading">
								<h6>Book</h6>
							</div>
							<div class="book-button-column">
								<asp:Button ID="Button7" runat="server" Text="Book"  BackColor="#0D2DC2" 
                                    BorderColor="#0D2DC2" BorderStyle="Solid" ForeColor="White" Height="38px" Width="76px" />
							</div>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<div class="p-table">
                 <asp:Label ID="Label8" runat="server" Text="Club Mahindra Thekkady" Font-Bold="True" Font-Size="Large" ForeColor="#0D2DC2"></asp:Label>
					<div class="p-table-grids">
						<div class="col-md-3 p-table-grid">
							<div class="p-table-grad-heading">
								<h6>Resort Information</h6>
							</div>
							<div class="p-table-grid-info">
                                <asp:Image ID="Image9" runat="server" ImageUrl="~/images/SterlingLonavala.jpg"/>
								<div class="room-basic-info">
                                    
								</div>
							</div>
						</div>
						<div class="col-md-3 p-table-grid">
							<div class="p-table-grad-heading">
								<h6>Features</h6>
							</div>
							<div class="rate-features">
                                <asp:FormView ID="FormView9" runat="server" DataSourceID="SqlDataSource9">
                                    <EditItemTemplate>
                                        basic_info:
                                        <asp:TextBox ID="basic_infoTextBox" runat="server" 
                                            Text='<%# Bind("basic_info") %>' />
                                        <br />
                                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                                            CommandName="Update" Text="Update" />
                                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                                            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                    </EditItemTemplate>
                                    <InsertItemTemplate>
                                        basic_info:
                                        <asp:TextBox ID="basic_infoTextBox" runat="server" 
                                            Text='<%# Bind("basic_info") %>' />
                                        <br />
                                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                                            CommandName="Insert" Text="Insert" />
                                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                                            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                    </InsertItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="basic_infoLabel" runat="server" 
                                            Text='<%# Bind("basic_info") %>' />
                                        <br />

                                    </ItemTemplate>
                                </asp:FormView>  
							    <asp:SqlDataSource ID="SqlDataSource9" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:TravelTourismConnectionString2 %>" 
                                    SelectCommand="SELECT [basic_info] FROM [kerala] WHERE ([R_id] = @R_id)">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="FormView9" DefaultValue="1040" Name="R_id" 
                                            PropertyName="SelectedValue" Type="Int64" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
							</div>
						</div>
						<div class="col-md-3 p-table-grid">
							<div class="p-table-grad-heading">
								<h6>Cost</h6>
							</div>
							<div class="avg-rate">								
								<p>Price is now:</p>
								<span class="p-offer">
                                    <asp:FormView ID="FormView10" runat="server" DataSourceID="SqlDataSource10">
                                        <EditItemTemplate>
                                            price:
                                            <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
                                            <br />
                                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                                                CommandName="Update" Text="Update" />
                                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                                                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            price:
                                            <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
                                            <br />
                                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                                                CommandName="Insert" Text="Insert" />
                                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                                                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="priceLabel" runat="server" Text='<%# Bind("price") %>' />
                                            <br />

                                        </ItemTemplate>
                                    </asp:FormView>
                                <asp:SqlDataSource ID="SqlDataSource10" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:TravelTourismConnectionString2 %>" 
                                    SelectCommand="SELECT [price] FROM [kerala] WHERE ([R_id] = @R_id)">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="FormView10" DefaultValue="1040" Name="R_id" 
                                            PropertyName="SelectedValue" Type="Int64" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                </span>
							</div>
						</div>
						<div class="col-md-3 p-table-grid">
							<div class="p-table-grad-heading">
								<h6>Book</h6>
							</div>
							<div class="book-button-column">
								<asp:Button ID="Button8" runat="server" Text="Book"  BackColor="#0D2DC2" 
                                    BorderColor="#0D2DC2" BorderStyle="Solid" ForeColor="White" Height="38px" Width="76px" />
							</div>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                
		<!-- //container -->
	<!-- //banner-bottom -->
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
