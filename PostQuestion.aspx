<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmaster.Master" AutoEventWireup="true" CodeBehind="PostQuestion.aspx.cs" Inherits="Virtual_Office_Project.admin.PostQuestion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>E-Forume::</title>
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
    <div class="forms-main_agileits">
      <asp:Button ID="Button2" CssClass="btn btn-danger" OnClick="Button2_Click" runat="server" Text="View Question" /> 
           <asp:Button ID="Button1" CssClass="btn btn-success" OnClick="Button1_Click" runat="server" Text="Post Question" /> 
         <asp:Button ID="Button4" CssClass="btn btn-success"  runat="server" Text="Read Answer" /> 
	<div class="graph-form agile_info_shadow">
        <asp:Panel ID="Panel1" runat="server">
        <div class="form-body">
            <div> <br />
 <div class="form-group"> 
 <label for="exampleInputEmail1"> Question </label>                                                                             
   <asp:TextBox ID="TextBox2" CssClass="form-control"   runat="server"></asp:TextBox>
        
   </div>                
     <asp:Button ID="Button3" OnClick="Button3_Click"   runat="server" CssClass="btn btn-warning" Text="Post" />
       </div>   
        </div> 
             </asp:Panel>

        <asp:Panel ID="Panel2" runat="server">              
       
									
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
                                                                <h4>Question</h4>
                                                            </HeaderTemplate>
                                                            <ItemTemplate>
                                                              <%#Eval("question") %>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                         <asp:TemplateField>
                                                            <HeaderTemplate>
                                                                <h4>Answer</h4>
                                                            </HeaderTemplate>
                                                            <ItemTemplate>
                                                                <asp:LinkButton ID="LinkButton1" CommandArgument='<%#Eval("id")%>' OnClick="LinkButton1_Click" runat="server">Answer</asp:LinkButton>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                         <asp:TemplateField>
                                                            <HeaderTemplate>
                                                                <h4>Action</h4>
                                                            </HeaderTemplate>
                                                            <ItemTemplate>
                                                            <asp:LinkButton ID="LinkButton2" OnClick="LinkButton2_Click" OnClientClick="return Confirm('Confirm')" CommandArgument='<%#Eval("id") %>' runat="server">Delete</asp:LinkButton>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField>
                                                            <HeaderTemplate>
                                                                <h4>Action</h4>
                                                            </HeaderTemplate>
                                                            <ItemTemplate>
                                                            <asp:LinkButton ID="readanswer" OnClick="readanswer_Click" CommandArgument='<%#Eval("id") %>' runat="server">Read</asp:LinkButton>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                       
                                                       
                                                    </Columns>

                                                </asp:GridView>
                                               
										 <%-- </table>--%>

                      


									
							<%--		
								</div>
						
						</div>
          --%>



            
        </asp:Panel>
        


	</div> 
           
    </div> 
</div>   		
</div>
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
      


</asp:Content>
