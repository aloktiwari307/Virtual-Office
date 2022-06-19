<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Emp_login_details.aspx.cs" Inherits="Virtual_Office_Project.admin.Emp_login_details" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Message </title>
<!-- custom-theme -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Esteem Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //custom-theme -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/snow.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/component.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style_grid.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- font-awesome-icons -->
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome-icons -->
<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800" rel="stylesheet">

</head>
<body>
    <form id="form1" runat="server">
    <div>
        <!-- /pages_agile_info_w3l -->

						<div class="pages_agile_info_w3l">
							<!-- /login -->
							   <div class="over_lay_agile_pages_w3ls">
								    <div class="registration">
								
												<div class="signin-form profile">
													<h2>Login Details</h2>
													<div class="login-form">
														<div>
                                                           <p>
                                                              User Name : <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label> </p><br />
                                                            <p>Password : <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>  </p>
                                                            <p>Employee ID : <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label> </p>
                                                           <b><p>Please Not  Down These Details For Login Purpose</p> </b>
														</div>
													</div>
													
													  <h6><a href="login.aspx">Click Here to Login Page</a></h6>
													 <h6><a href="Home.aspx">Back To Home</a><h6>
												</div>
										</div>
										<!--copy rights start here-->
										<%--	<div class="copyrights_agile">
												 <p>© 2017 Esteem. All Rights Reserved | Design by  <a href="http://w3layouts.com/" target="_blank">W3layouts</a> </p>
											</div>	--%>
											<!--copy rights end here-->
						    </div>
						</div>
							<!-- /login -->
<!-- //pages_agile_info_w3l -->


<!-- js -->

          <script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
		  <script src="js/modernizr.custom.js"></script>
		
		   <script src="js/classie.js"></script>
		  <script src="js/gnmenu.js"></script>
		  <script>
			new gnMenu( document.getElementById( 'gn-menu' ) );
		 </script>
	
<!-- //js -->

<script src="js/screenfull.js"></script>
		<script>
		$(function () {
			$('#supported').text('Supported/allowed: ' + !!screenfull.enabled);

			if (!screenfull.enabled) {
				return false;
			}

			

			$('#toggle').click(function () {
				screenfull.toggle($('#container')[0]);
			});	
		});
		</script>
<script src="js/jquery.nicescroll.js"></script>
<script src="js/scripts.js"></script>
<script src="js/snow.js"></script>
 <script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-36251023-1']);
  _gaq.push(['_setDomainName', 'jqueryscript.net']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>
<script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>

    
    
    </div>
    </form>
</body>
</html>
