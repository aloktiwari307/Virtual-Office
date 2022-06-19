<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmaster.Master" AutoEventWireup="true" CodeBehind="Address_Book.aspx.cs" Inherits="Virtual_Office_Project.admin.Address_Book" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    
    <title>Address Book::</title>
<!-- custom-theme -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Esteem Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //custom-theme -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" type="text/css" href="css/table-style.css" />
<link rel="stylesheet" type="text/css" href="css/basictable.css" />
<link href="css/component.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style_grid.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- font-awesome-icons -->
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome-icons -->
<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800" rel="stylesheet">




</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="inner_content">
				    <!-- /inner_content_w3_agile_info-->

					<!-- breadcrumbs -->
						<div class="w3l_agileits_breadcrumbs">
							<div class="w3l_agileits_breadcrumbs_inner"> s                              
							</div>
						</div>
					<!-- //breadcrumbs -->

					<div class="inner_content_w3_agile_info two_in">
					  <h2 class="w3_inner_tittle"></h2>
                        
                         <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="True"></asp:Label>
                        <asp:GridView ID="GridView1" CssClass="w3l-table-info agile_info_shadow" runat="server" AutoGenerateColumns="False">
                            <Columns>
                                <asp:TemplateField>
                                    <HeaderTemplate>
                                        <h4>Sr No.</h4>
                                    </HeaderTemplate>
                                    <ItemTemplate>
                                        <%# Container.DataItemIndex+1 %>

                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField>
                                   <HeaderTemplate>
                                       <h4>Name</h4>
                                   </HeaderTemplate>
                                    <ItemTemplate>
                                        <%#Eval("name") %>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField>
                                    <HeaderTemplate>
                                        Employee ID
                                    </HeaderTemplate>
                                    <ItemTemplate>
                                        <%#Eval("emp_id") %>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                  <asp:TemplateField>
                                    <HeaderTemplate>
                                        Employee Mail
                                    </HeaderTemplate>
                                    <ItemTemplate>
                                        <%#Eval("emp_user") %>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                  <asp:TemplateField>
                                    <HeaderTemplate>
                                        Mail
                                    </HeaderTemplate>
                                    <ItemTemplate>
                                 <asp:LinkButton ID="mail" OnClick="mail_Click" runat="server">Mail</asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                 <%-- <asp:TemplateField>
                                    <HeaderTemplate>
                                        Chat
                                    </HeaderTemplate>
                                    <ItemTemplate>
                                       <asp:LinkButton ID="chat" runat="server">Chat</asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>--%>
                            </Columns>
                        </asp:GridView>



                          </div>
        </div>






</asp:Content>
