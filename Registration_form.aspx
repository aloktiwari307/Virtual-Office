<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration_form.aspx.cs" Inherits="Virtual_Office_Project.admin.Registration_form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">   
<title>Registration</title>
<!-- custom-theme -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Esteem Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //custom-theme -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
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
    <div class="wthree_agile_admin_info">
		  <!-- /w3_agileits_top_nav-->
		  <!-- /nav-->
		  <div class="w3_agileits_top_nav">
			<ul id="gn-menu" class="gn-menu-main">
			  		 <!-- /nav_agile_w3l -->
				<li class="gn-trigger">
					<a class="gn-icon gn-icon-menu"><i class="fa fa-bars" aria-hidden="true"></i><span>Menu</span></a>
					<nav class="gn-menu-wrapper">
						<div class="gn-scroller scrollbar1">
							<ul class="gn-menu agile_menu_drop">
								<li><a href="Home.aspx"> <i class="fa fa-tachometer"></i> Dashboard</a></li>
								<li>
									<a href="#"><i class="fa fa-cogs" aria-hidden="true"></i> Employee Section <i class="fa fa-angle-down" aria-hidden="true"></i></a> 
									<ul class="gn-submenu">
										<li class="mini_list_agile"><a href="Registration_form.aspx"><i class="fa fa-caret-right" aria-hidden="true"></i> Registration</a></li>
										<li class="mini_list_w3"><a href="Employee_Details.aspx"> <i class="fa fa-caret-right" aria-hidden="true"></i> View Employee</a></li>
									</ul>
								</li>
								<li>
									<a href="#"> <i class="fa fa-file-text-o" aria-hidden="true"></i>Announcement <i class="fa fa-angle-down" aria-hidden="true"></i></a> 
									<ul class="gn-submenu">
                                         <li class="mini_list_agile"><a href="BlogSection.aspx"><i class="fa fa-caret-right" aria-hidden="true"></i>Post Blog</a></li>
                                         <li class="mini_list_agile"><a href="BlogPost.aspx"><i class="fa fa-caret-right" aria-hidden="true"></i>Blog List</a></li>
										<li class="mini_list_agile"><a href="PostQuestion.aspx"><i class="fa fa-caret-right" aria-hidden="true"></i>E-Forum</a></li>
									
									</ul>
								</li>
								<li><a href="#"> <i class="fa fa-table" aria-hidden="true"></i>Email</a></li>
								<%--<li><a href="#"><i class="fa fa-list" aria-hidden="true"></i> Feature <i class="fa fa-angle-down" aria-hidden="true"> </i></a> 
								     	<ul class="gn-submenu">
                                       
										<li class="mini_list_agile"><a href="#"><i class="fa fa-caret-right" aria-hidden="true"></i>Video Conference</a></li>
                                        <li class="mini_list_w3"><a href="#"> <i class="fa fa-caret-right" aria-hidden="true"></i>Chat </a></li>
										<li class="mini_list_w3"><a href="#"> <i class="fa fa-caret-right" aria-hidden="true"></i>Project Allotement </a></li>
										
									</ul>
								</li>--%>
								
								<li><a href="ViewDocument.aspx"> <i class="fa fa-line-chart" aria-hidden="true"></i> Document Section</a></li>
								<li><a href="Address_Book.aspx"><i class="fa fa-map-o" aria-hidden="true"></i>Address Book </a></li>
								<li><a href="Logout.aspx"><i class="fa fa-map-o" aria-hidden="true"></i>Log Out </a></li>
							</ul>
						</div>
                        <!-- /gn-scroller -->
					</nav>
				</li>
				<!-- //nav_agile_w3l -->
                <li class="second logo"><h1><a href="#"><i class="fa fa-graduation-cap" aria-hidden="true"></i>Virtual Office </a></h1></li>
					<li class="second admin-pic">
				      <%-- <ul class="top_dp_agile">
									<li class="dropdown profile_details_drop">
										<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
											<div class="profile_img">	
												<span class="prfil-img"> </span> 
											</div>	
										</a>
										<ul class="dropdown-menu drp-mnu">
											<li> <a href="#"><i class="fa fa-cog"></i> Settings</a> </li> 
											<li> <a href="#"><i class="fa fa-user"></i> Profile</a> </li> 
											<li> <a href="#"><i class="fa fa-sign-out"></i> Logout</a> </li>
										</ul>
									</li>
									
						</ul>--%>
				</li>
				<li class="second top_bell_nav">
				   <ul class="top_dp_agile ">
									<%--<li class="dropdown head-dpdn">
										<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true"><i class="fa fa-bell-o" aria-hidden="true"></i> <span class="badge blue">4</span></a>
										<ul class="dropdown-menu">
											<li>
												<div class="notification_header">
													<h3>Your Notifications</h3>
												</div>
											</li>
											<li><a href="#">
												<div class="user_img"><img src="images/a3.jpg" alt=""></div>
											   <div class="notification_desc">
											     <h6>John Smith</h6>
												<p>Lorem ipsum dolor</p>
												<p><span>1 hour ago</span></p>
												</div>
											  <div class="clearfix"></div>	
											 </a></li>
											 <li class="odd"><a href="#">
												<div class="user_img"><img src="images/a1.jpg" alt=""></div>
											   <div class="notification_desc">
											     <h6>Jasmin Leo</h6>
												<p>Lorem ipsum dolor</p>
												<p><span>3 hour ago</span></p>
												</div>
											   <div class="clearfix"></div>	
											 </a></li>
											 <li><a href="#">
												<div class="user_img"><img src="images/a2.jpg" alt=""></div>
											   <div class="notification_desc">
											     <h6>James Smith</h6>
												<p>Lorem ipsum dolor</p>
												<p><span>2 hour ago</span></p>
												</div>
											   <div class="clearfix"></div>	
											 </a></li>
											  <li><a href="#">
												<div class="user_img"><img src="images/a4.jpg" alt=""></div>
											   <div class="notification_desc">
											     <h6>James Smith</h6>
												<p>Lorem ipsum dolor</p>
												<p><span>1 hour ago</span></p>
												</div>
											   <div class="clearfix"></div>	
											 </a></li>
											 <li>
												<div class="notification_bottom">
													<a href="#">See all Notifications</a>
												</div> 
											</li>
										</ul>
									</li>--%>
									
						</ul>
				</li>
				<li class="second top_bell_nav">
				   <ul class="top_dp_agile ">
									<%--<li class="dropdown head-dpdn">
										<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true"><i class="fa fa-envelope-o" aria-hidden="true"></i> <span class="badge blue">3</span></a>
										<ul class="dropdown-menu">
											<li>
												<div class="notification_header">
													<h3>Your Messages</h3>
												</div>
											</li>
											<li><a href="#">
												<div class="user_img"><img src="images/a3.jpg" alt=""></div>
											   <div class="notification_desc">
											     <h6>John Smith</h6>
												<p>Lorem ipsum dolor</p>
												<p><span>3 hour ago</span></p>
												</div>
											  <div class="clearfix"></div>	
											 </a></li>
											 <li class="odd"><a href="#">
												<div class="user_img"><img src="images/a1.jpg" alt=""></div>
											   <div class="notification_desc">
											     <h6>Jasmin Leo</h6>
												<p>Lorem ipsum dolor</p>
												<p><span>2 hour ago</span></p>
												</div>
											   <div class="clearfix"></div>	
											 </a></li>
											 <li><a href="#">
												<div class="user_img"><img src="images/a2.jpg" alt=""></div>
											   <div class="notification_desc">
											     <h6>James Smith</h6>
												<p>Lorem ipsum dolor</p>
												<p><span>1 hour ago</span></p>
												</div>
											   <div class="clearfix"></div>	
											 </a></li>
											 <li>
												<div class="notification_bottom">
													<a href="#">See all Messages</a>
												</div> 
											</li>
										</ul>
									</li>--%>
									
						</ul>
				</li>
				<li class="second top_bell_nav">
				   <ul class="top_dp_agile ">
