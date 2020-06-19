<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Resorts.aspx.cs" Inherits="TravelWebsite.Resorts" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
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
<body background="images/travel_HD (1).jpg"  >
<form runat="server">
	<!--header-->
	<div class="header">
		<div class="container">
			<div class="header-grids">
								<div class="logo">
					<h1>
                        <asp:HyperLink ID="logohome" runat="server" NavigateUrl="~/index1.aspx" ForeColor="#0D2DC2"><span>Travel</span></asp:HyperLink>india</h1>
				</div>
              
				<!--navbar-header-->
				<div class="clearfix" style="margin-left: 880px"> 
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
	<!--//header-->
    
	<!-- banner-bottom -->
	
		<!-- container -->
		<div class="c-rooms">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<div class="p-table">
                    <asp:Label ID="Label1" runat="server" Text="Clifftop Club" ForeColor="#0D2DC2" Font-Bold="True" Font-Size="Large"></asp:Label>
					<div class="p-table-grids">
						<div class="col-md-3 p-table-grid">
							<div class="p-table-grad-heading">
								<h6>Resort Information</h6>
							</div>
							<div class="p-table-grid-info">
								<div class="room-basic-info">
                                <asp:Image ID="Image1" runat="server" ImageUrl="~/images/cliff-top-club-1.jpg"/>
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
                                        ConnectionString="<%$ ConnectionStrings:TravelTourismConnectionString %>" 
                                        SelectCommand="SELECT [basic_info] FROM [resort_details] WHERE ([resort_name] = @resort_name)">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="Label1" Name="resort_name" PropertyName="Text" 
                                                Type="String" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
								</div>
							</div>
						</div>
						<div class="col-md-3 p-table-grid">
							<div class="p-table-grad-heading">
								<h6>Features</h6>
							</div>
							<div class="rate-features">
                                <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource2">
                                    <AlternatingItemTemplate>
                                        <li style="">
                                            <asp:Label ID="featuresLabel" runat="server" Text='<%# Eval("features") %>' />
                                            <br />
                                        </li>
                                        </li>
                                    </AlternatingItemTemplate>
                                    <EditItemTemplate>
                                        <li style="">&nbsp;<asp:TextBox ID="featuresTextBox" runat="server" 
                                                Text='<%# Bind("features") %>' />
                                            <br />
                                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                                                Text="Update" />
                                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                                                Text="Cancel" />
                                        </li>
                                    </EditItemTemplate>
                                    <EmptyDataTemplate>
                                        No data was returned.
                                    </EmptyDataTemplate>
                                    <InsertItemTemplate>
                                        <li style="">&nbsp;<asp:TextBox ID="featuresTextBox" runat="server" 
                                                Text='<%# Bind("features") %>' />
                                            <br />
                                            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                                                Text="Insert" />
                                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                                                Text="Clear" />
                                        </li>
                                    </InsertItemTemplate>
                                    <ItemSeparatorTemplate>
