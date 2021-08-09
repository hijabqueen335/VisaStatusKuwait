<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" MasterPageFile="~/Site1.Master" Inherits="VisaStatusKuwait.AdminLogin" %>

<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">

    
<!-- breadcrumb start here -->
<div class="bread-crumb">
	<div class="container">
		<h2>Admin Login</h2>
		<ul class="list-inline">
			<li><a href="Default.aspx">home</a></li>
			<li><a href="#">Admin Login</a></li>
			
		</ul>
	</div>
</div>
<!-- breadcrumb end here -->

<!-- checkout start here -->
	<div class="checkout">
		<div class="container">
			<div class="row">
				<form  id="bookingform" runat="server">	
				<div class="col-md-12 col-sm-12 col-xs-12">
					
					
					<div id="div1" runat="server">  
						<h3>Admin Login Here</h3>
						<fieldset>
							<div class="form-group required row">
								<div class="col-sm-7">
									<label>Username</label>
									<asp:TextBox ID="usernameTextBox" required CssClass="form-control" runat="server"></asp:TextBox>
							</div>
								
								<div class="col-sm-7">
									<label>Password</label>
									<asp:TextBox ID="passwordTextBox" required TextMode="Password" CssClass="form-control" runat="server"></asp:TextBox>
								</div>
								
							</div>
							<div class="pull-left">
						        <asp:Button ID="Button1" CssClass="btn-primary btn-block" OnClick="Button1_Click" runat="server" Text="Login" />
							</div>
						</fieldset>
					</div>
				</div>

				</form>
			</div>
		</div>
	</div>
<!-- checkout end here -->


</asp:Content>