<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmaster.Master" AutoEventWireup="true" CodeBehind="E_mail.aspx.cs" Inherits="Virtual_Office_Project.admin.E_mail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <title></title>
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
       <link rel="stylesheet" type="text/css" href="css/basictable.css" />
    <link rel="stylesheet" type="text/css" href="css/table-style.css" />
<!-- font-awesome-icons -->
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome-icons -->
<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800" rel="stylesheet">


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="inner_content"> 			  

					<div class="inner_content_w3_agile_info two_in">
					  <asp:Button ID="inbox" class="btn btn-primary"   runat="server" Text="Inbox" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                        <asp:Button ID="email"   class="btn btn-danger" runat="server" Text="Email Compose" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                        <asp:Button ID="sent_mail" class="btn btn-success" runat="server" Text="Sent" />

													<div class="forms-main_agileits">
														
															<div class="graph-form agile_info_shadow">
															 
																	<div class="form-body">
																		<div>
                                                                            <asp:Panel ID="Panel1" runat="server">    
                                                                                <asp:GridView ID="GridView1" CssClass="w3l-table-info agile_info_shadow" runat="server" AutoGenerateColumns="False">
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
                                                                <h4>Sender</h4>
                                                            </HeaderTemplate>
                                                            <ItemTemplate>
                                                              <%#Eval("sender") %>
                                                            </ItemTemplate>
                                                       s </asp:TemplateField>
                                                       <asp:TemplateField>
                                                            <HeaderTemplate>
                                                                <h4>Subject</h4>
                                                            </HeaderTemplate>
                                                            <ItemTemplate>
                                                              <%#Eval("subject") %>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>


                                                         <asp:TemplateField>
                                                            <HeaderTemplate>
                                                                <h4>View Email</h4>
                                                            </HeaderTemplate>
                                                            <ItemTemplate>
                                                                <asp:LinkButton ID="viewemail" CommandArgument='<%#Eval("id")%>' OnClick="viewemail_Click" runat="server">View Email</asp:LinkButton>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                         <asp:TemplateField>
                                                            <HeaderTemplate>
                                                                <h4>Delete</h4>
                                                            </HeaderTemplate>
                                                            <ItemTemplate>
                                                            <asp:LinkButton ID="deletebtn" OnClick="deletebtn_Click"  CommandArgument='<%#Eval("id") %>' runat="server">Delete</asp:LinkButton>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                       
                                                       
                                                    </Columns>





                                                                                </asp:GridView> 
                                                                               
                                                                                 
                                                                                
                                                                                
                                                                                                                                                       
                                                                            </asp:Panel>                                                                 
                                                                            
																	</div>

															</div>
																
																</div>  												
				    </div>
					
				</div>

        </div>
</asp:Content>