<br />
                                    </ItemSeparatorTemplate>
                                    <ItemTemplate>
                                        <li style="">
                                            <asp:Label ID="featuresLabel" runat="server" Text='<%# Eval("features") %>' />
                                            <br />
                                        </li>
                                    </ItemTemplate>
                                    <LayoutTemplate>
                                        <ul ID="itemPlaceholderContainer" runat="server" style="">
                                            <li runat="server" id="itemPlaceholder" /></li>
                                        </ul>
                                        <div style="">
                                        </div>
                                    </LayoutTemplate>
                                    <SelectedItemTemplate>
                                        <li style="">
                                            <asp:Label ID="featuresLabel" runat="server" Text='<%# Eval("features") %>' />
                                            <br />
                                        </li>
                                    </SelectedItemTemplate>
                                </asp:ListView>
							    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:TravelTourismConnectionString %>" 
                                    SelectCommand="SELECT [features] FROM [resort_details]">
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
                                    <asp:FormView ID="FormView2" runat="server" DataSourceID="SqlDataSource3">
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
                                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:TravelTourismConnectionString %>" 
                                    SelectCommand="SELECT [price] FROM [resort_details] WHERE ([resort_name] = @resort_name)">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="Label1" Name="resort_name" PropertyName="Text" 
                                            Type="String" />
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
								<asp:Button ID="Button2" runat="server" Text="Book" BackColor="#0D2DC2" 
                                    BorderColor="#0D2DC2" BorderStyle="Solid" ForeColor="White" Height="38px" Width="76px" 
                                    onclick="Button2_Click" />
							</div>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<div class="p-table">
                 <asp:Label ID="Label2" runat="server" Text="Cambay Spa & Resorts" ForeColor="#0D2DC2" Font-Bold="True" Font-Size="Large"></asp:Label>
					<div class="p-table-grids">
						<div class="col-md-3 p-table-grid">
							<div class="p-table-grad-heading">
								<h6>Resort Information</h6>
							</div>
							<div class="p-table-grid-info">
                                <asp:Image ID="Image2" runat="server" ImageUrl="~/images/CambaySpaJaipur.jpg"/>
								<div class="room-basic-info">
                                    <asp:FormView ID="FormView5" runat="server" DataSourceID="SqlDataSource4">
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
								    <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:TravelTourismConnectionString %>" 
                                        
                                        SelectCommand="SELECT [basic_info] FROM [resort_details] WHERE ([resort_name] = @resort_name)">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="Label2" Name="resort_name" PropertyName="Text" 
                                                Type="String" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
								</div>
							</div>
						</div>
						<div class="col-md-3 p-table-grid">
							<div class="p-table-grad-heading">
								<h6>Features</h6>
							</div>
							<div class="rate-features">
                                <asp:ListView ID="ListView3" runat="server" DataSourceID="SqlDataSource5">
                                    <AlternatingItemTemplate>
                                        <li style="">features:
                                            <asp:Label ID="featuresLabel" runat="server" Text='<%# Eval("features") %>' />
                                            <br />
                                        </li>
                                    </AlternatingItemTemplate>
                                    <EditItemTemplate>
                                        <li style="">features:
                                            <asp:TextBox ID="featuresTextBox" runat="server" 
                                                Text='<%# Bind("features") %>' />
                                            <br />
                                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                                                Text="Update" />
                                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                                                Text="Cancel" />
                                        </li>
                                    </EditItemTemplate>
                                    <EmptyDataTemplate>
                                        No data was returned.
                                    </EmptyDataTemplate>
                                    <InsertItemTemplate>
                                        <li style="">features:
                                            <asp:TextBox ID="featuresTextBox" runat="server" 
                                                Text='<%# Bind("features") %>' />
                                            <br />
                                            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                                                Text="Insert" />
                                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                                                Text="Clear" />
                                        </li>
                                    </InsertItemTemplate>
                                    <ItemSeparatorTemplate>
                                        <br />
                                    </ItemSeparatorTemplate>
                                    <ItemTemplate>
                                        <li style="">
                                            <asp:Label ID="featuresLabel" runat="server" Text='<%# Eval("features") %>' />
                                            <br />
                                        </li>
                                    </ItemTemplate>
                                    <LayoutTemplate>
                                        <ul ID="itemPlaceholderContainer" runat="server" style="">
                                            <li runat="server" id="itemPlaceholder" />
                                        </ul>
                                        <div style="">
                                        </div>
                                    </LayoutTemplate>
                                    <SelectedItemTemplate>
                                        <li style="">features:
                                            <asp:Label ID="featuresLabel" runat="server" Text='<%# Eval("features") %>' />
                                            <br />
                                        </li>
                                    </SelectedItemTemplate>
                                </asp:ListView>
							    <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:TravelTourismConnectionString %>" 
                                    SelectCommand="SELECT [features] FROM [resort_details] WHERE ([resort_name] = @resort_name)">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="Label3" Name="resort_name" PropertyName="Text" 
                                            Type="String" />
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
                                            &nbsp;<asp:Label ID="priceLabel" runat="server" Text='<%# Bind("price") %>' />
                                            <br />

                                        </ItemTemplate>
                                    </asp:FormView>
                                <asp:SqlDataSource ID="SqlDataSource6" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:TravelTourismConnectionString %>" 
                                    SelectCommand="SELECT [price] FROM [resort_details] WHERE ([resort_name] = @resort_name)">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="Label2" Name="resort_name" PropertyName="Text" 
                                            Type="String" />
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
                                <asp:Button ID="Button1" runat="server" Text="Book" onclick="Button1_Click" BackColor="#0D2DC2" 
                                    BorderColor="#0D2DC2" BorderStyle="Solid" ForeColor="White" Height="38px" Width="76px"  />
							</div>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<div class="p-table">
                 <asp:Label ID="Label3" runat="server" Text="Averina Beach" ForeColor="#0D2DC2" Font-Bold="True" Font-Size="Large"></asp:Label>
					<div class="p-table-grids">
						<div class="col-md-3 p-table-grid">
							<div class="p-table-grad-heading">
								<h6>Resort Information</h6>
							</div>
							<div class="p-table-grid-info">
                                <asp:Image ID="Image3" runat="server" ImageUrl="~/images/Averina.jpg"/>
								<div class="room-basic-info">
                                    <asp:FormView ID="FormView3" runat="server" DataSourceID="SqlDataSource7">
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
								    <asp:SqlDataSource ID="SqlDataSource7" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:TravelTourismConnectionString %>" 
                                        SelectCommand="SELECT [basic_info] FROM [resort_details] WHERE ([resort_name] = @resort_name)">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="Label3" Name="resort_name" PropertyName="Text" 
                                                Type="String" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
								</div>
							</div>
						</div>
						<div class="col-md-3 p-table-grid">
							<div class="p-table-grad-heading">
								<h6>Features</h6>
							</div>
							<div class="rate-features">
                                <asp:ListView ID="ListView2" runat="server" DataSourceID="SqlDataSource8">
                                    <AlternatingItemTemplate>
                                        <li style="">features:
                                            <asp:Label ID="featuresLabel" runat="server" Text='<%# Eval("features") %>' />
                                            <br />
                                        </li>
                                    </AlternatingItemTemplate>
                                    <EditItemTemplate>
                                        <li style="">features:
                                            <asp:TextBox ID="featuresTextBox" runat="server" 
                                                Text='<%# Bind("features") %>' />
                                            <br />
                                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                                                Text="Update" />
                                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                                                Text="Cancel" />
                                        </li>
                                    </EditItemTemplate>
                                    <EmptyDataTemplate>
                                        No data was returned.
                                    </EmptyDataTemplate>
                                    <InsertItemTemplate>
                                        <li style="">features:
                                            <asp:TextBox ID="featuresTextBox" runat="server" 
                                                Text='<%# Bind("features") %>' />
                                            <br />
                                            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                                                Text="Insert" />
                                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                                                Text="Clear" />
                                        </li>
                                    </InsertItemTemplate>
                                    <ItemSeparatorTemplate>
                                        <br />
                                    </ItemSeparatorTemplate>
                                    <ItemTemplate>
                                        <li style="">
                                            <asp:Label ID="featuresLabel" runat="server" Text='<%# Eval("features") %>' />
                                            <br />
                                        </li>
                                    </ItemTemplate>
                                    <LayoutTemplate>
                                        <ul ID="itemPlaceholderContainer" runat="server" style="">
                                            <li runat="server" id="itemPlaceholder" />
                                        </ul>
                                        <div style="">
                                        </div>
                                    </LayoutTemplate>
                                    <SelectedItemTemplate>
                                        <li style="">features:
                                            <asp:Label ID="featuresLabel" runat="server" Text='<%# Eval("features") %>' />
                                            <br />
                                        </li>
                                    </SelectedItemTemplate>
                                </asp:ListView>
							    <asp:SqlDataSource ID="SqlDataSource8" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:TravelTourismConnectionString %>" 
                                    SelectCommand="SELECT [features] FROM [resort_details] WHERE ([resort_name] = @resort_name)">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="Label3" Name="resort_name" PropertyName="Text" 
                                            Type="String" />
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
                                    <asp:FormView ID="FormView4" runat="server" DataSourceID="SqlDataSource9">
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
                                <asp:SqlDataSource ID="SqlDataSource9" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:TravelTourismConnectionString %>" 
                                    SelectCommand="SELECT [price] FROM [resort_details] WHERE ([resort_name] = @resort_name)">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="Label3" Name="resort_name" PropertyName="Text" 
                                            Type="String" />
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
								<asp:Button ID="Button3" runat="server" Text="Book" onclick="Button3_Click" BackColor="#0D2DC2" 
                                    BorderColor="#0D2DC2" BorderStyle="Solid" ForeColor="White" Height="38px" Width="76px" />
							</div>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <div class="p-table">
                 <asp:Label ID="Label4" runat="server" Text="Club Mahindra Manali" ForeColor="#0D2DC2" Font-Bold="True" Font-Size="Large"></asp:Label>
					<div class="p-table-grids">
						<div class="col-md-3 p-table-grid">
							<div class="p-table-grad-heading">
								<h6>Resort Information</h6>
							</div>
							<div class="p-table-grid-info">
                                <asp:Image ID="Image4" runat="server" ImageUrl="~/images/ClubMahindraManali.jpg"/>
								<div class="room-basic-info">
                                    <asp:FormView ID="FormView7" runat="server" DataSourceID="SqlDataSource10">
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
								    <asp:SqlDataSource ID="SqlDataSource10" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:TravelTourismConnectionString %>" 
                                        SelectCommand="SELECT [basic_info] FROM [resort_details] WHERE ([resort_name] = @resort_name)">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="Label4" Name="resort_name" PropertyName="Text" 
                                                Type="String" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
								</div>
							</div>
						</div>
						<div class="col-md-3 p-table-grid">
							<div class="p-table-grad-heading">
								<h6>Features</h6>
							</div>
							<div class="rate-features">
                                <asp:ListView ID="ListView4" runat="server" DataSourceID="SqlDataSource11">
                                    <AlternatingItemTemplate>
                                        <li style="">features:
                                            <asp:Label ID="featuresLabel" runat="server" Text='<%# Eval("features") %>' />
                                            <br />
                                        </li>
                                    </AlternatingItemTemplate>
                                    <EditItemTemplate>
                                        <li style="">features:
                                            <asp:TextBox ID="featuresTextBox" runat="server" 
                                                Text='<%# Bind("features") %>' />
                                            <br />
                                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                                                Text="Update" />
                                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                                                Text="Cancel" />
                                        </li>
                                    </EditItemTemplate>
                                    <EmptyDataTemplate>
                                        No data was returned.
                                    </EmptyDataTemplate>
                                    <InsertItemTemplate>
                                        <li style="">features:
                                            <asp:TextBox ID="featuresTextBox" runat="server" 
                                                Text='<%# Bind("features") %>' />
                                            <br />
                                            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                                                Text="Insert" />
                                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                                                Text="Clear" />
                                        </li>
                                    </InsertItemTemplate>
                                    <ItemSeparatorTemplate>
                                        <br />
                                    </ItemSeparatorTemplate>
                                    <ItemTemplate>
                                        <li style="">&nbsp;<asp:Label ID="featuresLabel" runat="server" 
                                                Text='<%# Eval("features") %>' />
                                            <br />
                                        </li>
                                    </ItemTemplate>
                                    <LayoutTemplate>
                                        <ul ID="itemPlaceholderContainer" runat="server" style="">
                                            <li runat="server" id="itemPlaceholder" />
                                        </ul>
                                        <div style="">
                                        </div>
                                    </LayoutTemplate>
                                    <SelectedItemTemplate>
                                        <li style="">features:
                                            <asp:Label ID="featuresLabel" runat="server" Text='<%# Eval("features") %>' />
                                            <br />
                                        </li>
                                    </SelectedItemTemplate>
                                </asp:ListView>
							    <asp:SqlDataSource ID="SqlDataSource11" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:TravelTourismConnectionString %>" 
                                    SelectCommand="SELECT [features] FROM [resort_details] WHERE ([resort_name] = @resort_name)">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="Label4" Name="resort_name" PropertyName="Text" 
                                            Type="String" />
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
                                    <asp:FormView ID="FormView8" runat="server" DataSourceID="SqlDataSource12">
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
                                <asp:SqlDataSource ID="SqlDataSource12" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:TravelTourismConnectionString %>" 
                                    SelectCommand="SELECT [price] FROM [resort_details] WHERE ([resort_name] = @resort_name)">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="Label4" Name="resort_name" PropertyName="Text" 
                                            Type="String" />
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
								<asp:Button ID="Button4" runat="server" Text="Book" onclick="Button4_Click" BackColor="#0D2DC2" 
                                    BorderColor="#0D2DC2" BorderStyle="Solid" ForeColor="White" Height="38px" Width="76px" />
							</div>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <div class="p-table">
                 <asp:Label ID="Label5" runat="server" Text="Sterling Ooty - Elk Hill" ForeColor="#0D2DC2" Font-Bold="True" Font-Size="Large"></asp:Label>
					<div class="p-table-grids">
						<div class="col-md-3 p-table-grid">
							<div class="p-table-grad-heading">
								<h6>Resort Information</h6>
							</div>
							<div class="p-table-grid-info">
                                <asp:Image ID="Image5" runat="server" ImageUrl="~/images/SterlingElkHill.jpg"/>
								<div class="room-basic-info">
                                    <asp:FormView ID="FormView9" runat="server" DataSourceID="SqlDataSource13">
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
								    <asp:SqlDataSource ID="SqlDataSource13" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:TravelTourismConnectionString %>" 
                                        SelectCommand="SELECT [basic_info] FROM [resort_details] WHERE ([resort_name] = @resort_name)">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="Label5" Name="resort_name" PropertyName="Text" 
                                                Type="String" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
								</div>
							</div>
						</div>
						<div class="col-md-3 p-table-grid">
							<div class="p-table-grad-heading">
								<h6>Features</h6>
							</div>
							<div class="rate-features">
                                <asp:ListView ID="ListView5" runat="server" DataSourceID="SqlDataSource14">
                                    <AlternatingItemTemplate>
                                        <li style="">features:
                                            <asp:Label ID="featuresLabel" runat="server" Text='<%# Eval("features") %>' />
                                            <br />
                                        </li>
                                    </AlternatingItemTemplate>
                                    <EditItemTemplate>
                                        <li style="">features:
                                            <asp:TextBox ID="featuresTextBox" runat="server" 
                                                Text='<%# Bind("features") %>' />
                                            <br />
                                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                                                Text="Update" />
                                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                                                Text="Cancel" />
                                        </li>
                                    </EditItemTemplate>
                                    <EmptyDataTemplate>
                                        No data was returned.
                                    </EmptyDataTemplate>
                                    <InsertItemTemplate>
                                        <li style="">features:
                                            <asp:TextBox ID="featuresTextBox" runat="server" 
                                                Text='<%# Bind("features") %>' />
                                            <br />
                                            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                                                Text="Insert" />
                                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                                                Text="Clear" />
                                        </li>
                                    </InsertItemTemplate>
                                    <ItemSeparatorTemplate>
                                        <br />
                                    </ItemSeparatorTemplate>
                                    <ItemTemplate>
                                        <li style="">
                                            <asp:Label ID="featuresLabel" runat="server" Text='<%# Eval("features") %>' />
                                            <br />
                                        </li>
                                    </ItemTemplate>
                                    <LayoutTemplate>
                                        <ul ID="itemPlaceholderContainer" runat="server" style="">
                                            <li runat="server" id="itemPlaceholder" />
                                        </ul>
                                        <div style="">
                                        </div>
                                    </LayoutTemplate>
                                    <SelectedItemTemplate>
                                        <li style="">features:
                                            <asp:Label ID="featuresLabel" runat="server" Text='<%# Eval("features") %>' />
                                            <br />
                                        </li>
                                    </SelectedItemTemplate>
                                </asp:ListView>
							    <asp:SqlDataSource ID="SqlDataSource14" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:TravelTourismConnectionString %>" 
                                    SelectCommand="SELECT [features] FROM [resort_details] WHERE ([resort_name] = @resort_name)">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="Label5" Name="resort_name" PropertyName="Text" 
                                            Type="String" />
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
                                    <asp:FormView ID="FormView10" runat="server" DataSourceID="SqlDataSource15">
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
                                <asp:SqlDataSource ID="SqlDataSource15" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:TravelTourismConnectionString %>" 
                                    SelectCommand="SELECT [price] FROM [resort_details] WHERE ([resort_name] = @resort_name)">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="Label4" Name="resort_name" PropertyName="Text" 
                                            Type="String" />
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
								<asp:Button ID="Button5" runat="server" Text="Book" onclick="Button5_Click" BackColor="#0D2DC2" 
                                    BorderColor="#0D2DC2" BorderStyle="Solid" ForeColor="White" Height="38px" Width="76px" />
							</div>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <div class="p-table">
                 <asp:Label ID="Label6" runat="server" Text="The Golden Tusk" ForeColor="#0D2DC2" Font-Bold="True" Font-Size="Large"></asp:Label>
					<div class="p-table-grids">
						<div class="col-md-3 p-table-grid">
							<div class="p-table-grad-heading">
								<h6>Resort Information</h6>
							</div>
							<div class="p-table-grid-info">
                                <asp:Image ID="Image7" runat="server" ImageUrl="~/images/Golden Tusk.jpg"/>
								<div class="room-basic-info">
                                    <asp:FormView ID="FormView11" runat="server" DataSourceID="SqlDataSource16">
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
								    <asp:SqlDataSource ID="SqlDataSource16" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:TravelTourismConnectionString %>" 
                                        SelectCommand="SELECT [basic_info] FROM [resort_details] WHERE ([resort_name] = @resort_name)">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="Label6" Name="resort_name" PropertyName="Text" 
                                                Type="String" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
								</div>
							</div>
						</div>
						<div class="col-md-3 p-table-grid">
							<div class="p-table-grad-heading">
								<h6>Features</h6>
							</div>
							<div class="rate-features">
                                <asp:ListView ID="ListView6" runat="server" DataSourceID="SqlDataSource17">
                                    <AlternatingItemTemplate>
                                        <li style="">features:
                                            <asp:Label ID="featuresLabel" runat="server" Text='<%# Eval("features") %>' />
                                            <br />
                                        </li>
                                    </AlternatingItemTemplate>
                                    <EditItemTemplate>
                                        <li style="">features:
                                            <asp:TextBox ID="featuresTextBox" runat="server" 
                                                Text='<%# Bind("features") %>' />
                                            <br />
                                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                                                Text="Update" />
                                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                                                Text="Cancel" />
                                        </li>
                                    </EditItemTemplate>
                                    <EmptyDataTemplate>
                                        No data was returned.
                                    </EmptyDataTemplate>
                                    <InsertItemTemplate>
                                        <li style="">features:
                                            <asp:TextBox ID="featuresTextBox" runat="server" 
                                                Text='<%# Bind("features") %>' />
                                            <br />
                                            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                                                Text="Insert" />
                                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                                                Text="Clear" />
                                        </li>
                                    </InsertItemTemplate>
                                    <ItemSeparatorTemplate>
                                        <br />
                                    </ItemSeparatorTemplate>
                                    <ItemTemplate>
                                        <li style="">&nbsp;<asp:Label ID="featuresLabel" runat="server" 
                                                Text='<%# Eval("features") %>' />
                                            <br />
                                        </li>
                                    </ItemTemplate>
                                    <LayoutTemplate>
                                        <ul ID="itemPlaceholderContainer" runat="server" style="">
                                            <li runat="server" id="itemPlaceholder" />
                                        </ul>
                                        <div style="">
                                        </div>
                                    </LayoutTemplate>
                                    <SelectedItemTemplate>
                                        <li style="">features:
                                            <asp:Label ID="featuresLabel" runat="server" Text='<%# Eval("features") %>' />
                                            <br />
                                        </li>
                                    </SelectedItemTemplate>
                                </asp:ListView>
							    <asp:SqlDataSource ID="SqlDataSource17" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:TravelTourismConnectionString %>" 
                                    SelectCommand="SELECT [features] FROM [resort_details] WHERE ([resort_name] = @resort_name)">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="Label6" Name="resort_name" PropertyName="Text" 
                                            Type="String" />
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
                                    <asp:FormView ID="FormView12" runat="server" DataSourceID="SqlDataSource18">
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
                                <asp:SqlDataSource ID="SqlDataSource18" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:TravelTourismConnectionString %>" 
                                    SelectCommand="SELECT [price] FROM [resort_details] WHERE ([resort_name] = @resort_name)">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="Label6" Name="resort_name" PropertyName="Text" 
                                            Type="String" />
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
								<asp:Button ID="Button6" runat="server" Text="Book" onclick="Button6_Click" BackColor="#0D2DC2" 
                                    BorderColor="#0D2DC2" BorderStyle="Solid" ForeColor="White" Height="38px" Width="76px" />
							</div>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<div class="p-table">
                 <asp:Label ID="Label7" runat="server" Text="Avalon Mussoorie" ForeColor="#0D2DC2" Font-Bold="True" Font-Size="Large"></asp:Label>
					<div class="p-table-grids">
						<div class="col-md-3 p-table-grid">
							<div class="p-table-grad-heading">
								<h6>Resort Information</h6>
							</div>
							<div class="p-table-grid-info">
                                <asp:Image ID="Image8" runat="server" ImageUrl="~/images/AvalonMussorie.jpg"/>
								<div class="room-basic-info">
                                    <asp:FormView ID="FormView13" runat="server" DataSourceID="SqlDataSource19">
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
								    <asp:SqlDataSource ID="SqlDataSource19" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:TravelTourismConnectionString %>" 
                                        SelectCommand="SELECT [basic_info] FROM [resort_details] WHERE ([resort_name] = @resort_name)">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="Label7" Name="resort_name" PropertyName="Text" 
                                                Type="String" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
								</div>
							</div>
						</div>
						<div class="col-md-3 p-table-grid">
							<div class="p-table-grad-heading">
								<h6>Features</h6>
							</div>
							<div class="rate-features">
                                <asp:ListView ID="ListView7" runat="server" DataSourceID="SqlDataSource20">
                                    <AlternatingItemTemplate>
                                        <li style="">features:
                                            <asp:Label ID="featuresLabel" runat="server" Text='<%# Eval("features") %>' />
                                            <br />
                                        </li>
                                    </AlternatingItemTemplate>
                                    <EditItemTemplate>
                                        <li style="">features:
                                            <asp:TextBox ID="featuresTextBox" runat="server" 
                                                Text='<%# Bind("features") %>' />
                                            <br />
                                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                                                Text="Update" />
                                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                                                Text="Cancel" />
                                        </li>
                                    </EditItemTemplate>
                                    <EmptyDataTemplate>
                                        No data was returned.
                                    </EmptyDataTemplate>
                                    <InsertItemTemplate>
                                        <li style="">features:
                                            <asp:TextBox ID="featuresTextBox" runat="server" 
                                                Text='<%# Bind("features") %>' />
                                            <br />
                                            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                                                Text="Insert" />
                                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                                                Text="Clear" />
                                        </li>
                                    </InsertItemTemplate>
                                    <ItemSeparatorTemplate>
