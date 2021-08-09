<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" MasterPageFile="~/Admin/AdminSite1.Master" Inherits="VisaStatusKuwait.Admin.Home" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <div id="content" class="col-lg-10 col-sm-10">
        <!-- content starts -->
        <div>
            <ul class="breadcrumb">
                <li><a href="Home.aspx">Home</a> </li>
                <li><a href="#">Dashboard</a> </li>
            </ul>
        </div>
        <div class="row">
            <div class="col-md-3 text-center">
                <img src="img/user-png-12.png" height="180" />

                <div>
                    <asp:Label ID="nameLabel" runat="server" Text="Label" Font-Bold="True"></asp:Label>
                </div>

            </div>

            <div class="col-md-9">
                <div class="row">
                   
                   <%--  <div class="col-md-3 col-sm-3 col-xs-6">
                        <a data-toggle="tooltip" title="Directs" class="well top-block" href="BookingOrder.aspx">
                            <i class="glyphicon glyphicon-list green"></i>
                            <div>
                                Booking Orders
                            </div>

                        </a>
                    </div>--%>

                      <div class="col-md-3 col-sm-3 col-xs-6">
                        <a data-toggle="tooltip" title="Directs" class="well top-block" href="VisaUplaod.aspx">
                            <i class="glyphicon glyphicon-list green"></i>
                            <div>
                               Uplaod Visa
                            </div>

                        </a>
                    </div>
                     <div class="col-md-3 col-sm-3 col-xs-6">
                        <a data-toggle="tooltip" title="Message" class="well top-block" href="ChangePassword.aspx">
                            <i class="glyphicon glyphicon-link blue"></i>
                            <div>
                                Change Password
                            </div>
                        </a>
                    </div>
                 <div class="col-md-3 col-sm-3 col-xs-6">
                        <a data-toggle="tooltip" title="Team " class="well top-block" href="Contact-Enquiry.aspx"><i
                            class="glyphicon glyphicon-tag green"></i>
                            <div>
                                Contact Enquiry 
                            </div>
                        </a>
                    </div>
                    </div>

                    
                   

               <%--  <div class="col-md-3 col-sm-3 col-xs-6">
                        <a data-toggle="tooltip" title="Message" class="well top-block" href="PackagesList.aspx">
                            <i class="glyphicon glyphicon-link blue"></i>
                            <div>
                                Package List
                            </div>
                        </a>
                    </div>--%>

           

                   <%--  <div class="col-md-3 col-sm-3 col-xs-6">
                        <a data-toggle="tooltip" title="Logout" class="well top-block" href="../AdminLogin.aspx">
                            <i class="glyphicon glyphicon-log-out red"></i>
                            <div>
                                Logout
                            </div>

                        </a>
                    </div>--%>
                    <div id="form_div" runat="server">
                    </div>
                </div>
            </div>
        </div>
   
    <!-- content ends -->
    <!--/#content.col-md-0-->
</asp:Content>
