<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmaster.Master" AutoEventWireup="true" CodeBehind="viewemail.aspx.cs" Inherits="Virtual_Office_Project.admin.viewemail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <title>My Blog ::</title>
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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="inner_content"> 			  
<div class="inner_content_w3_agile_info two_in">
    <asp:LinkButton ID="back" OnClick="back_Click" runat="server">Back</asp:LinkButton>
    <div class="forms-main_agileits">  
	<div class="graph-form agile_info_shadow">
        <div class="form-body">
            <div>
                 <br />
                 <div class="form-group">
                     <asp:Label ID="Label4" runat="server" Text="From :" Font-Bold="True"> </asp:Label> 
                 <asp:Label ID="Label1" runat="server" Text="Label"> </asp:Label>
   </div>
 <div class="form-group" >
     <asp:Label ID="Label5" runat="server" Text="TO :" Font-Bold="True"></asp:Label>
    <asp:Label ID="Label2" runat="server" Text="Label"> </asp:Label>
   </div> 
                 
  <div class="form-group">
      <asp:Label ID="Label23" runat="server" Text="Subject" Font-Bold="True"> </asp:Label>
    <h5><p><asp:Label ID="Label3" runat="server" Text="Label"> </asp:Label></p></h5>
   </div>  
                 <div class="form-group">
                    
    <h5><p><asp:Label ID="Label6" runat="server" Text="Label"> </asp:Label></p></h5>
   </div>               
    
  
       </div>   
        </div> 
	</div> 
    </div> 
</div>   		
</div>
</asp:Content>
