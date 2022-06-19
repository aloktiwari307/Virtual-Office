<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmaster.Master" AutoEventWireup="true" CodeBehind="chat.aspx.cs" Inherits="Virtual_Office_Project.admin.chat" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="inner_content"> 			  
<div class="inner_content_w3_agile_info two_in">
    <div class="forms-main_agileits">
  
	<div class="graph-form agile_info_shadow">
        <div class="form-body">
            <div>
                <table>
<tr>
<td colspan="2">
<asp:Image ID="Image1" runat="server" ImageUrl="" /></td>
</tr>
<tr>
<td style="width: 100px; text-align: right">
</td>
<strong><span style="font-size: 20px; color: #0000cc">Chat Application  &nbsp;&nbsp;
</span></strong></td>
</tr>
<tr>
<td style="width: 100px; text-align: right">
<strong>UserName</strong>:</td>
<td style="width: 150px">
<asp:TextBox ID="txtname" runat="server"></asp:TextBox> <asp:DropDownList ID="DropDownList1" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" runat="server" DataSourceID="SqlDataSource1" DataTextField="emp_user" DataValueField="emp_user">
    </asp:DropDownList>
    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:Virtual_OfficeConnectionString %>' SelectCommand="SELECT [emp_user] FROM [emp_register]"></asp:SqlDataSource>
    <asp:Button ID="addd" runat="server" OnClick="addd_Click" Text="ADD" Font-Bold="True" />
<asp:Label ID="lbluname" runat="server" Font-Bold="True" ForeColor="#004000"></asp:Label></td>
</tr>
<tr>
<td style="width: 100px; height: 260px">
</td>
<td style="width: 94px; height: 260px">
    <%--<asp:TextBox ID="txtmsg" runat="server" Height="250px" TextMode="MultiLine" Width="472px"></asp:TextBox>--%>
<iframe frameborder="no" height="315" scrolling="no" src="../onle chat/msg.aspx" width="515">
</iframe>

</td>
</tr>
<tr>
<td style="width: 100px; height: 77px;">
</td>
<td style="width: 94px; height: 77px;">
<table style="width: 480px">
<tr>
<td style="width: 100px; height: 50px;">
<asp:TextBox ID="txtsend" runat="server" Height="40px" TextMode="MultiLine" Width="384px"></asp:TextBox></td>
<td style="width: 100px; height: 50px;">
<asp:Button ID="Button1" runat="server" Height="47px"  OnClick="Button1_Click" Text="SEND"
Width="72px" Font-Bold="True" /></td>
</tr>
</table>
</td>
</tr>
</table>
       </div>   
        </div> 
	</div> 
    </div> 
</div>   		
</div>

</asp:Content>
