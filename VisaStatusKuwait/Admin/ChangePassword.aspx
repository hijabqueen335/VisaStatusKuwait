<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" MasterPageFile="~/Admin/AdminSite1.Master" Inherits="VisaStatusKuwait.Admin.ChangePassword" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <div id="content" class="col-lg-10 col-sm-10">
        <!-- content starts -->
        <div>
            <ul class="breadcrumb">
                <li><a href="#">Home</a> </li>
                <li><a href="#">Change Password</a> </li>
            </ul>
        </div>
        <div class="row">
            <div class="col-md-10">
             
                <div data-toggle="tooltip" title="Profile" class="well top-block" ><i
                    class="glyphicon glyphicon-user green"></i>
                    <div>
                         <div class="form-horizontal">
                    <fieldset>
                        <legend>Change Password</legend>
                        <div class="input-group input-group-lg">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-lock green"></i></span>
                               <asp:TextBox ID="OldPassword" runat="server" ToolTip="Old Password" placeholder="Old Password" CssClass="form-control" TextMode="Password"></asp:TextBox>
                            
                            </div>
                       <div class="clearfix"><br /></div>
                         <div class="input-group input-group-lg">
                           <span class="input-group-addon"><i class="glyphicon glyphicon-lock red"></i></span>
                            <asp:TextBox ID="newPassword" runat="server" ToolTip="New Password" placeholder="New Password" CssClass="form-control" TextMode="Password"></asp:TextBox>
                           
                        </div>
                         <div class="clearfix"><br /></div>
                         <div class="input-group input-group-lg">
                           <span class="input-group-addon"><i class="glyphicon glyphicon-lock red"></i></span>
                            <asp:TextBox ID="cnfpassTextBox" runat="server" ToolTip="Confirm Password" placeholder="Confirm Password" CssClass="form-control" TextMode="Password"></asp:TextBox>
                           
                        </div>
                        <div class="clearfix"><br /></div>
                      
                    </fieldset>
                    <p class="center col-md-5">
                        <asp:Button ID="Button_submit"  runat="server" CssClass="btn btn-primary btn-lg" Text="Submit"  />
                    </p>
                </div>
                    </div>
                   
                </div>
            
            </div>
            <div class="col-md-6">
                <span class="alert-danger">
                    <asp:Literal ID="FailureText" runat="server"></asp:Literal>
                </span>
            </div>
            
        </div>
    </div>
    <!-- content ends -->
    <!--/#content.col-md-0-->
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
                <a href="../AdminLogin.aspx" class="btn btn-danger">Logout</a>
            </p>
        </div>
    </div>
</asp:Content>
