<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" MasterPageFile="~/Site1.Master" Inherits="VisaStatusKuwait.ContactUs" %>

<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">

<!-- breadcrumb start here -->
<div class="bread-crumb">
	<div class="container">
		<h2>Contact	 us</h2>
		<ul class="list-inline">
			<li><a href="Default.aspx">home</a></li>
			<li><a href="#">Contact us</a></li>
		</ul>
	</div>
</div>
<!-- breadcrumb end here -->
<!-- main container start here -->
<div class="contacts">
	<div class="map">
		<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1781287.9418056556!2d46.41424522839003!3d29.309387235152347!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3fc5363fbeea51a1%3A0x74726bcd92d8edd2!2sKuwait!5e0!3m2!1sen!2sin!4v1628076720166!5m2!1sen!2sin" 
			width="100%" height="300" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
			
	<div class="container">
		<div class="row">
			<div class="placetop col-sm-12">
				<div class="row">
					<div class="places">
						<h1>Get in Touch</h1>
						<hr>
						</div>
					
					<div class="clearfix"></div>
					
					<form method="post" enctype="multipart/form-data">
						<div class="col-sm-6">
							<div class="form-group">
								<i class="fa fa-user"></i><input type="text" name="username" value="username" placeholder="username*" id="input-email" class="form-control" required="" />
							</div>
						</div>
						<div class="col-sm-6">
							<div class="form-group">
								<i class="fa fa-envelope"></i><input type="text" name="email" value="email" placeholder="email" id="email" class="form-control" required="" />
							</div>
						</div>
						<div class="col-sm-6">
							<div class="form-group">
								<i class="fa fa-pencil"></i><input type="text" name="subject" value="subject" placeholder="subject*" id="subject" class="form-control" required="" />
							</div>
						</div>
						<div class="col-sm-6">
							<div class="form-group">
								<i class="fa fa-globe"></i><input type="text" name="web" value="web" placeholder="website" id="web" class="form-control" required="" />
							</div>
						</div>
						<div class="col-sm-12">
							<div class="form-group">
								<i class="fa fa-pencil-square-o"></i><textarea class="form-control" id="message" name="message" placeholder="message" required=""></textarea>
							</div>
						</div>
						<div class="col-sm-12">
							<div class="form-group">
								<button type="submit" value="" class="btn btn-primary btn-block"><i class="fa fa-paper-plane" aria-hidden="true"></i>Send Message</button>
							</div>
						</div>
					</form>
					
					<div class="clearfix"></div>
					
					<div class="col-sm-4 matter">
						<i class="fa fa-home" aria-hidden="true"></i>
						<div class="caption">	
							<h3>Address</h3>
							<p> 3 / 70, Viram Khand 3, Gomti Nagar,Lucknow - 226010</p>
						</div>	
					</div>
					<div class="col-sm-4 matter">
						<i class="fa fa-phone" aria-hidden="true"></i>	
						<div class="caption">	
							<h3>phone no.</h3>
							<p>(+91)700 772 2785  <br> (+91)522 351 8129</p>
						</div>
					</div>
					<div  class="col-sm-4 matter">
						<i class="fa fa-envelope" aria-hidden="true"></i>
						<div class="caption">	
							<h3>email</h3>
							<p>srenterprisesamit@gmail.com</p>
						</div>
					</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- main container end here -->
</asp:Content>