<br />
                                    </ItemSeparatorTemplate>
                                    <ItemTemplate>
                                        <li style="">&nbsp;<asp:Label ID="featuresLabel" runat="server" 
                                                Text='<%# Eval("features") %>' />
                                            <br />
                                        </li>
                                    </ItemTemplate>
                                    <LayoutTemplate>
                                        <ul ID="itemPlaceholderContainer" runat="server" style="">
                                            <li runat="server" id="itemPlaceholder" />
                                        </ul>
                                        <div style="">
                                        </div>
                                    </LayoutTemplate>
                                    <SelectedItemTemplate>
                                        <li style="">features:
                                            <asp:Label ID="featuresLabel" runat="server" Text='<%# Eval("features") %>' />
                                            <br />
                                        </li>
                                    </SelectedItemTemplate>
                                </asp:ListView>
							    <asp:SqlDataSource ID="SqlDataSource20" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:TravelTourismConnectionString %>" 
                                    SelectCommand="SELECT [features] FROM [resort_details] WHERE ([resort_name] = @resort_name)">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="Label7" Name="resort_name" PropertyName="Text" 
                                            Type="String" />
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
                                    <asp:FormView ID="FormView14" runat="server" DataSourceID="SqlDataSource21">
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
                                <asp:SqlDataSource ID="SqlDataSource21" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:TravelTourismConnectionString %>" 
                                    SelectCommand="SELECT [price] FROM [resort_details] WHERE ([resort_name] = @resort_name)">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="Label7" Name="resort_name" PropertyName="Text" 
                                            Type="String" />
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
								<asp:Button ID="Button7" runat="server" Text="Book" onclick="Button7_Click" BackColor="#0D2DC2" 
                                    BorderColor="#0D2DC2" BorderStyle="Solid" ForeColor="White" Height="38px" Width="76px" />
							</div>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<div class="p-table">
                 <asp:Label ID="Label8" runat="server" Text="Sterling Lonavala - Under The Over" Font-Bold="True" Font-Size="Large" ForeColor="#0D2DC2"></asp:Label>
					<div class="p-table-grids">
						<div class="col-md-3 p-table-grid">
							<div class="p-table-grad-heading">
								<h6>Resort Information</h6>
							</div>
							<div class="p-table-grid-info">
                                <asp:Image ID="Image9" runat="server" ImageUrl="~/images/SterlingLonavala.jpg"/>
								<div class="room-basic-info">
                                    <asp:FormView ID="FormView15" runat="server" DataSourceID="SqlDataSource22">
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
								    <asp:SqlDataSource ID="SqlDataSource22" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:TravelTourismConnectionString %>" 
                                        SelectCommand="SELECT [basic_info] FROM [resort_details] WHERE ([resort_name] = @resort_name)">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="Label8" Name="resort_name" PropertyName="Text" 
                                                Type="String" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
								</div>
							</div>
						</div>
						<div class="col-md-3 p-table-grid">
							<div class="p-table-grad-heading">
								<h6>Features</h6>
							</div>
							<div class="rate-features">
                                <asp:ListView ID="ListView8" runat="server" DataSourceID="SqlDataSource23">
                                    <AlternatingItemTemplate>
                                        <li style="">features:
                                            <asp:Label ID="featuresLabel" runat="server" Text='<%# Eval("features") %>' />
                                            <br />
                                        </li>
                                    </AlternatingItemTemplate>
                                    <EditItemTemplate>
                                        <li style="">features:
                                            <asp:TextBox ID="featuresTextBox" runat="server" 
                                                Text='<%# Bind("features") %>' />
                                            <br />
                                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                                                Text="Update" />
                                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                                                Text="Cancel" />
                                        </li>
                                    </EditItemTemplate>
                                    <EmptyDataTemplate>
                                        No data was returned.
                                    </EmptyDataTemplate>
                                    <InsertItemTemplate>
                                        <li style="">features:
                                            <asp:TextBox ID="featuresTextBox" runat="server" 
                                                Text='<%# Bind("features") %>' />
                                            <br />
                                            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                                                Text="Insert" />
                                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                                                Text="Clear" />
                                        </li>
                                    </InsertItemTemplate>
                                    <ItemSeparatorTemplate>
                                        <br />
                                    </ItemSeparatorTemplate>
                                    <ItemTemplate>
                                        <li style="">
                                            <asp:Label ID="featuresLabel" runat="server" Text='<%# Eval("features") %>' />
                                            <br />
                                        </li>
                                    </ItemTemplate>
                                    <LayoutTemplate>
                                        <ul ID="itemPlaceholderContainer" runat="server" style="">
                                            <li runat="server" id="itemPlaceholder" />
                                        </ul>
                                        <div style="">
                                        </div>
                                    </LayoutTemplate>
                                    <SelectedItemTemplate>
                                        <li style="">features:
                                            <asp:Label ID="featuresLabel" runat="server" Text='<%# Eval("features") %>' />
                                            <br />
                                        </li>
                                    </SelectedItemTemplate>
                                </asp:ListView>
							    <asp:SqlDataSource ID="SqlDataSource23" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:TravelTourismConnectionString %>" 
                                    SelectCommand="SELECT [features] FROM [resort_details] WHERE ([resort_name] = @resort_name)">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="Label8" Name="resort_name" PropertyName="Text" 
                                            Type="String" />
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
                                    <asp:FormView ID="FormView16" runat="server" DataSourceID="SqlDataSource24">
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
                                <asp:SqlDataSource ID="SqlDataSource24" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:TravelTourismConnectionString %>" 
                                    SelectCommand="SELECT [price] FROM [resort_details] WHERE ([resort_name] = @resort_name)">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="Label8" Name="resort_name" PropertyName="Text" 
                                            Type="String" />
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
								<asp:Button ID="Button8" runat="server" Text="Book" onclick="Button8_Click" BackColor="#0D2DC2" 
                                    BorderColor="#0D2DC2" BorderStyle="Solid" ForeColor="White" Height="38px" Width="76px" />
							</div>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <div class="p-table">
                 <asp:Label ID="Label9" runat="server" Text="Panoramic Sea Resort, Alleppey" ForeColor="#0D2DC2" Font-Bold="True" Font-Size="Large"></asp:Label>
					<div class="p-table-grids">
						<div class="col-md-3 p-table-grid">
							<div class="p-table-grad-heading">
								<h6>Resort Information</h6>
							</div>
							<div class="p-table-grid-info">
                                <asp:Image ID="Image10" runat="server" ImageUrl="~/images/Panaromic Sea Resort.jpg"/>
								<div class="room-basic-info">
                                    <asp:FormView ID="FormView17" runat="server" DataSourceID="SqlDataSource25">
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
								    <asp:SqlDataSource ID="SqlDataSource25" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:TravelTourismConnectionString %>" 
                                        SelectCommand="SELECT [basic_info] FROM [resort_details] WHERE ([resort_name] = @resort_name)">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="Label9" Name="resort_name" PropertyName="Text" 
                                                Type="String" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
								</div>
							</div>
						</div>
						<div class="col-md-3 p-table-grid">
							<div class="p-table-grad-heading">
								<h6>Features</h6>
							</div>
							<div class="rate-features">
                                <asp:ListView ID="ListView9" runat="server" DataSourceID="SqlDataSource26">
                                    <AlternatingItemTemplate>
                                        <li style="">features:
                                            <asp:Label ID="featuresLabel" runat="server" Text='<%# Eval("features") %>' />
                                            <br />
                                        </li>
                                    </AlternatingItemTemplate>
                                    <EditItemTemplate>
                                        <li style="">features:
                                            <asp:TextBox ID="featuresTextBox" runat="server" 
                                                Text='<%# Bind("features") %>' />
                                            <br />
                                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                                                Text="Update" />
                                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                                                Text="Cancel" />
                                        </li>
                                    </EditItemTemplate>
                                    <EmptyDataTemplate>
                                        No data was returned.
                                    </EmptyDataTemplate>
                                    <InsertItemTemplate>
                                        <li style="">features:
                                            <asp:TextBox ID="featuresTextBox" runat="server" 
                                                Text='<%# Bind("features") %>' />
                                            <br />
                                            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                                                Text="Insert" />
                                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                                                Text="Clear" />
                                        </li>
                                    </InsertItemTemplate>
                                    <ItemSeparatorTemplate>