<%--				       <li class="dropdown head-dpdn">
										<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-tasks"></i><span class="badge blue">9</span></a>
										<ul class="dropdown-menu">
											<li>
												<div class="notification_header">
													<h3>You have 4 Pending tasks</h3>
												</div>
											</li>
											<li><a href="#">
												<div class="task-info">
													<span class="task-desc">Database update</span><span class="percentage">40%</span>
													<div class="clearfix"></div>	
												</div>
												<div class="progress progress-striped active">
													<div class="bar yellow" style="width:40%;"></div>
												</div>
											</a></li>
											<li><a href="#">
												<div class="task-info">
													<span class="task-desc">Dashboard done</span><span class="percentage">90%</span>
												   <div class="clearfix"></div>	
												</div>
												<div class="progress progress-striped active">
													 <div class="bar green" style="width:90%;"></div>
												</div>
											</a></li>
											<li><a href="#">
												<div class="task-info">
													<span class="task-desc">Mobile App</span><span class="percentage">33%</span>
													<div class="clearfix"></div>	
												</div>
											   <div class="progress progress-striped active">
													 <div class="bar red" style="width: 33%;"></div>
												</div>
											</a></li>
											<li><a href="#">
												<div class="task-info">
													<span class="task-desc">Issues fixed</span><span class="percentage">80%</span>
												   <div class="clearfix"></div>	
												</div>
												<div class="progress progress-striped active">
													 <div class="bar  blue" style="width: 80%;"></div>
												</div>
											</a></li>
											<li>
												<div class="notification_bottom">
													<a href="#">See all pending tasks</a>
												</div> 
											</li>
										</ul>
									</li>	--%>
								</ul>
				</li>

				
			

			</ul>
			<!-- //nav -->
			
		</div>
		<div class="clearfix"></div> 	
				<div class="inner_content">  
                    					<div class="inner_content_w3_agile_info two_in"> 			 

														<div class="forms-main_agileits">													
															
													  				<div class="forms-inner">  													
												
																				<div class="wthree_general">
																				
																				
																						<div class="grid-1 graph-form agile_info_shadow">
																						 <h3>Personal  Details </h3> <br />
																						   <div class="form-horizontal">
																									<div class="form-group">
																										<label class="col-md-2 control-label">First Name</label>
																										<div class="col-md-4">
																											<div class="input-group">							
																												
                                                                                                                <asp:TextBox ID="TextBox1" CssClass="form-control" required="" placholder="First Name" runat="server"></asp:TextBox>
                                                                                                                
																											</div>
                                                                                                            </div>
                                                                                                        <label class="col-md-2 control-label">Last Name</label>
																										<div class="col-md-4">
																											<div class="input-group">							
																											
                                                                                                                <asp:TextBox ID="TextBox2" CssClass="form-control" required="" placehoder="Last Name " runat="server"></asp:TextBox>
																											</div>
                                                                                                            </div>                                                                                                       
																									</div>  
                                                                                               	<div class="form-group">
																										<label class="col-md-2 control-label">Father Name</label>
																										<div class="col-md-4">
																											<div class="input-group">							
																												
																											 <asp:TextBox ID="TextBox3" CssClass="form-control" placehoder=" Father Name " required="" runat="server"></asp:TextBox>
																											</div>
                                                                                                            </div>
                                                                                                        <label class="col-md-2 control-label">Mother Name</label>
																										<div class="col-md-4">
																											<div class="input-group">							
																												
																												 <asp:TextBox ID="TextBox4" CssClass="form-control" placehoder=" Mother Name " required=""  runat="server"></asp:TextBox>
																											</div>
                                                                                                            </div>                                                                                                       
																									</div> 
                                                                                                	<div class="form-group">
																										<label class="col-md-2 control-label">Email ID </label>
																										<div class="col-md-4">
																											<div class="input-group">							
																												
																											 <asp:TextBox ID="TextBox23" CssClass="form-control" placehoder="Email ID " required="" runat="server"></asp:TextBox>
																											</div>
                                                                                                            </div>
                                                                                                        <label class="col-md-2 control-label">Alternate Email ID</label>
																										<div class="col-md-4">
																											<div class="input-group">							
																												
																												 <asp:TextBox ID="TextBox24" CssClass="form-control"  placehoder="Alternate Email ID " runat="server"></asp:TextBox>
																											</div>
                                                                                                            </div>                                                                                                       
																									</div> 
                                                                                                	<div class="form-group">
																										<label class="col-md-2 control-label">Phone Number</label>
																										<div class="col-md-4">
																											<div class="input-group">							
																												
																											 <asp:TextBox ID="TextBox25"    MaxLength="10" CssClass="form-control" placehoder="Phone Number " required="" runat="server"></asp:TextBox>
																											</div>
                                                                                                            </div>
                                                                                                        <label class="col-md-2 control-label">Alternate Phone Number</label>
																										<div class="col-md-4">
																											<div class="input-group">							
																												
																												 <asp:TextBox ID="TextBox26" MaxLength="10" CssClass="form-control" placehoder="Alternate Phone Number " runat="server"></asp:TextBox>
																											</div>
                                                                                                            </div>                                                                                                       
																									</div> 

                                                                                               	<div class="form-group">
																										<label class="col-md-2 control-label">Date Of Birth</label>
																										<div class="col-md-4">
																											<div class="input-group">							
																												
																												 <asp:TextBox ID="TextBox5" required="" CssClass="form-control" TextMode="Date" runat="server"></asp:TextBox>
																											</div>
                                                                                                            </div>
                                                                                                        <label class="col-md-2 control-label">Gender</label>
																										<div class="col-md-4">
																											<div class="input-group">							
                                                                                                                <asp:RadioButtonList ID="RadioButtonList1" required="" runat="server" RepeatDirection="Horizontal" Height="16px" Width="235px">
                                                                                                                    <asp:ListItem>&nbsp;&nbsp;Male</asp:ListItem>
                                                                                                                    <asp:ListItem>&nbsp;&nbsp;Female</asp:ListItem>
                                                                                                                    <asp:ListItem>&nbsp;&nbsp;Other</asp:ListItem>
                                                                                                                </asp:RadioButtonList>
																											</div>
                                                                                                            </div>                                                                                                       
																									</div> 
                                                                                               	<div class="form-group">
																										<label class="col-md-2 control-label">Blood Group</label>
																										<div class="col-md-4">
																											<div class="input-group">							
																											
																												 <asp:TextBox ID="TextBox7" CssClass="form-control" placehoder="Blood Group " runat="server"></asp:TextBox>
																											</div>
                                                                                                            </div>
                                                                                                        <label class="col-md-2 control-label">PAN Number </label>
                                                                                                       <div class="col-md-4">
																											<div class="input-group">							
																											
																												 <asp:TextBox ID="TextBox27"  CssClass="form-control" placehoder="ABCD6767F" required="" runat="server"></asp:TextBox>
																											</div>
                                                                                                            </div>
																										                                                                                                     
																									</div> 
                                                                                               <h3>Communication Address </h3> <br />
                                                                                               <div class="form-group">
																										
                                                                                                        <label class="col-md-2 control-label">Address</label>
																										<div class="col-md-4">
																											<div class="input-group">							
																												
																												 <asp:TextBox ID="TextBox17" CssClass="form-control" style="resize:none" placehoder=" Address of communication" required="" TextMode="MultiLine" runat="server"></asp:TextBox>
																											</div>
                                                                                                            </div>    
                                                                                                    <label class="col-md-2 control-label">Country</label>
																										<div class="col-md-4">
																											<div class="input-group">							
																												
                                                                                                                <asp:DropDownList ID="DropDownList1" runat="server">
                                                                                                                    <asp:ListItem>--Select--</asp:ListItem>
                                                                                                                    <asp:ListItem>India</asp:ListItem>
                                                                                                                    <asp:ListItem>Nepal</asp:ListItem>
                                                                                                                    <asp:ListItem>America</asp:ListItem>
                                                                                                                    <asp:ListItem>sriLanka</asp:ListItem>
                                                                                                                    <asp:ListItem>Bhutan</asp:ListItem>
                                                                                                                    <asp:ListItem>Bangladesh</asp:ListItem>
                                                                                                                </asp:DropDownList>
																											</div>
                                                                                                            </div>                                                                                                     
																									</div>
                                                                                               	<div class="form-group">
																										<label class="col-md-2 control-label">State</label>
																										<div class="col-md-4">
																											<div class="input-group">							
																												
                                                                                                                <asp:DropDownList ID="DropDownList2" runat="server">
                                                                                                                    <asp:ListItem>--Select--</asp:ListItem>
                                                                                                                    <asp:ListItem>Uttar Pradesh</asp:ListItem>
                                                                                                                    <asp:ListItem>Madhya Pradesh</asp:ListItem>
                                                                                                                    <asp:ListItem>Haryana</asp:ListItem>
                                                                                                                    <asp:ListItem>Colombo</asp:ListItem>
                                                                                                                    <asp:ListItem>Kathamandu</asp:ListItem>
                                                                                                                    <asp:ListItem>Daka</asp:ListItem>
                                                                                                                    <asp:ListItem>New York</asp:ListItem>
                                                                                                                </asp:DropDownList>
																											</div>
                                                                                                            </div>
                                                                                                        <label class="col-md-2 control-label">City</label>
																										<div class="col-md-4">
																											<div class="input-group">							
																												
																												 <asp:TextBox ID="TextBox10" CssClass="form-control" placehoder="City " required="" runat="server"></asp:TextBox>
																											</div>
                                                                                                            </div>                                                                                                       
																									</div> 
                                                                                               	<div class="form-group">
																										
                                                                                                        <label class="col-md-2 control-label">Pin Code</label>
																										<div class="col-md-4">
																											<div class="input-group">							
																												
																												 <asp:TextBox ID="TextBox12" MaxLength="6" CssClass="form-control" placehoder="Pincode " required="" runat="server"></asp:TextBox>
																											</div>
                                                                                                            </div>                                                                                                       
																									</div> 
                                                                                                   <asp:CheckBox ID="CheckBox1" OnCheckedChanged="CheckBox1_CheckedChanged" runat="server" Text="If Address Is same As Above " AutoPostBack="True" Font-Bold="True" />  

                                                                                                <h3>Permanent Address </h3>     <br />
                                                                                               <div class="form-group">
																										
                                                                                                        <label class="col-md-2 control-label">Address</label>
																										<div class="col-md-4">
																											<div class="input-group">							
																												
																												 <asp:TextBox ID="TextBox8" CssClass="form-control" style="resize:none" required="" placehoder=" Address of communication" TextMode="MultiLine" runat="server"></asp:TextBox>
																											</div>
                                                                                                            </div>    
                                                                                                    <label class="col-md-2 control-label">Country</label>
																										<div class="col-md-4">
																											<div class="input-group">							
																												 <asp:DropDownList ID="DropDownList3" runat="server">
                                                                                                                    <asp:ListItem>--Select--</asp:ListItem>
                                                                                                                    <asp:ListItem>India</asp:ListItem>
                                                                                                                    <asp:ListItem>Nepal</asp:ListItem>
                                                                                                                    <asp:ListItem>America</asp:ListItem>
                                                                                                                    <asp:ListItem>sriLanka</asp:ListItem>
                                                                                                                    <asp:ListItem>Bhutan</asp:ListItem>
                                                                                                                    <asp:ListItem>Bangladesh</asp:ListItem>
                                                                                                                </asp:DropDownList>
																											</div>
                                                                                                            </div>                                                                                                     
																									</div>
                                                                                               	<div class="form-group">
																										<label class="col-md-2 control-label">State</label>
																										<div class="col-md-4">
																											<div class="input-group">							
																												 <asp:DropDownList ID="DropDownList4" runat="server">
                                                                                                                    <asp:ListItem>--Select--</asp:ListItem>
                                                                                                                    <asp:ListItem>Uttar Pradesh</asp:ListItem>
                                                                                                                    <asp:ListItem>Madhya Pradesh</asp:ListItem>
                                                                                                                    <asp:ListItem>Haryana</asp:ListItem>
                                                                                                                    <asp:ListItem>Colombo</asp:ListItem>
                                                                                                                    <asp:ListItem>Kathamandu</asp:ListItem>
                                                                                                                    <asp:ListItem>Daka</asp:ListItem>
                                                                                                                    <asp:ListItem>New York</asp:ListItem>
                                                                                                                </asp:DropDownList>
																											</div>
                                                                                                            </div>
                                                                                                        <label class="col-md-2 control-label">City</label>
																										<div class="col-md-4">
																											<div class="input-group">							
																												
																												 <asp:TextBox ID="TextBox20" CssClass="form-control" placehoder="City "  required="" runat="server"></asp:TextBox>
																											</div>
                                                                                                            </div>                                                                                                       
																									</div> 
                                                                                               	<div class="form-group">
																										
                                                                                                        <label class="col-md-2 control-label">Pin Code</label>
																										<div class="col-md-4">
																											<div class="input-group">							
																												
																												 <asp:TextBox ID="TextBox22" CssClass="form-control" placehoder="Pincode " MaxLength="6" required="" runat="server"></asp:TextBox>
																											</div>
                                                                                                            </div>                                                                                                       
																									</div> 

                                                                                               <h3>Official Use</h3>

                                                                                               
                                                                                               	<div class="form-group"> 																									
                                                                                                        <label class="col-md-2 control-label">Date Of Joining </label>
																										<div class="col-md-4">
																											<div class="input-group">							
																												
																												 <asp:TextBox ID="TextBox16" required="" CssClass="form-control" placehoder=" " TextMode="Date" runat="server"></asp:TextBox>
																											</div>
                                                                                                            </div>                                                                                                       
																									</div>
                                                                                          <Center>     <asp:Button ID="Button1" runat="server" CssClass="btn btn-success" Text="Submit" OnClick="Button1_Click"  /></Center>




                                                                                                </div>
																						
																				</div>
																			</div>
																			
																		</div>
																
																</div> 
														
						
				    </div>
				</div>
		<!-- //inner_content-->
	</div>
<!-- banner -->
<!--copy rights start here-->
<div class="copyrights">
	 <p>© 2017 Esteem. All Rights Reserved | Design by  <a href="http://w3layouts.com/" target="_blank">W3layouts</a> </p>
</div>	
<!--copy rights end here-->
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

<script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
    </div>
    </form>
</body>
</html>
