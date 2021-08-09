<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" MasterPageFile="~/Site1.Master" Inherits="VisaStatusKuwait.defoult" %>

<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">

<!-- slider start here -->
    <div class="slice">
        <div class="slideshow owl-carousel">
            <div class="item">
                <img src="img/k1.jpg" alt="banner1" title="banner1" class="img-responsive" />
            </div>
            <div class="item">
                <img src="img/k2.jpg" alt="banner1" title="banner1" class="img-responsive" />
            </div>
            <div class="item">
                <img src="img/k3.jpg" alt="banner1" title="banner1" class="img-responsive" />
            </div>
            <div class="item">
                <img src="img/k4.jpg" alt="banner1" title="banner1" class="img-responsive" />
            </div>
             <div class="item">
                <img src="img/k5.jpg" alt="banner1" title="banner1" class="img-responsive" />
            </div>
           <div class="item">
                <img src="img/k6.jpg" alt="banner1" title="banner1" class="img-responsive" />
            </div>
		
	    </div>
	
	<!-- slide-detail start here -->
	    <div class="slide-detail">
            <div class="container">
			
			    
            </div>
        </div>
	<!-- slide-detail end here -->
    </div>
<!-- slider end here -->	

<!-- places start here -->
    <div class="placetop">
        <div class="container">
            <div class="row">
                <div class="places">
                    <h1><strong>Welcome to Kuwait</strong></h1>
                    <p>
                        A small emirate nestled between Iraq and Saudi Arabia, 
                        Kuwait is situated in a section of one of the driest, 
                        least-hospitable deserts on Earth. Its shore, however, 
                        includes Kuwait Bay, a deep harbour on the Persian Gulf. 
                        There, in the 18th century, Bedouin from the interior founded 
                        a trading post. The name Kuwait is derived from the Arabic 
                        diminutive of the Hindustani kūt (“fort”). Since the emirate’s 
                        ruling family, the Āl Ṣabāḥ, formally established a sheikhdom in 
                        1756, the country’s fortunes have been linked to foreign commerce. 
                        In time and with accumulated wealth, the small fort grew to become 
                        Kuwait city, a modern metropolis mingling skyscrapers, apartment 
                        buildings, and mosques. Kuwait city has most of the country’s 
                        population, which makes Kuwait one of the world’s most-urbanized countries.</p>
                </div>
<div class="tab-content">
                    
<div class="col-md-4 col-lg-4 col-sm-6 col-xs-12">
                            
<div class="placetop">
    <div class="container">
        <div class="row">
            
            <div class="tab-content">
                <div class="tab-pane active" id="all">
                    <asp:Repeater ID="Repeater1" runat="server">
                        <ItemTemplate>
                    <div class="col-md-4 col-lg-4 col-sm-6 col-xs-12">
                        <h3 style="background-color:yellow"><%# Eval("PackageName") %></h3>
                        <div class="product-thumb">
                            <div class="image">
                                <a href="#">
                                <img src='<%# Eval("Images") %>' alt="p1" title='<%# Eval("Images") %>' class="img-responsive" /></a>
                                <div class="hoverbox">
                                    <div class="icon_plus" aria-hidden="true">
                                    </div>
                                </div>
							</div>
                                
                            <div class="caption">
                                <div class="inner">
                                    <img src="images/icon-map.png"  title="map" alt="map" />
                                    <h5><b><%# Eval("DestinationName") %></b></h5>
                                </div>
                                <div class="inner">
                                    <p style="text-align:center;">
                                        <strong><%# Eval("PackageName") %>-</strong> 
                                        
                                        <br /><b><%# Eval("TourSchedule") %>
                                        <br /><%# Eval("OfferFacility") %>
                                        <br /><%# Eval("AboutPrice") %>
                                </div>
                                <div class="text-center">
                                    <a href="Package-Description.aspx?id=<%# Eval("SrNo") %>" class="btn btn-default" style="background-color:yellow">
                                        <b> View More </b> <i class="fa fa-angle-double-right" aria-hidden="true"></i>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                        </ItemTemplate>
                    </asp:Repeater>
            </div>
        </div>
        </div>
    </div>


