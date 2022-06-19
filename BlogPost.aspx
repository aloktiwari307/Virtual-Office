<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmaster.Master" AutoEventWireup="true" CodeBehind="BlogPost.aspx.cs" Inherits="Virtual_Office_Project.admin.BlogPost" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

     <title>Blog </title>
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
				  
						<div class="w3l_agileits_breadcrumbs">
							<div class="w3l_agileits_breadcrumbs_inner">
								<ul>
									<h3>Search</h3>
                                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox> <asp:Button ID="search" OnClick="search_Click" runat="server" Text="Search" />
								</ul>
							</div>
						</div>
			
					<div class="inner_content_w3_agile_info two_in">
					  <h2 class="w3_inner_tittle">Blog LIST </h2>
                        <asp:GridView ID="GridView2" CssClass="w3l-table-info agile_info_shadow" runat="server" DataKeyNames="id" AutoGenerateColumns="False">
                                                    <Columns>
                                                        <asp:TemplateField>
                                                            <HeaderTemplate>
                                                                <h4> Sr No </h4>
                                                                
                                                            </HeaderTemplate>
                                                            <ItemTemplate>
                                                             <%#Container.DataItemIndex+1 %>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                         <asp:TemplateField>
                                                            <HeaderTemplate>
                                                                <h4>Subject</h4>
                                                            </HeaderTemplate>
                                                            <ItemTemplate>
                                                              <%#Eval("topic") %>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                         <asp:TemplateField>
                                                            <HeaderTemplate>
                                                                <h4>Posted Date</h4>
                                                            </HeaderTemplate>
                                                            <ItemTemplate>
                                                              <%#Eval("time") %>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                         <asp:TemplateField>
                                                            <HeaderTemplate>
                                                                <h4>Action</h4>
                                                            </HeaderTemplate>
                                                            <ItemTemplate>
                                                                <asp:LinkButton ID="LinkButton1" CommandArgument='<%#Eval("id") %>' OnClientClick="return confirm('Confirm')" OnClick="LinkButton1_Click" runat="server">Delete</asp:LinkButton>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                          <asp:TemplateField>
                                                            <HeaderTemplate>
                                                                <h4>Action</h4>
                                                            </HeaderTemplate>
                                                            <ItemTemplate>
                                                                <asp:LinkButton ID="LinkButton2" OnClick="LinkButton2_Click" CommandArgument='<%#Eval("id") %>'  runat="server">Read</asp:LinkButton>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                    </Columns>

                                                </asp:GridView>
                        <br />
									
                                                <asp:GridView ID="GridView1" CssClass="w3l-table-info agile_info_shadow" runat="server" DataKeyNames="id" AutoGenerateColumns="False">
                                                    <Columns>
                                                        <asp:TemplateField>
                                                            <HeaderTemplate>
                                                                <h4> Sr No </h4>
                                                                
                                                            </HeaderTemplate>
                                                            <ItemTemplate>
                                                             <%#Container.DataItemIndex+1 %>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                         <asp:TemplateField>
                                                            <HeaderTemplate>
                                                                <h4>Subject</h4>
                                                            </HeaderTemplate>
                                                            <ItemTemplate>
                                                              <%#Eval("topic") %>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                         <asp:TemplateField>
                                                            <HeaderTemplate>
                                                                <h4>Posted Date</h4>
                                                            </HeaderTemplate>
                                                            <ItemTemplate>
                                                              <%#Eval("time") %>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                         <asp:TemplateField>
                                                            <HeaderTemplate>
                                                                <h4>Action</h4>
                                                            </HeaderTemplate>
                                                            <ItemTemplate>
                                                                <asp:LinkButton ID="LinkButton1" CommandArgument='<%#Eval("id") %>' OnClientClick="return confirm('Confirm')" OnClick="LinkButton1_Click" runat="server">Delete</asp:LinkButton>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                          <asp:TemplateField>
                                                            <HeaderTemplate>
                                                                <h4>Action</h4>
                                                            </HeaderTemplate>
                                                            <ItemTemplate>
                                                                <asp:LinkButton ID="LinkButton2" OnClick="LinkButton2_Click" CommandArgument='<%#Eval("id") %>'  runat="server">Read</asp:LinkButton>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                    </Columns>

                                                </asp:GridView>
                                               
										 <%-- </table>--%>

                      


									
									
								</div>
						
						</div>


</asp:Content>
