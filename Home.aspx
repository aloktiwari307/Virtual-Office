<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmaster.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Virtual_Office_Project.admin.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="inner_content">
				    <!-- /inner_content_w3_agile_info-->
					<div class="inner_content_w3_agile_info">
					<!-- /agile_top_w3_grids-->
					   <div class="agile_top_w3_grids">
					          <ul class="ca-menu">
									<li>
										<a href="#">
											
											<i class="fa fa-user" aria-hidden="true"></i>
											<div class="ca-content">
												<h4 class="ca-main">
                                                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></h4>
											<h3 class="ca-sub"><a href="Employee_Details.aspx">Register Employees </a> </h3>
											</div>
										</a>
									</li>
									<li>
										<a href="#">
										  <i class="fa fa-user" aria-hidden="true"></i>
											<div class="ca-content">
												<h4 class="ca-main one"></h4>
												<h3 class="ca-sub"><a href="BlogPost.aspx">Blog </a> </h3>
											</div>
										</a>
									</li>
									
									<li>
										<a href="#">
											<i class="fa fa-tasks" aria-hidden="true"></i>
											<div class="ca-content">
												<h4 class="ca-main three"><asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></h4>
												<h3 class="ca-sub three">
                                                    <a href="ViewDocument.aspx">Document </a>

												</h3>
											</div>
										</a>
									</li>
										<li>
										<a href="#">
											<i class="fa fa-clone" aria-hidden="true"></i>
											<div class="ca-content">
												<h4 class="ca-main four">
                                                    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
												</h4>
												<h3 class="ca-sub four">
                                                    <a href="PostQuestion.aspx">E-Forum </a>
												</h3>
											</div>
										</a>
									</li>
                                  	<li>
										<a href="#">
											<i class="fa fa-clone" aria-hidden="true"></i>
											<div class="ca-content">
												<h4 class="ca-main four">
                                                   
												</h4>
												<h3 class="ca-sub four">
                                                    <a href="Email.aspx">Compose Mail</a>
												</h3>
											</div>
										</a>
									</li>
									<div class="clearfix"></div>
								</ul>
					   </div>
					
							<div class="w3ls_agile_circle_progress agile_info_shadow">
							
								<div class="cir_agile_info ">
								<h3 class="w3_inner_tittle">Circular Progress</h3>
									  <div class="skill-grids">
											<div class="skills-grid text-center">
												<div class="circle" id="circles-1"></div>
												<p>Project</p>
											</div>
											<div class="skills-grid text-center">
												<div class="circle" id="circles-2"></div>
												<p>Blog</p>
											</div>
											<div class="skills-grid text-center">
												<div class="circle" id="circles-3"></div> 												
												<p>Notice</p>
											</div>
											<div class="skills-grid text-center">
												<div class="circle" id="circles-4"></div>
												<p>Registration</p>
											</div>
												
								
				
										 <div class="clearfix"></div>
										
								</div>
							</div>
						</div>
						<!-- /w3ls_agile_circle_progress-->
						
							 
					
				    </div>
				
				</div>
</asp:Content>
