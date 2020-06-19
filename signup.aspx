<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="TravelWebsite.signup" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Signup</title>
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
<script>
    function validateFunction(object, args) {
        var val = args.Value;
        if (val.length < 4) {
            args.IsValid = false;
        }
    }

    function validateNumFunction1(object, args) {
        var val = args.Value;
        if (val.length < 10) {
            args.IsValid = false;
        }
    }

        function validateNumFunction2(object, args) {
            var val = args.Value;
            if (val.length > 10) {
                args.IsValid = false;
            }
        }
    </script>
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
                <li><asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Camp.aspx">Camp</asp:HyperLink></li><div class="dropdown-grids">
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
				
				<div class="clearfix"> </div>
			</div>
		</div>
	<!--//header-->
	<!-- banner -->
	<!-- container -->
    <div class="banner">
		<!-- container -->
		
		<!-- //container -->
	</div>  
	<!--//header-->
	<!-- banner-bottom -->
	<div class="banner-bottom">
		<!-- container -->
		<div class="container">
			<div class="faqs-top-grids">
				<div class="book-grids">
					<div class="col-md-6 book-left">
						<div class="book-left-info">
							<h3>Create Your Travel India Account</h3>
						</div>
						<div class="book-left-form">
						
    <div>

            <form id="Form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
   <table align="center" width="10px">
   <tr><td>
        First Name:
        <asp:TextBox ID="txtFName" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server"
                       ControlToValidate="txtFName" ErrorMessage="Only alphabets are allowed"
                       ForeColor="Red" ValidationExpression="^[a-zA-Z ]+$"  > </asp:RegularExpressionValidator>
        </td></tr>
        <tr><td>
        Last Name:
        <asp:TextBox ID="txtLName" runat="server"></asp:TextBox>
           <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"
                       ControlToValidate="txtLName" ErrorMessage="Only alphabets are allowed"
                       ForeColor="Red" ValidationExpression="^[a-zA-Z ]+$"  > </asp:RegularExpressionValidator>
      
        </td></tr>
        <tr><td>
        Username:
        <asp:TextBox ID="txtUsr" runat="server" ontextchanged="txtUsr_TextChanged" AutoPostBack="True"></asp:TextBox>
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            <br />
         <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Enter username" ForeColor="Red" ControlToValidate="txtUsr"></asp:RequiredFieldValidator>
            <br />
        </td></tr>
        <tr><td>
        Mobile Number:
        <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
            <br />
          
         <asp:RegularExpressionValidator ID="RegularExpressionValidator4" ForeColor="Red" Display="Dynamic" ControlToValidate="txtPhone" runat="server" ErrorMessage="Only Numbers allowed" ValidationExpression="\d+"></asp:RegularExpressionValidator>
         <asp:CustomValidator ID="CustomValidator3" runat="server" ForeColor="Red" 
                ErrorMessage="Enter valid Number" ControlToValidate="txtPhone" 
                ClientValidationFunction="validateNumFunction1" Display="Dynamic"></asp:CustomValidator>
            <asp:CustomValidator ID="CustomValidator5" runat="server" ForeColor="Red" 
                ErrorMessage="Enter valid Number" ControlToValidate="txtPhone" 
                ClientValidationFunction="validateNumFunction2" Display="Dynamic"></asp:CustomValidator>
        </td></tr>
        <tr><td>
        Email Address:
        <asp:TextBox ID="txtEmail" runat="server" OnTextChanged="txtEmail_TextChanged" AutoPostBack="true"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ForeColor="Red" 
                runat="server" ErrorMessage="Please Enter Valid Email address" 
                ControlToValidate="txtEmail" 
                ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic"></asp:RegularExpressionValidator>
            <br />
            <asp:Label ID="Label2" runat="server" ForeColor="Red"></asp:Label>
        </td></tr>
        <tr><td>
        Password:
        <asp:TextBox ID="txtPwd" runat="server" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ForeColor="Red" ErrorMessage="Enter Password" ControlToValidate="txtpwd" 
                Display="Dynamic"></asp:RequiredFieldValidator>
        </td></tr>
        <tr><td>
        Confirm Password:
        <asp:TextBox ID="txtCPwd" runat="server" TextMode="Password"></asp:TextBox>
        <asp:CompareValidator ID="CompareValidator3" runat="server" ForeColor="Red" 
                ErrorMessage="Password Doesn't Match" ControlToValidate="txtCpwd" 
                ControlToCompare="txtPwd" Display="Dynamic"></asp:CompareValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Enter password" ControlToValidate="txtCPwd" ForeColor="Red"></asp:RequiredFieldValidator>
        </td></tr>
        <tr>
        <td>
        Secret Question:
            <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>What is your pet's name?</asp:ListItem>
            <asp:ListItem>What is your favourite color?</asp:ListItem>
            <asp:ListItem>What is your birth place?</asp:ListItem>
            <asp:ListItem>What is your vehicle number?</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ForeColor="Red" ErrorMessage="Select Secret Question" 
                ControlToValidate="DropDownList1" Display="Dynamic"></asp:RequiredFieldValidator>
        </td>
        </tr>
        <tr>
        <td>
        Answer: <asp:TextBox ID="txtAnswer" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator
            ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter Answer" 
                ForeColor="Red" ControlToValidate="txtAnswer" Display="Dynamic"></asp:RequiredFieldValidator>
        </td>
        </tr>
        <tr><td>
        <asp:Button ID="btnReg" runat="server" Text="Register" onclick="btnReg_Click1" />
    </td></tr>
    </table>

        </ContentTemplate>
        </asp:UpdatePanel>
        </form>
    </div>    
						</div>
					</div>
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
					<div class="col-md-6 book-left book-right">
						<div class="book-left-info">
							<h3></h3>
						</div>
						<div class="book-left-bottom">
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
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
		</div>
		<!-- //container -->
	</div>
	<!-- //banner-bottom -->
	<!-- footer -->
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
</body>
</html>