</div>

                           <%--  <h3 style="background-color:yellow"><b><%# Eval("HeaderPackageName") %></b> </h3>
                            <div class="product-thumb">
                                <div class="image">
                                    <a href="#">
                                    <img src='<%# Eval("Images") %>' alt="p1" title="p1" class="img-responsive" /></a>
                                    <div class="hoverbox">
                                        <div class="icon_plus" aria-hidden="true">
                                        </div>
                                    </div>
								<%--<div class="matter">
									<h2>New York city</h2>
									<p>start from $375.00</p>
									<ul class="list-inline">
										<li><a href="#">top rates</a></li>
										<li><a href="#">hotels deals </a></li>
									</ul>
								</div>--%>
							   
                               <%-- <div class="caption">
                                    <div class="inner">
                                        <img src="images/icon-map.png"  title="map" alt="map" />
                                        <h5><b>CHAR DHAM</b> (Kedarnath, Badrinath, Gangotri, Yamunotri)</h5>
                                    </div>
                                    <div class="inner">
                                        <p style="text-align:center;">
                                            <strong>CHAR DHAM TOUR -</strong> CHARDHAM TOUR PACKAGE BY ROAD ( FROM DEHRADUN AIRPORT / HARIDWAR)
                                            <br />Rs 21999/ PER PERSON ( MIN 4 PAX )
                                            <br /><b>9 Nights 10 days Tour</b>
                                            <br />Ex Dehradun Airport / Haridwar</p>
                                    </div>
                                    <div class="text-center">
                                        <a href="Char-Dham.aspx" class="btn btn-default" style="background-color:yellow">
                                           <b> View More </b> <i class="fa fa-angle-double-right" aria-hidden="true"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 col-lg-4 col-sm-6 col-xs-12">
                            <h3 style="background-color:yellow"><b> DO DHAM </b> </h3>
                            <div class="product-thumb">
                                <div class="image">
                                    <a href="#">
                                    <img src="img/DoDham.png" alt="p2" title="p2" class="img-responsive" /></a>
                                    <div class="hoverbox">
                                        <div class="icon_plus" aria-hidden="true">
                                        </div>
                                    </div>
                                </div>
                                <div class="caption">
                                    <div class="inner">
                                        <img src="images/icon-map.png"  title="map" alt="map" />
                                        <h5><b>DO DHAM </b>(Kedarnath & Badrinath)</h5>
                                    </div>
                                    <div class="inner">
                                        <p style="text-align:center">
                                            <strong>DO DHAM TOUR -</strong> PACKAGE BY ROAD ( FROM DEHRADUN AIRPORT / HARIDWAR)
                                            <br />Rs 14999/ PER PERSON ( MIN 4 PAX )
                                            <br /><b>5 Nights 6 days Tour</b> Ex Dehradun Airport / Haridwar</p>
                                    </div>
                                    <div class="text-center">
                                        <a href="Do-Dham.aspx" class="btn btn-default" style="background-color:yellow">
                                           <b> View More </b> <i class="fa fa-angle-double-right" aria-hidden="true"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>--%>
                       
                           <%-- <h3 style="background-color:yellow"><b> Chopta Chandrashila Trek </b></h3>
                            <div class="product-thumb">
                                <div class="image">
                                    <a href="#">
                                    <img src="img/trek1.png" alt="p2" title="p2" class="img-responsive" /></a>
                                    <div class="hoverbox">
                                        <div class="icon_plus" aria-hidden="true">
                                        </div>
                                    </div>
                                </div>
                                <div class="caption">
                                    <div class="inner">
                                        <img src="images/icon-map.png" title="map" alt="map" />
                                        <h5><b>Chopta Chandrashila Trek</b> (Mini Switzerland)</h5>
                                    </div>
                                    <div class="inner">
                                        <p style="text-align:center">
                                            <strong>The Chopta – Tungnath – Chandrashila trek TOUR -</strong><br />(<b>2Nights 3 days Tour</b> Ex Dehradun Airport / Haridwar 4PAX )<br />MIN 4 PAX
                                            <br />7999/ PER PERSON</p>
                                    </div>
                                    <div class="text-center">
                                        <a href="Chopta-Chandrashila-Trek.aspx" class="btn btn-default" style="background-color:yellow">
                                           <b> View More</b> <i class="fa fa-angle-double-right" aria-hidden="true"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <%--<div class="text-center">
                        <button class="btn-primary" type="button" '">View More <i class="fa fa-angle-double-right" aria-hidden="true"></i></button>
				    </div>--%>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- places end here -->


<!-- video start here -->
    <div class="video">
        <img src="img/k8.jpg" class="img-responsive" alt="video-bg" title="video-bg" />
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="matter text-center">
				<%--	<i class="#" aria-hidden="true"></i>--%>
					    <p style="color:white; font-size:xx-large"><b>
                            Special Job Vacancy Offer To You.</b>
                        </p>
                        <p style="color:gold ; font-size:xx-large; background-color:red">
                            We offer Kuwait Job Packages in <strong>Kuwait</strong> for You</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
<!-- video end here -->



<%-- <div class="fixed">
     <div class="text-center">
        <button class="btn-primary" type="button"><a href="Packages-Name.aspx"><i class="fa fa-angle-double-right" aria-hidden="true">Book Now </i></a>
        </button>
	</div>
</div>--%>


<!-- testimonail start here -->
    <div class="testimonail">
        <div class="container">
            <div class="row">
                <div class="places">

                     <div class="fb-page" 
data-tabs="events"
data-href="https://www.facebook.com/YoloBookStore"
data-width="380"></div>
                    <hr>
                </div>
                
            </div>
        </div>
    </div>
<!-- testimonail end here -->

</asp:Content>



