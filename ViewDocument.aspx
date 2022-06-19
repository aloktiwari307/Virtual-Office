<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmaster.Master" AutoEventWireup="true" CodeBehind="ViewDocument.aspx.cs" Inherits="Virtual_Office_Project.admin.ViewDocument" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

     <title>document </title>
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
							
							</div>
						</div>
			
					<div class="inner_content_w3_agile_info two_in">
                        <asp:Button ID="upload_document" OnClick="upload_document_Click" CssClass="btn btn-primary" runat="server" Text="Upload Document" />
					  <h2 class="w3_inner_tittle">Document List </h2>
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:TemplateField HeaderText="id" InsertVisible="False" SortExpression="id" Visible="False">
                                    <EditItemTemplate>
                                        <asp:Label runat="server" Text='<%# Eval("id") %>' ID="Label1"></asp:Label>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label runat="server" Text='<%# Bind("id") %>' ID="Label1"></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField DataField="doc_name" HeaderText="doc_name" SortExpression="doc_name"></asp:BoundField>
                                <asp:HyperLinkField DataNavigateUrlFields="doc_file" Text="Download" HeaderText="File"></asp:HyperLinkField>
                                <asp:CommandField ShowDeleteButton="True" HeaderText="Delete"></asp:CommandField>

                            </Columns>
                        </asp:GridView>

                        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:Virtual_OfficeConnectionString %>' SelectCommand="SELECT * FROM [document]"
                             DeleteCommand="delete from document where id=@id"></asp:SqlDataSource>
                    </div>
						
						</div>

</asp:Content>
