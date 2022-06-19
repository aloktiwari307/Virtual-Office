<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmaster.Master" AutoEventWireup="true" CodeBehind="Employee_Full_details.aspx.cs" Inherits="Virtual_Office_Project.admin.Employee_Full_details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

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
    <style>
        .tab{
            padding:10px;
          
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="inner_content">  
    <div class="inner_content_w3_agile_info two_in"> 
        <div class="forms-main_agileits">	
         <div class="forms-inner"> 
             <div class="wthree_general"> <center>
                   <h3>Employee Details</h3>
                                          </center>
               
              <div class="grid-1 graph-form agile_info_shadow">
                  <table style="width:70%;">
                       <tr>
                          <td><h3> Personal  Details </h3> </td>

                      </tr>
                      <tr>
                          <td  class="tab"> <asp:Label ID="Label1" runat="server" Text="Full Name" Font-Bold="True"></asp:Label> </td>
                          <td class="tab"> <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label> </td>
                           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         <%-- <td class="tab"> <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="Label"></asp:Label> </td>
                          <td class="tab"> <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label> </td>--%>
                      </tr>
                      <tr>
                          <td class="tab"> <asp:Label ID="Label5" runat="server" Font-Bold="True" Text="Father Name"></asp:Label> </td>
                          <td class="tab"> <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label> </td>
                      
                          <td class="tab"> <asp:Label ID="Label7" runat="server" Font-Bold="True" Text="Mother Name"></asp:Label> </td>
                          <td class="tab"> <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label> </td>
                      </tr>
                      <tr>
                          <td class="tab"> <asp:Label ID="Label9" runat="server" Font-Bold="True" Text="Mobile Number "></asp:Label> </td>
                          <td class="tab"> <asp:Label ID="Label10" runat="server"  Text="Label"></asp:Label> </td>
                          <td class="tab"> <asp:Label ID="Label11" runat="server" Font-Bold="True" Text="Alternate Number"></asp:Label> </td>
                          <td class="tab"> <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label> </td>
                      </tr>
                                            <tr>
                          <td class="tab"> <asp:Label ID="Label13" runat="server" Font-Bold="True" Text="Email  "></asp:Label> </td>
                          <td class="tab"> <asp:Label ID="Label14" runat="server" Text="Label"></asp:Label> </td>
                          <td class="tab"> <asp:Label ID="Label15" runat="server" Font-Bold="True" Text="Alternate Email"></asp:Label> </td>
                          <td class="tab"> <asp:Label ID="Label16" runat="server" Text="Label"></asp:Label> </td>
                      </tr>
                                            <tr>
                          <td class="tab"> <asp:Label ID="Label17" runat="server" Font-Bold="True" Text="Date of Birth "></asp:Label> </td>
                          <td class="tab"> <asp:Label ID="Label18" runat="server" Text="Label"></asp:Label> </td>
                          <td class="tab"> <asp:Label ID="Label19" runat="server" Font-Bold="True" Text="Gender"></asp:Label> </td>
                          <td class="tab"> <asp:Label ID="Label20" runat="server" Text="Label"></asp:Label> </td>
                      </tr>
                          <tr>
                          <td class="tab"> <asp:Label ID="Label21" runat="server" Font-Bold="True" Text="Blood Group "></asp:Label> </td>
                          <td class="tab"> <asp:Label ID="Label22" runat="server" Text="Label"></asp:Label> </td>
                          <td class="tab"> <asp:Label ID="Label23" runat="server" Font-Bold="True" Text="PAN CARD Number"></asp:Label> </td>
                          <td class="tab"> <asp:Label ID="Label24" runat="server" Text="Label"></asp:Label> </td>
                      </tr>
                      <tr>
                          <td><h3> Communication Details </h3> </td>

                      </tr>
                       <tr>
                          <td class="tab"> <asp:Label ID="Label25" runat="server" Font-Bold="True" Text="Address"></asp:Label> </td>
                          <td class="tab"> <asp:Label ID="Label26" runat="server" Text="Label"></asp:Label> </td>
                          <td class="tab"> <asp:Label ID="Label27" runat="server" Font-Bold="True" Text="Country"></asp:Label> </td>
                          <td class="tab"> <asp:Label ID="Label28" runat="server" Text="Label"></asp:Label> </td>
                      </tr>
                       <tr>
                          <td class="tab"> <asp:Label ID="Label29" runat="server" Font-Bold="True" Text="State"></asp:Label> </td>
                          <td class="tab"> <asp:Label ID="Label30" runat="server" Text="Label"></asp:Label> </td>
                          <td class="tab"> <asp:Label ID="Label31" runat="server" Font-Bold="True" Text="City"></asp:Label> </td>
                          <td class="tab"> <asp:Label ID="Label32" runat="server" Text="Label"></asp:Label> </td>
                      </tr>
                       <tr>
                          <td class="tab"> <asp:Label ID="Label33" runat="server" Font-Bold="True" Text="Pin Code"></asp:Label> </td>
                          <td class="tab"> <asp:Label ID="Label34" runat="server" Text="Label"></asp:Label> </td>
                       
                      </tr>
                      <tr>
                          <td><h3>Permanent Communication Details </h3> </td>

                      </tr>
                       
                       <tr>
                          <td class="tab"> <asp:Label ID="Label35" runat="server" Font-Bold="True" Text="Address"></asp:Label> </td>
                          <td class="tab"> <asp:Label ID="Label36" runat="server" Text="Label"></asp:Label> </td>
                          <td class="tab"> <asp:Label ID="Label37" runat="server" Font-Bold="True" Text="Country"></asp:Label> </td>
                          <td class="tab"> <asp:Label ID="Label38" runat="server" Text="Label"></asp:Label> </td>
                      </tr>
                       <tr>
                          <td class="tab"> <asp:Label ID="Label39" runat="server" Font-Bold="True"  Text="State"></asp:Label> </td>
                          <td class="tab"> <asp:Label ID="Label40" runat="server" Text="Label"></asp:Label> </td>
                          <td class="tab"> <asp:Label ID="Label41" runat="server" Font-Bold="True" Text="City"></asp:Label> </td>
                          <td class="tab"> <asp:Label ID="Label42" runat="server" Text="Label"></asp:Label> </td>
                      </tr>
                       <tr>
                          <td class="tab"> <asp:Label ID="Label43" runat="server" Font-Bold="True" Text="Pin Code"></asp:Label> </td>
                          <td class="tab"> <asp:Label ID="Label44" runat="server" Text="Label"></asp:Label> </td>
                       
                      </tr>
                      <br />
                      <tr>
                          <td class="tab"> <asp:Label ID="Label45" runat="server" Font-Bold="True" Text="Date Of Joining"></asp:Label> </td>
                          <td class="tab"> <asp:Label ID="Label46" runat="server" Text="Label"></asp:Label> </td>
                       
                      </tr>
                  </table>




</div>    </div>

         </div>

        </div> 
				    </div>
				</div>
    



</asp:Content>
