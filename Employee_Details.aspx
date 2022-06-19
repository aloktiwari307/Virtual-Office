<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmaster.Master" AutoEventWireup="true" CodeBehind="Employee_Details.aspx.cs" Inherits="Virtual_Office_Project.admin.Employee_Details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <title>Employee</title>
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
							<div class="w3l_agileits_breadcrumbs_inner">
						 Search  : <asp:TextBox ID="TextBox1"  placeholder="Employee Name "  runat="server"></asp:TextBox> <asp:Button ID="search" OnClick="search_Click" runat="server" Text="Search" />
							</div>
						</div>
					<!-- //breadcrumbs -->

					<div class="inner_content_w3_agile_info two_in"> 
                        <asp:GridView ID="GridView2" CssClass="w3l-table-info agile_info_shadow" runat="server" AutoGenerateColumns="False" PageIndex="2">
        <Columns>
            <asp:TemplateField>
                <HeaderTemplate>
                    <h4>Sr. No</h4>
                </HeaderTemplate>
                <ItemTemplate>
                    <%#Container.DataItemIndex+1%>
                </ItemTemplate>
            </asp:TemplateField>
             <asp:TemplateField>
                <HeaderTemplate>
                    <h4>Name</h4>
                </HeaderTemplate>
                <ItemTemplate>
                    <%#Eval("name")%>
                </ItemTemplate>
            </asp:TemplateField>
             <asp:TemplateField>
                <HeaderTemplate>
                    <h4>User Name</h4>
                </HeaderTemplate>
                <ItemTemplate>
                    <%#Eval("emp_user")%>
                </ItemTemplate>
            </asp:TemplateField>
             <asp:TemplateField>
                <HeaderTemplate>
                    <h4>Department </h4>
                </HeaderTemplate>
                <ItemTemplate>
                    <%#Eval("emp_department")%>
                </ItemTemplate>
            </asp:TemplateField>
             <asp:TemplateField>
                <HeaderTemplate>
                    <h4>Employee ID</h4>
                </HeaderTemplate>
                <ItemTemplate>
                    <%#Eval("emp_id")%>
                </ItemTemplate>
            </asp:TemplateField>
             <asp:TemplateField>
                <HeaderTemplate>
                    <h4>Action</h4>
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton2" OnClick="LinkButton2_Click" CommandArgument='<%#Eval("id") %>' OnClientClick="return confirm('confirm')" runat="server">Delete</asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
             <asp:TemplateField>
                <HeaderTemplate>
                    <h4>View details</h4>
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" OnClick="LinkButton1_Click" runat="server">View details</asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>

        </Columns>
       

    </asp:GridView><br /> 
    <asp:GridView ID="GridView1" CssClass="w3l-table-info agile_info_shadow" runat="server" AutoGenerateColumns="False" PageIndex="2">
        <Columns>
            <asp:TemplateField>
                <HeaderTemplate>
                    <h4>Sr. No</h4>
                </HeaderTemplate>
                <ItemTemplate>
                    <%#Container.DataItemIndex+1%>
                </ItemTemplate>
            </asp:TemplateField>
             <asp:TemplateField>
                <HeaderTemplate>
                    <h4>Name</h4>
                </HeaderTemplate>
                <ItemTemplate>
                    <%#Eval("name")%>
                </ItemTemplate>
            </asp:TemplateField>
             <asp:TemplateField>
                <HeaderTemplate>
                    <h4>User Name</h4>
                </HeaderTemplate>
                <ItemTemplate>
                    <%#Eval("emp_user")%>
                </ItemTemplate>
            </asp:TemplateField>
             <asp:TemplateField>
                <HeaderTemplate>
                    <h4>Department </h4>
                </HeaderTemplate>
                <ItemTemplate>
                    <%#Eval("emp_department")%>
                </ItemTemplate>
            </asp:TemplateField>
             <asp:TemplateField>
                <HeaderTemplate>
                    <h4>Employee ID</h4>
                </HeaderTemplate>
                <ItemTemplate>
                    <%#Eval("emp_id")%>
                </ItemTemplate>
            </asp:TemplateField>
             <asp:TemplateField>
                <HeaderTemplate>
                    <h4>Action</h4>
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton2" OnClick="LinkButton2_Click" CommandArgument='<%#Eval("id") %>' OnClientClick="return confirm('confirm')" runat="server">Delete</asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
             <asp:TemplateField>
                <HeaderTemplate>
                    <h4>View details</h4>
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" CommandArgument='<%#Eval("id") %>' OnClick="LinkButton1_Click" runat="server">View details</asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>

        </Columns>
       

    </asp:GridView>
                        </div>
        </div>
    
</asp:Content>
