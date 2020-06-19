<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Camp.aspx.cs" Inherits="TravelWebsite.Camp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Camp</title>
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
    <div>
    <div class="header">
		<div class="container">
			<div class="header-grids">
								<div class="logo">
					<h1>
                        <asp:HyperLink ID="logohome" runat="server" NavigateUrl="~/index1.aspx" ForeColor="#0D2DC2"><span>Travel</span></asp:HyperLink>india</h1>
				</div>
              
				<!--navbar-header-->
				<div class="clearfix" style="margin-left: 920px"> <asp:Button ID="Logout" runat="server" Text="Logout"  BackColor="#0D2DC2" BorderColor="#0D2DC2" BorderStyle="Solid" ForeColor="White" Height="38px" Width="76px" OnClick="Logout_Click" /></div>
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
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

      
					<div class="banner-bottom">
		<!-- container -->
        
        		<div class="container">
			<div class="col-md-4 banner-left" style="width: 1080px">
				<section class="slider2">
					<div class="flexslider" style="width: 1150px">
						<ul class="slides" style="width: inherit">
							<li>
								<div class="slider-info">
									<asp:Image ID="Image22" runat="server" ImageUrl="~/images/huahine_5.jpg"></asp:Image>
								</div>
							</li>
							<li>
								<div class="slider-info">
									<asp:Image ID="Image23" runat="server" ImageUrl="~/images/trekking.jpg"></asp:Image>
								</div>
							</li>
							<li>	
								<div class="slider-info">
									<asp:Image ID="Image24" runat="server" ImageUrl="~/images/hotairballoon.jpg"></asp:Image>
								</div>
							</li>
							<li>	
								<div class="slider-info">
									<asp:Image ID="Image25" runat="server" ImageUrl="~/images/yacht.jpg"></asp:Image>
								</div>
							</li>
							<li>	
								<div class="slider-info">
									<asp:Image ID="Image26" runat="server" ImageUrl="~/images/bungee-jumping-india_1439532779.jpg"></asp:Image>
								</div>
							</li>
						</ul>
					</div>
				</section>
				<!--FlexSlider-->
			</div>
			
			<div class="clearfix"> </div>
		</div>
		<div class="container">
			<div class="banner-bottom-grids">
				<div class="col-md-4 banner-bottom-grid">
					<div class="banner-bottom-middle">
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/images/zorbing1.jpg"/>
							<div class="destinations-grid-info tours">
                                <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1" 
                                    BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" 
                                    CellPadding="4" GridLines="Both" Width="319px">
                                    <EditItemTemplate>
                                        c_name:
                                        <asp:TextBox ID="c_nameTextBox" runat="server" Text='<%# Bind("c_name") %>' />
                                        <br />
                                        duration:
                                        <asp:TextBox ID="durationTextBox" runat="server" 
                                            Text='<%# Bind("duration") %>' />
                                        <br />
                                        price:
                                        <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
                                        <br />
                                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                                            CommandName="Update" Text="Update" />
                                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                                            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                    </EditItemTemplate>
                                    <EditRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                                    <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                                    <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                                    <InsertItemTemplate>
                                        c_name:
                                        <asp:TextBox ID="c_nameTextBox" runat="server" Text='<%# Bind("c_name") %>' />
                                        <br />
                                        duration:
                                        <asp:TextBox ID="durationTextBox" runat="server" 
                                            Text='<%# Bind("duration") %>' />
                                        <br />
                                        price:
                                        <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
                                        <br />
                                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                                            CommandName="Insert" Text="Insert" />
                                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                                            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                    </InsertItemTemplate>
                                    <ItemTemplate>
                                        &nbsp;<asp:Label ID="c_nameLabel" runat="server" Text='<%# Bind("c_name") %>' />
                                        <br />
                                        <asp:Label ID="durationLabel" runat="server" Text='<%# Bind("duration") %>' />
                                        <br />
                                        Price:
                                        <asp:Label ID="priceLabel" runat="server" Text='<%# Bind("price") %>' />
                                        <br />
                                    </ItemTemplate>
                                    <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                                    <RowStyle BackColor="White" ForeColor="#003399" />
                                </asp:FormView>
							    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:TravelTourismConnectionString2 %>" 
                                    
                                    SelectCommand="SELECT [c_name], [duration], [price] FROM [camp_details] WHERE ([c_id] = @c_id)">
                                    <SelectParameters>
                                        <asp:Parameter DefaultValue="10004" Name="c_id" Type="Int64" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
							<asp:Button ID="Button1" runat="server" Text="View Details" BackColor="#0D2DC2" 
                                    BorderColor="#0D2DC2" BorderStyle="Solid" ForeColor="White" Height="38px" 
                                    Width="116px" onclick="Button1_Click"/>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button2" runat="server" Text="Book" BackColor="#0D2DC2" 
                                    BorderColor="#0D2DC2" BorderStyle="Solid" ForeColor="White" Height="38px" Width="116px" />
                            </div>
					</div>					
				</div>
                <div class="col-md-4 banner-bottom-grid">
					<div class="banner-bottom-middle">
                        <asp:Image ID="Image2" runat="server" ImageUrl="~/images/rafting.jpg"/>
							<div class="destinations-grid-info tours">
                            <asp:FormView ID="FormView3" runat="server" DataSourceID="SqlDataSource2" 
                                    BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" 
                                    CellPadding="3" GridLines="Horizontal" Width="317px">
                                <EditItemTemplate>
                                    c_name:
                                    <asp:TextBox ID="c_nameTextBox" runat="server" Text='<%# Bind("c_name") %>' />
                                    <br />
                                    duration:
                                    <asp:TextBox ID="durationTextBox" runat="server" 
                                        Text='<%# Bind("duration") %>' />
                                    <br />
                                    price:
                                    <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
                                    <br />
                                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                                        CommandName="Update" Text="Update" />
                                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                                        CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                </EditItemTemplate>
                                <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                                <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                                <InsertItemTemplate>
                                    c_name:
                                    <asp:TextBox ID="c_nameTextBox" runat="server" Text='<%# Bind("c_name") %>' />
                                    <br />
                                    duration:
                                    <asp:TextBox ID="durationTextBox" runat="server" 
                                        Text='<%# Bind("duration") %>' />
                                    <br />
                                    price:
                                    <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
                                    <br />
                                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                                        CommandName="Insert" Text="Insert" />
                                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                                        CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="c_nameLabel" runat="server" Text='<%# Bind("c_name") %>' />
                                    <br />
                                    <asp:Label ID="durationLabel" runat="server" Text='<%# Bind("duration") %>' />
                                    <br />
                                    Price:
                                    <asp:Label ID="priceLabel" runat="server" Text='<%# Bind("price") %>' />
                                    <br />
                                </ItemTemplate>
                                <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                                <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                        </asp:FormView>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:TravelTourismConnectionString2 %>" 
                                    SelectCommand="SELECT [c_name], [duration], [price] FROM [camp_details] WHERE ([c_id] = @c_id)">
                                    <SelectParameters>
                                        <asp:Parameter DefaultValue="10005" Name="c_id" Type="Int64" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            <asp:Button ID="Button3" runat="server" Text="View Details" BackColor="#0D2DC2" 
                                    BorderColor="#0D2DC2" BorderStyle="Solid" ForeColor="White" Height="38px" 
                                    Width="116px" onclick="Button3_Click"/>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button4" runat="server" Text="Book" BackColor="#0D2DC2" 
                                    BorderColor="#0D2DC2" BorderStyle="Solid" ForeColor="White" Height="38px" Width="116px" />
							</div>
					</div>					
				</div>
                <div class="col-md-4 banner-bottom-grid">
					<div class="banner-bottom-middle">
                        <asp:Image ID="Image3" runat="server" ImageUrl="~/images/bungee-jumping-india_1439532779 - Copy.jpg"/>
							<div class="destinations-grid-info tours">
                                <asp:FormView ID="FormView4" runat="server" DataSourceID="SqlDataSource3" 
                                    BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" 
                                    CellPadding="4" GridLines="Both" Width="319px">
                                    <EditItemTemplate>
                                        c_name:
                                        <asp:TextBox ID="c_nameTextBox" runat="server" Text='<%# Bind("c_name") %>' />
                                        <br />
                                        duration:
                                        <asp:TextBox ID="durationTextBox" runat="server" 
                                            Text='<%# Bind("duration") %>' />
                                        <br />
                                        price:
                                        <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
                                        <br />
                                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                                            CommandName="Update" Text="Update" />
                                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                                            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                    </EditItemTemplate>
                                    <EditRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                                    <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                                    <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                                    <InsertItemTemplate>
                                        c_name:
                                        <asp:TextBox ID="c_nameTextBox" runat="server" Text='<%# Bind("c_name") %>' />
                                        <br />
                                        duration:
                                        <asp:TextBox ID="durationTextBox" runat="server" 
                                            Text='<%# Bind("duration") %>' />
                                        <br />
                                        price:
                                        <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
                                        <br />
                                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                                            CommandName="Insert" Text="Insert" />
                                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                                            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                    </InsertItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="c_nameLabel" runat="server" Text='<%# Bind("c_name") %>' />
                                        <br />
                                        <asp:Label ID="durationLabel" runat="server" Text='<%# Bind("duration") %>' />
                                        <br />
                                        Price:
                                        <asp:Label ID="priceLabel" runat="server" Text='<%# Bind("price") %>' />
                                        <br />
                                    </ItemTemplate>
                                    <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                                    <RowStyle BackColor="White" ForeColor="#003399" />
                                </asp:FormView>
                                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:TravelTourismConnectionString2 %>" 
                                    SelectCommand="SELECT [c_name], [duration], [price] FROM [camp_details] WHERE ([c_id] = @c_id)">
                                    <SelectParameters>
                                        <asp:Parameter DefaultValue="10006" Name="c_id" Type="Int64" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            <asp:Button ID="Button5" runat="server" Text="View Details" BackColor="#0D2DC2" 
                                    BorderColor="#0D2DC2" BorderStyle="Solid" ForeColor="White" Height="38px" 
                                    Width="116px" onclick="Button5_Click" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button6" runat="server" Text="Book" BackColor="#0D2DC2" 
                                    BorderColor="#0D2DC2" BorderStyle="Solid" ForeColor="White" Height="38px" Width="116px" />
							</div>
					</div>
				</div>
                &nbsp;&nbsp;&nbsp;
                <div class="col-md-4 banner-bottom-grid">
					<div class="banner-bottom-middle">
                        <asp:Image ID="Image4" runat="server" ImageUrl="~/images/yatching.jpg"/>
							<div class="destinations-grid-info tours">
                                <asp:FormView ID="FormView5" runat="server" DataSourceID="SqlDataSource4" 
                                    BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" 
                                    CellPadding="3" GridLines="Horizontal" Width="319px">
                                    <EditItemTemplate>
                                        c_name:
                                        <asp:TextBox ID="c_nameTextBox" runat="server" Text='<%# Bind("c_name") %>' />
                                        <br />
                                        duration:
                                        <asp:TextBox ID="durationTextBox" runat="server" 
                                            Text='<%# Bind("duration") %>' />
                                        <br />
                                        price:
                                        <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
                                        <br />
                                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                                            CommandName="Update" Text="Update" />
                                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                                            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                    </EditItemTemplate>
                                    <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                                    <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                                    <InsertItemTemplate>
                                        c_name:
                                        <asp:TextBox ID="c_nameTextBox" runat="server" Text='<%# Bind("c_name") %>' />
                                        <br />
                                        duration:
                                        <asp:TextBox ID="durationTextBox" runat="server" 
                                            Text='<%# Bind("duration") %>' />
                                        <br />
                                        price:
                                        <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
                                        <br />
                                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                                            CommandName="Insert" Text="Insert" />
                                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                                            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                    </InsertItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="c_nameLabel" runat="server" Text='<%# Bind("c_name") %>' />
                                        <br />
                                        <asp:Label ID="durationLabel" runat="server" Text='<%# Bind("duration") %>' />
                                        <br />
                                        Price:
                                        <asp:Label ID="priceLabel" runat="server" Text='<%# Bind("price") %>' />
                                        <br />
                                    </ItemTemplate>
                                    <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                                    <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                                </asp:FormView>
                                <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:TravelTourismConnectionString2 %>" 
                                    SelectCommand="SELECT [c_name], [duration], [price] FROM [camp_details] WHERE ([c_id] = @c_id)">
                                    <SelectParameters>
                                        <asp:Parameter DefaultValue="10001" Name="c_id" Type="Int64" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            <asp:Button ID="Button7" runat="server" Text="View Details" BackColor="#0D2DC2" 
                                    BorderColor="#0D2DC2" BorderStyle="Solid" ForeColor="White" Height="38px" 
                                    Width="116px" onclick="Button7_Click" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button8" runat="server" Text="Book" BackColor="#0D2DC2" 
                                    BorderColor="#0D2DC2" BorderStyle="Solid" ForeColor="White" Height="38px" Width="116px" />							
							</div>
					</div>
				</div>
                <div class="col-md-4 banner-bottom-grid">
					<div class="banner-bottom-top">
                        <asp:Image ID="Image5" runat="server" ImageUrl="~/images/Trek.jpg"/>
							<div class="destinations-grid-info tours">
                                <asp:FormView ID="FormView6" runat="server" DataSourceID="SqlDataSource5" 
                                    BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" 
                                    CellPadding="4" GridLines="Both" Width="319px">
                                    <EditItemTemplate>
                                        c_name:
                                        <asp:TextBox ID="c_nameTextBox" runat="server" Text='<%# Bind("c_name") %>' />
                                        <br />
                                        duration:
                                        <asp:TextBox ID="durationTextBox" runat="server" 
                                            Text='<%# Bind("duration") %>' />
                                        <br />
                                        price:
                                        <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
                                        <br />
                                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                                            CommandName="Update" Text="Update" />
                                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                                            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                    </EditItemTemplate>
                                    <EditRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                                    <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                                    <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                                    <InsertItemTemplate>
                                        c_name:
                                        <asp:TextBox ID="c_nameTextBox" runat="server" Text='<%# Bind("c_name") %>' />
                                        <br />
                                        duration:
                                        <asp:TextBox ID="durationTextBox" runat="server" 
                                            Text='<%# Bind("duration") %>' />
                                        <br />
                                        price:
                                        <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
                                        <br />
                                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                                            CommandName="Insert" Text="Insert" />
                                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                                            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                    </InsertItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="c_nameLabel" runat="server" Text='<%# Bind("c_name") %>' />
                                        <br />
                                        <asp:Label ID="durationLabel" runat="server" Text='<%# Bind("duration") %>' />
                                        <br />
                                        Price:
                                        <asp:Label ID="priceLabel" runat="server" Text='<%# Bind("price") %>' />
                                        <br />
                                    </ItemTemplate>
                                    <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                                    <RowStyle BackColor="White" ForeColor="#003399" />
                                </asp:FormView>
                                  <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:TravelTourismConnectionString2 %>" 
                                    SelectCommand="SELECT [c_name], [duration], [price] FROM [camp_details] WHERE ([c_id] = @c_id)">
                                      <SelectParameters>
                                          <asp:Parameter DefaultValue="10002" Name="c_id" Type="Int64" />
                                      </SelectParameters>
                                </asp:SqlDataSource>
                                  <asp:Button ID="Button9" runat="server" Text="View Details" BackColor="#0D2DC2" 
                                    BorderColor="#0D2DC2" BorderStyle="Solid" ForeColor="White" Height="38px" 
                                    Width="116px" onclick="Button9_Click"/>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button10" runat="server" Text="Book" BackColor="#0D2DC2" 
                                    BorderColor="#0D2DC2" BorderStyle="Solid" ForeColor="White" Height="38px" Width="116px" />
							</div>
					</div>
					
				</div>
				<div class="col-md-4 banner-bottom-grid">
					<div class="banner-bottom-right">
                        <asp:Image ID="Image7" runat="server" ImageUrl="~/images/paragliding.jpg"/>
							<div class="destinations-grid-info tours">
                                <asp:FormView ID="FormView2" runat="server" DataSourceID="SqlDataSource6" 
                                    BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" 
                                    CellPadding="3" GridLines="Horizontal" Width="319px">
                                    <EditItemTemplate>
                                        c_name:
                                        <asp:TextBox ID="c_nameTextBox" runat="server" Text='<%# Bind("c_name") %>' />
                                        <br />
                                        duration:
                                        <asp:TextBox ID="durationTextBox" runat="server" 
                                            Text='<%# Bind("duration") %>' />
                                        <br />
                                        price:
                                        <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
                                        <br />
                                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                                            CommandName="Update" Text="Update" />
                                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                                            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                    </EditItemTemplate>
                                    <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                                    <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                                    <InsertItemTemplate>
                                        c_name:
                                        <asp:TextBox ID="c_nameTextBox" runat="server" Text='<%# Bind("c_name") %>' />
                                        <br />
                                        duration:
                                        <asp:TextBox ID="durationTextBox" runat="server" 
                                            Text='<%# Bind("duration") %>' />
                                        <br />
                                        price:
                                        <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
                                        <br />
                                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                                            CommandName="Insert" Text="Insert" />
                                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                                            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                    </InsertItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="c_nameLabel" runat="server" Text='<%# Bind("c_name") %>' />
                                        <br />
                                        <asp:Label ID="durationLabel" runat="server" Text='<%# Bind("duration") %>' />
                                        <br />
                                        Price:
                                        <asp:Label ID="priceLabel" runat="server" Text='<%# Bind("price") %>' />
                                        <br />
                                    </ItemTemplate>

                                    <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                                    <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />

                                </asp:FormView> 
                                <asp:SqlDataSource ID="SqlDataSource6" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:TravelTourismConnectionString2 %>" 
                                    SelectCommand="SELECT [c_name], [duration], [price] FROM [camp_details] WHERE ([c_id] = @c_id)">
                                    <SelectParameters>
                                        <asp:Parameter DefaultValue="10003" Name="c_id" Type="Int64" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            <asp:Button ID="Button11" runat="server" Text="View Details" BackColor="#0D2DC2" 
                                    BorderColor="#0D2DC2" BorderStyle="Solid" ForeColor="White" Height="38px" 
                                    Width="116px" onclick="Button11_Click" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button12" runat="server" Text="Book" BackColor="#0D2DC2" 
                                    BorderColor="#0D2DC2" BorderStyle="Solid" ForeColor="White" Height="38px" 
                                    Width="116px" />
                            </div>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
		<!-- //container -->
	</div>
                   
 &nbsp;&nbsp;&nbsp;&nbsp;		                    			
<!-- container -->
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
    </div>
    </form>
</body>
</html>