<br />
                                    </ItemSeparatorTemplate>
                                    <ItemTemplate>
                                        <li style="">
                                            <asp:Label ID="featuresLabel" runat="server" Text='<%# Eval("features") %>' />
                                            <br />
                                        </li>
                                    </ItemTemplate>
                                    <LayoutTemplate>
                                        <ul ID="itemPlaceholderContainer" runat="server" style="">
                                            <li runat="server" id="itemPlaceholder" />
                                        </ul>
                                        <div style="">
                                        </div>
                                    </LayoutTemplate>
                                    <SelectedItemTemplate>
                                        <li style="">features:
                                            <asp:Label ID="featuresLabel" runat="server" Text='<%# Eval("features") %>' />
                                            <br />
                                        </li>
                                    </SelectedItemTemplate>
                                </asp:ListView>
							    <asp:SqlDataSource ID="SqlDataSource26" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:TravelTourismConnectionString %>" 
                                    SelectCommand="SELECT [features] FROM [resort_details] WHERE ([resort_name] = @resort_name)">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="Label9" Name="resort_name" PropertyName="Text" 
                                            Type="String" />
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
                                    <asp:FormView ID="FormView18" runat="server" DataSourceID="SqlDataSource27">
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
                                <asp:SqlDataSource ID="SqlDataSource27" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:TravelTourismConnectionString %>" 
                                    SelectCommand="SELECT [price] FROM [resort_details] WHERE ([resort_name] = @resort_name)">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="Label9" Name="resort_name" PropertyName="Text" 
                                            Type="String" />
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
								<asp:Button ID="Button9" runat="server" Text="Book" onclick="Button9_Click" BackColor="#0D2DC2" 
                                    BorderColor="#0D2DC2" BorderStyle="Solid" ForeColor="White" Height="38px" Width="76px" />
							</div>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <div class="p-table">
                 <asp:Label ID="Label10" runat="server" Text="Sterling Darjeeling - Khush Alaya" ForeColor="#0D2DC2"></asp:Label>
					<div class="p-table-grids">
						<div class="col-md-3 p-table-grid">
							<div class="p-table-grad-heading">
								<h6>Resort Information</h6>
							</div>
							<div class="p-table-grid-info">
                                <asp:Image ID="Image11" runat="server" ImageUrl="~/images/SterlingDarjeeling.jpg"/>
								<div class="room-basic-info">
                                    <asp:FormView ID="FormView19" runat="server" DataSourceID="SqlDataSource28">
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
								    <asp:SqlDataSource ID="SqlDataSource28" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:TravelTourismConnectionString %>" 
                                        SelectCommand="SELECT [basic_info] FROM [resort_details] WHERE ([resort_name] = @resort_name)">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="Label10" Name="resort_name" 
                                                PropertyName="Text" Type="String" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
								</div>
							</div>
						</div>
						<div class="col-md-3 p-table-grid">
							<div class="p-table-grad-heading">
								<h6>Features</h6>
							</div>
							<div class="rate-features">
                                <asp:ListView ID="ListView10" runat="server" DataSourceID="SqlDataSource29">
                                    <AlternatingItemTemplate>
                                        <li style="">features:
                                            <asp:Label ID="featuresLabel" runat="server" Text='<%# Eval("features") %>' />
                                            <br />
                                        </li>
                                    </AlternatingItemTemplate>
                                    <EditItemTemplate>
                                        <li style="">features:
                                            <asp:TextBox ID="featuresTextBox" runat="server" 
                                                Text='<%# Bind("features") %>' />
                                            <br />
                                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                                                Text="Update" />
                                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                                                Text="Cancel" />
                                        </li>
                                    </EditItemTemplate>
                                    <EmptyDataTemplate>
                                        No data was returned.
                                    </EmptyDataTemplate>
                                    <InsertItemTemplate>
                                        <li style="">features:
                                            <asp:TextBox ID="featuresTextBox" runat="server" 
                                                Text='<%# Bind("features") %>' />
                                            <br />
                                            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                                                Text="Insert" />
                                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                                                Text="Clear" />
                                        </li>
                                    </InsertItemTemplate>
                                    <ItemSeparatorTemplate>
