<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VisaStatus.aspx.cs" MasterPageFile="~/Site1.Master" Inherits="VisaStatusKuwait.VisaStatus" %>

<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">

<!-- breadcrumb start here -->
<div class="bread-crumb">
	<div class="container">
		<h2>Contact	 us</h2>
		<ul class="list-inline">
			<li><a href="Default.aspx">home</a></li>
			<li><a href="#">Visa Status</a></li>
		</ul>
	</div>
</div>
<!-- breadcrumb end here -->
<!-- main container start here -->
<div class="contacts">
	<div class="container">
		<div class="row">
			<div class="placetop col-sm-12">
				<div class="row">
					<div class="places">
						<h1>Info About Visa</h1>
						<hr>
						</div>
					
					<div class="clearfix"></div>
					<div class="col-sm-6" style="background-color:darkslateblue; margin-left:20%; margin-right:20%">
					<form method="post" enctype="multipart/form-data" style="padding:10%" runat="server">
						<div class="col-sm-12">
							<div class="form-group col-sm-6">
								<asp:TextBox ID="NameTextBox" runat="server" placeholder="Name" required></asp:TextBox>
							</div>
					
							<div class="form-group col-sm-6">
								<asp:TextBox ID="PassportTextBox" runat="server" placeholder="Passport No" required></asp:TextBox>
							</div>
						</div>
						<div class="col-sm-6">
							<div class="form-group col-sm-6">
								<asp:TextBox ID="VisaTextBox" runat="server" placeholder="Visa No" required></asp:TextBox>
							</div>
						</div>
						<%--<div class="col-sm-6">
							<div class="form-group">
								<i class="fa fa-globe"></i><input type="text" name="dob" value="company" placeholder="Company" id="compny" class="form-control" required="" />
							</div>
						</div> --%>
						<%-- <div class="col-sm-12">
							<div class="form-group">
								<i class="fa fa-pencil-square-o"></i><textarea class="form-control" id="message" name="message" placeholder="message" required=""></textarea>
							</div>
						</div>--%>
						<div class="col-sm-6">
							<div class="form-group">
								 <%--<Button type="submit" OnClick="buttonsearch_Click" id="buttonsearch" value="search" OnClick="" class="btn btn-primary btn-block"><i class="fa fa-paper-plane" aria-hidden="true"></i>Search</Button>  --%>
								<asp:Button ID="Button1" runat="server" Text="Search" class="btn btn-primary btn-block" />
							</div>
						</div>
					</form>
					</div>
					<div class="clearfix"></div>

					<%-- <div class="form-group">
							<h1 style="text-align:center">Visa Status</h1>
							<div style="height:50px">&nbsp;</div>
							<div style="margin-left:200px">
								 <asp:GridView ID="GridView1" runat="server"></asp:GridView>

							</div> 
						</div>--%>
					 
    <div class="col-md-12">
             
                <div data-toggle="tooltip" title="Profile" class="well top-block" ><i
                    class="glyphicon glyphicon-user green"></i>
                    <div>
                         <div class="form-horizontal">
                    <fieldset>
                        <legend>Your Information</legend>
                        
                       <table class=" table table-bordered" style="font-size:9px">
                           <thead>
                               <tr style="background-color:gold">
                                   <th>SrNo</th>
                                    <th>Name</th>
                                   <th>VisaPdf</th>
                                   <th>FatherName</th>
                                   <th>AdharNo</th>
                                   <th>DoB</th>
                                   <th>PassportNo</th>
                                   <th>VisaNo</th>
                                   <th>Address</th>
                                   <th>VisaDuration</th>
                               </tr>
                           </thead>
                           <tbody>
                               <asp:Repeater ID="Repeater2" runat="server">
                                   <ItemTemplate>
                                       
                               <tr> 
                                    <td><%#(((RepeaterItem)Container).ItemIndex+1).ToString()%></td>
                                  

                                    <td><%#Eval("Name") %></td>
                                    <td style="max-width:200px!important"><%#Eval("VisaPdf") %></td>
                                    <td><%#Eval("FatherName") %></td>
                                    <td><%#Eval("AdharNo") %></td>
                                    <td><%#Eval("DoB") %></td>
                                    <td><%#Eval("PassportNo") %></td>
                                    <td><%#Eval("VisaNo") %></td>
                                    <td><%#Eval("Address") %></td>
                                    <td><%#Eval("VisaDuration") %></td>
                                    
                                    
                               </tr>
                                       </ItemTemplate>
                               </asp:Repeater>
                           </tbody>
                       </table>
                       <div class="clearfix"><br />
                       </div>
                     
                    </fieldset>
                   
                </div>
                    </div>
                   
                </div>
            
            </div>


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
<!-- main container end here -->
</asp:Content>