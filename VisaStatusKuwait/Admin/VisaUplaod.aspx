<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VisaUplaod.aspx.cs" MasterPageFile="~/Admin/AdminSite1.Master" Inherits="VisaStatusKuwait.Admin.VisaStatus" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <div id="content" class="col-lg-10 col-sm-10">
        <!-- content starts -->
        <div>
            <ul class="breadcrumb">
                <li><a href="Home.aspx">Home</a> </li>
                <li><a href="#">Visa</a> </li>
            </ul>
        </div>
        
        <div class="row">
            <div class="col-md-12">
             
                <div data-toggle="tooltip" title="Profile" class="well top-block" ><i
                    class="glyphicon glyphicon-user green"></i>
                    <div style="text-align:left!important">
                         <div class="form-horizontal">
                    	
				
                    <fieldset>
                        <legend>Add New Visa List</legend>
                        
                      <%-- <div class="col-sm-6">
									<label>Spot Name</label>
                                     <asp:TextBox ID="SpotTextBox" required placeholder="Package Name" class="form-control" type="text" runat="server"></asp:TextBox>
								</div>--%>
                        <div class="col-sm-6">
									<label> Name</label>
                                     <asp:TextBox ID="NameTextBox"  placeholder="Name" class="form-control" type="text" runat="server"></asp:TextBox>
									
								</div>
                        <div class="col-sm-6">
									<label></label>
									<label>Father's Name </label>
                                     <asp:TextBox ID="FnameTextBox"  placeholder="Father's Name" class="form-control" type="text" runat="server"></asp:TextBox>
								</div>

                           
								<div class="col-sm-6">
									<label>Visa PDF</label>
                                    
									<asp:FileUpload ID="FileUpload1" runat="server" AllowMultiple="true"/>
                                    
                                    <asp:Label ID="Label1" runat="server"></asp:Label>
                                  
								</div>
                        
                                <div class="col-sm-6">
									<label>Adhar No</label>
									<asp:TextBox ID="AdharTextBox"  placeholder="Adhar Number" class="form-control" type="text" runat="server"></asp:TextBox>
								</div>

								<div class="col-sm-6">
									<label>Date of Birth</label>
									<asp:TextBox ID="DoBTextBox" required placeholder="Date of Birth" class="form-control" type="text" runat="server"></asp:TextBox>
								</div>
                          <div class="col-sm-6">
									<label>Passport No </label>
									<asp:TextBox ID="PassportTextBox"  placeholder="Passport Number" class="form-control" type="text"  runat="server"></asp:TextBox>
								</div>
                        <div class="col-sm-6">
									<label>Visa No</label>
									<asp:TextBox ID="VisaTextBox"  placeholder="Visa Number" class="form-control" type="text" runat="server"></asp:TextBox>
								</div>
                        
                         <div class="col-sm-6">
									<label>Address</label>
									<asp:TextBox ID="AddressTextBox"  placeholder="Address" class="form-control" type="text" runat="server"></asp:TextBox>
								</div>

						 <div class="col-sm-6">
									<label>Visa Status</label>
									<asp:TextBox ID="TourPriceTextBox"  placeholder="Visa Status" class="form-control" type="text" runat="server"></asp:TextBox>
								</div>

                         <div class="col-sm-12">
									<label>Visa Duration</label>
									<asp:TextBox ID="VisaDTextBox"  placeholder="Time duration of Visa" class="form-control" type="text" runat="server"></asp:TextBox>
								</div>
                        
                      <div class="col-sm-6">
                            <br />
                         
						        <asp:Button ID="packages" OnClick="packages_Click"  CssClass="btn btn-success btn-lg" runat="server" Text="Submit"  />
							
                            </div>
                           <div class="clearfix"><br />
                           </div>
                        <hr>


                    </fieldset>
                            </div>
                        </div>
                  </div>
                    </div>
                   
   
                </div>
          
              </div>
       <div>
    </div>
      
            <div class="col-md-6">
                <span class="alert-danger">
                    <asp:Literal ID="FailureText" runat="server"></asp:Literal>
                    <asp:HiddenField ID="HiddenField1" runat="server" />
                    <asp:HiddenField ID="HiddenField2" runat="server" />
                </span>
            </div>
            
        
   

   
    <!-- content ends -->
    <!--/#content.col-md-0-->
</asp:Content>
<asp:Content ID="content4" contentplaceholderid="ContentPlaceHolder4" runat="server">
    <div class="col-md-12">
             
                <div data-toggle="tooltip" title="Profile" class="well top-block" ><i
                    class="glyphicon glyphicon-user green"></i>
                    <div>
                         <div class="form-horizontal">
                    <fieldset>
                        <legend>Client List</legend>
                        
                       <table class=" table table-bordered" style="font-size:9px">
                           <thead>
                               <tr style="background-color:gold">
                                   <th>SrNo</th>
                                   <th>Delete</th>
                                    <th>Edit</th>
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
                                   <td>
                                      
                                   <asp:LinkButton ID="btnDelete" runat="server"  CommandArgument='<%#Eval("SrNo")%>' Text="Delete Packages">
                                  </asp:LinkButton>
                                           </td>
                                   <td>
                                       <asp:LinkButton ID="btnedit"  CommandArgument='<%# Eval("SrNo") %>' runat="server">Edit</asp:LinkButton></td>

                                  

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
</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder3">
    <div class="pull-right">
        <div id="lgdiv" runat="server">
            <ul>
                <li><a id="loginLink" class="btn btn-sm btn-success" runat="server" href="~/Login.aspx">Log in</a></li>
            </ul>
        </div>
        <div id="userdiv" runat="server">
            <p>
                Hello, <a id="A1" runat="server" class="username" href="#" title="Manage your account">
                    <asp:Label ID="usernameLabel" runat="server" CssClass="navbar-link" Text="Label"></asp:Label>
              
                </a>!
                <a href="../Login.aspx" class="btn btn-danger">Logout</a>
            </p>
        
        </div>
    </div>


</asp:Content>