<br />
                                    </ItemSeparatorTemplate>
                                    <ItemTemplate>
                                        <li style="">&nbsp;<asp:Label ID="featuresLabel" runat="server" 
                                                Text='<%# Eval("features") %>' />
                                            <br />
                                        </li>
                                    </ItemTemplate>
                                    <LayoutTemplate>
                                        <ul ID="itemPlaceholderContainer" runat="server" style="">
                                            <li runat="server" id="itemPlaceholder" />
                                        </ul>
                                        <div style="">
                                        </div>
                                    </LayoutTemplate>
                                    <SelectedItemTemplate>
                                        <li style="">features:
                                            <asp:Label ID="featuresLabel" runat="server" Text='<%# Eval("features") %>' />
                                            <br />
                                        </li>
                                    </SelectedItemTemplate>
                                </asp:ListView>
							    <asp:SqlDataSource ID="SqlDataSource29" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:TravelTourismConnectionString %>" 
                                    SelectCommand="SELECT [features] FROM [resort_details] WHERE ([resort_name] = @resort_name)">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="Label10" Name="resort_name" 
                                            PropertyName="Text" Type="String" />
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
                                    <asp:FormView ID="FormView20" runat="server" DataSourceID="SqlDataSource30">
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
                                <asp:SqlDataSource ID="SqlDataSource30" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:TravelTourismConnectionString %>" 
                                    SelectCommand="SELECT [price] FROM [resort_details] WHERE ([resort_name] = @resort_name)">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="Label10" Name="resort_name" 
                                            PropertyName="Text" Type="String" />
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
								<asp:Button ID="Button10" runat="server" Text="Book" onclick="Button10_Click" BackColor="#0D2DC2" 
                                    BorderColor="#0D2DC2" BorderStyle="Solid" ForeColor="White" Height="38px" Width="76px" />
							</div>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
			</div>
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