<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="aspnet.aspx.cs" Inherits="WebApplication4.aspnet" %>

<!DOCTYPE html>
<html>
<head>
<title>My-tour bootstrap Design website | Home :: w3layouts</title>
<link href='http://fonts.googleapis.com/css?family=Lato:100,300,400,700,900,100italic,300italic,400italic,700italic,900italic' rel='stylesheet' type='text/css'>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css'/>
<link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--js--> 
<script src="js/jquery.min.js"></script>

<!--/js-->
<!--animated-css-->
<link href="css/animate.css" rel="stylesheet" type="text/css" media="all">
<script src="js/wow.min.js"></script>
    <script>
        $(document).ready(function () {
            $('#tshow').hide();

            $('#tclick').click(function () {
                $('#tshow').slideDown(500);
            });
        });
    </script>
<script>
    new WOW().init();
</script>
<!--/animated-css-->
    
</head>
<body style="background-color:#AED6F1;">
    <form id="form1" runat="server">
<!--header-->
<!--sticky-->
	 <div class="header-top" style="background-color:#283747; font-size:small; font-weight:bolder; height:100px; opacity:0.8">
		 <!--container-->
		  <div class="container" >
			 <div class="top-nav">
						<div class="logo">
						<a href="#"><img src="logo1.png" id="section-1" class="img-responsive" alt=""/></a>
						</div>
						<div class="menu" style="color:#fdfefe;">
                            <ul>
                      <li><a class="active" href="#Div1">Home</a></li>
                             
                      <li><a href="menupage.aspx">Places to Go</a></li>

      <li id="tclick"><a href="../PACKAGES/Selection_package.aspx">Tour Packages</a>
                <!--  <ul id="tshow" style="float:left; background-color:#283747">
                                     <li style="float:left;"><a href="../PACKAGES/1_day_package.aspx">One day tour</a></li><br />
                                     <li style="float:left;"><a href="../PACKAGES/4_daysPackage.aspx">Four day tour</a></li><br/>
                                     <li style="float:left;"><a href="../PACKAGES/5_daysPackage.aspx">Five day tour</a>
                                    </ul> -->
                                     </li>
					
                           <li id="Li1"><a href="#section-3">Top Places</a>  
                              </li>          
                                  <li><a href="#section-4">Guides</a></li>
							 <li><a href="#section-5">Contact US</a></li>
                                  <li><a href="#section-2">About</a></li>
                                       <li><a href="../LoginSide/login.aspx">Login</a></li>
                               
</ul>
<link href="css/bootstrap.css" rel="stylesheet" />

                             
                               <!--  <ul id="tshow" style="float:left; background-color:#283747">
                                     <li style="float:left;"><a href="">Destination</a></li><br />
                                     <li style="float:left;"><a href="">Bitches</a></li><br/>
                                     <li style="float:left;"><a href="">Temples</a></li>
                                 </ul> -->
                              
						<!--<ul id="nav" >
							 <li><a href="#section-1">Home</a></li>
                            <li>
                                <a><asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/WebForm1.aspx">webform1</asp:HyperLink></a></li>
							 <li><a href="WebForm1.aspx">new</a></li>
                            <li><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="WebForm1.aspx">new</asp:HyperLink></li>
							 <li id="tclick"><a href="#section-3">Top Places</a>
                                <ul id="tshow" style="float:left; background-color:#283747">
                                     <li style="float:left;"><a href="">Destination</a></li><br />
                                     <li style="float:left;"><a href="">Bitches</a></li><br/>
                                     <li style="float:left;"><a href="">Temples</a></li>
                                 </ul> 
							 </li>
							 <li><a href="#section-4">GUIDES</a></li>
							 <li><a href="#section-5">Contact US</a></li>
							 
							 
						 </ul>-->
                            <div class="clearfix"></div>
						 </div>
			 </div>
			  <div class="clearfix"> </div>
			

		 </div>
	 </div>

<!--/sticky-->
<!---banner--->
<!----start-slider-script---->
			<script src="js/responsiveslides.min.js"></script>
			 <script>
			     // You can also use "$(window).load(function() {"
			     $(function () {
			         // Slideshow 4
			         $("#slider4").responsiveSlides({
			             auto: true,
			             pager: true,
			             nav: true,
			             speed: 500,
			             namespace: "callbacks",
			             before: function () {
			                 $('.events').append("<li>before event fired.</li>");
			             },
			             after: function () {
			                 $('.events').append("<li>after event fired.</li>");
			             }
			         });

			     });
			  </script>
			<!----//End-slider-script---->
			<!-- Slideshow 4 -->
   <div id="Div1" class="section" >
			    <div id="top" class="callbacks_container">
			      <ul class="rslides" id="slider4">
			        <li>
			          <img src="images/MUMBAI.jpg" style="height:600px;width:1600px;" alt="">
					  <div class="caption">
			     	  		<div class="header-info">
							<h2><a href="#">VISIT MUMBAI</a></h2>
							<h1><a href="#">EXPLORE MUMBAI</a></h1>
							</div>
			          </div>
			        </li>
			        <li>
			       <img src="images/one.jpg" style="height:600px;width:1600px;" alt="">
			        <div class="caption">
			          	<div class="header-info">
							<h2><a href="#">VISIT MUMBAI</a></h2>
							
							<h1><a href="#">EXPLORE MUMBAI</a></h1>
							</div>
			          </div>
			        </li>
			        <li>
			          <img src="images/a2.gif" style="height:600px;width:1600px;" alt="">
			          <div class="caption">
			          	<div class="header-info">
							<h2><a href="#">VISIT MUMBAI</a></h2>
							
							<h1><a href="#">EXPLORE MUMBAI</a></h1>
							</div>
			          </div>
			        </li>
					<li>
			          <img src="images/a3.jpg" style="height:600px;width:1600px;" alt="">
			          <div class="caption">
			          	<div class="header-info">
							<h2><a href="#">VISIT MUMBAI</a></h2>
							
							<h1><a href="#">EXPLORE MUMBAI</a></h1>
							</div>
			          </div>
			        </li>

                      <li>
			          <img src="images/a4.jpg" style="height:600px;width:1600px;" alt="">
			          <div class="caption">
			          	<div class="header-info">
							<h2><a href="#">VISIT MUMBAI</a></h2>
							
							<h1><a href="#">EXPLORE MUMBAI</a></h1>
							</div>
			          </div>
			        </li>

			      </ul>
			    </div>	         
			    <div class="clearfix"> </div>
				</div>
		<!----- //End-slider---->


<!---banner--->	
        
<!--About-->
     <div class="about section" id="section-2" ">
	  <div class="about-head text-center" >
	  <h2>ABOUT US</h2>
	  <span></span><img src="images/about-img.png" alt=""><span></span>
	  </div>
	   <div class="container" >		  <br><br><br><br><br><br><br><br>
		 <div class="col-md-4 about-grids" >
			 <h4><span class="icon1"></span>Best Destinations</h4>
			 <p class="para">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium 
			 doloremque laudantium, totam rem aperiam, eaque ipsa quae.</p>
		 </div>
		 <div class="col-md-4 about-grids grid2">
			 <h4><span class="icon2"></span>Trust & Safety</h4>
			 <p class="para">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium 
			 doloremque laudantium, totam rem aperiam, eaque ipsa quae.</p>
		 </div>
		 <div class="col-md-4 about-grids">
			 <h4><span class="icon3"></span>Combine & Save</h4>
			 <p class="para">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium 
			 doloremque laudantium, totam rem aperiam, eaque ipsa quae.</p>
		 </div>
	 </div>
</div>
<!--/About-->
<!--top-tours-->	
<div  class="section" id="section-3">
<div id="portfolio" class="portfolio">
   <div class="top-tours-head text-center">
		  <h2>PLACES</h2>
		  <span></span><img src="images/star.png" alt=""><span></span>
		  <div class="container">
				<p class="para">The centuries-old history and culture of India, majestic architectural monuments and museums of Delhi, Agra and Mumbai have a unique attractive force
Read more at.</p>
		  </div>
		  </div>
	      <ul id="filters" class="clearfix wow bounceIn" data-wow-delay="0.4s">
			<li><span class="filter active" data-filter="app card icon logo fun">ALL</span></li>
			<!--<li><span class="filter" data-filter="app">Domestic Travel</span></li>
		    <li><span class="filter" data-filter="card">Foreign Travel</span></li>
			<li><span class="filter" data-filter="icon">Short Date Tour</span></li>
			<li><span class="filter" data-filter="fun">Long Date Tour</span></li> -->
	        </ul>
	     <div id="portfoliolist">
					<div class="portfolio card mix_all" data-cat="card" style="display: inline-block; opacity: 1;">
						<div class="portfolio-wrapper wow bounceIn" data-wow-delay="0.4s">		
							<a href="../PLACES/MOUNT%20MARY%20CHURCH.aspx" class="b-link-stripe b-animate-go  thickbox play-icon popup-with-zoom-anim"/>
						     <img src="images/mount2.jpg"  style="height:300px;width:900px;"class="img-responsive" alt=""/>
							<div class="tour-caption">
                                
							<p>VISIT</p>
							</div>

						</div>
					</div>				
					 <div class="portfolio icon mix_all" data-cat="fun" style="display: inline-block; opacity: 1;">
						<div class="portfolio-wrapper wow bounceIn" data-wow-delay="0.4s">		
							<a href="../PLACES/GATEWAY%20OF%20INDIA.aspx"  class="b-link-stripe b-animate-go  thickbox play-icon popup-with-zoom-anim"/>
						     <img src="images/t8.jpg" style="height:300px;width:900px;" class="img-responsive" alt=""/>
							 <div class="tour-caption">
							
							 <p>VISIT</p>
							 </div>
					   </div>
			      </div>
					<div class="portfolio card mix_all" data-cat="card" style="display: inline-block; opacity: 1;">
						<div class="portfolio-wrapper wow bounceIn" data-wow-delay="0.4s">		
							<a href="../PLACES/MARINE%20LINE.aspx" class="b-link-stripe b-animate-go  thickbox play-icon popup-with-zoom-anim"/>
						     <img src="images/t3.jpg"  style="height:300px;width:900px;" class="img-responsive" alt=""/>
							 <div class="tour-caption">
						
							 <p>VISIT</p>
                                 
							 </div>
						</div>
					</div>				
					<div class="portfolio icon mix_all" data-cat="icon" style="display: inline-block; opacity: 1;">
						<div class="portfolio-wrapper wow bounceIn" data-wow-delay="0.4s">		
							<a href="../BEACHES/AKSA%20BEACH.aspx" class="b-link-stripe b-animate-go  thickbox play-icon popup-with-zoom-anim"/>
						     <img src="images/t4.jpg"  style="height:300px;width:900px;" class="img-responsive" alt=""/>
							 <div class="tour-caption">
                              
							<p>VISIT</p>
							</div>
						</div>
					</div>	
					<div class="portfolio card mix_all" data-cat="card" style="display: inline-block; opacity: 1;">
						<div class="portfolio-wrapper wow bounceIn" data-wow-delay="0.4s">		
							<a href="../PLACES/TARAPOREWALA%20AQUARIUM.aspx" class="b-link-stripe b-animate-go  thickbox play-icon popup-with-zoom-anim"/>
						     <img src="images/a2.gif"  style="height:300px;width:900px;" class="img-responsive" alt=""/>
							 <div class="tour-caption">
							
							 <p>VISIT</p>
							 </div>
						</div>
					</div>			
					<div class="portfolio fun mix_all" data-cat="fun" style="display: inline-block; opacity: 1;">
						<div class="portfolio-wrapper wow bounceIn" data-wow-delay="0.4s">		
							<a href="../PLACES/WANKHEDE.aspx" class="b-link-stripe b-animate-go  thickbox play-icon popup-with-zoom-anim"/>
						     <img src="images/t6.jpg"  style="height:300px;width:900px;" class="img-responsive" alt=""/>
							 <div class="tour-caption">
                                 
							<p>VISIT</p>
							</div>
						</div>
			      </div>
				  <div class="portfolio fun mix_all" data-cat="fun" style="display: inline-block; opacity: 1;">
						<div class="portfolio-wrapper wow bounceIn" data-wow-delay="0.4s">		
							<a href="../PLACES/GATEWAY%20OF%20INDIA.aspx" class="b-link-stripe b-animate-go  thickbox play-icon popup-with-zoom-anim"/>
							<img src="images/t7.jpg"  style="height:300px;width:900px;" class="img-responsive" alt=""/>
							<div class="tour-caption">
						
							<p>VISIT</p>
                              
							</div>
						</div>
			      </div>
             
				 
             	<div class="portfolio app mix_all" data-cat="app" style="display: inline-block; opacity: 1;">
						<div class="portfolio-wrapper wow bounceIn" data-wow-delay="0.4s">		
							<a href="../PLACES/NARIMAN%20POINT.aspx" class="b-link-stripe b-animate-go  thickbox play-icon popup-with-zoom-anim"></a>
						     <img src="images/t2.jpg"  style="height:300px;width:900px;" class="img-responsive" alt=""/>
							 <div class="tour-caption">
							
							 <p>VISIT</p>
                                
						     </div>

						</div>
					</div>	

             </div>
		   <div class="clearfix"></div>	
	  </div>
</div>
  
<!-- Script for gallery Here-->
       
<script type="text/javascript" src="js/jquery.mixitup.min.js"></script>
<script type="text/javascript">
    $(function () {
        var filterList = {
            init: function () {
                // MixItUp plugin
                // http://mixitup.io
                $('#portfoliolist').mixitup({
                    targetSelector: '.portfolio',
                    filterSelector: '.filter',
                    effects: ['fade'],
                    easing: 'snap',
                    // call the hover effect
                    onMixEnd: filterList.hoverEffect()
                });
            },
            hoverEffect: function () {
                // Simple parallax effect
                $('#portfoliolist .portfolio').hover(
                    function () {
                        $(this).find('.label').stop().animate({ bottom: 0 }, 200, 'easeOutQuad');
                        $(this).find('img').stop().animate({ top: -30 }, 500, 'easeOutQuad');
                    },
                            function () {
                                $(this).find('.label').stop().animate({ bottom: -40 }, 200, 'easeInQuad');
                                $(this).find('img').stop().animate({ top: 0 }, 300, 'easeOutQuad');
                            }
                );
            }
        };
        // Run the show!
        filterList.init();
    });
</script>
<!--Gallery Script Ends-->	 
<!--/top-tours-->

        <!--
<div class="tour-guides section" id="section-4" >
	  <div class="tour-guides-head text-center">
		  <h3>TOUR GUIDES</h3>
		  <span></span><img src="images/guide.png" alt=""><span></span>
		  <div class="container">
				<p>“Tourists came around and looked into our tipis. That those were the homes we choose to live in didn`t bother them at all. The untied the door, opened the flap, and barged right in, touching our things, poking through our bedrolls, inspecting everything. It boggles my mind that tourists feel they have the god-given right to intrude everywhere.” </p>
		  </div>
	  </div>
	  <div class="container">
		<!-- requried-jsfiles-for owl -->
	<!--			<link href="css/owl.carousel.css" rel="stylesheet">
							    <script src="js/owl.carousel.js"></script>
							        <script>
							            $(document).ready(function () {
							                $("#owl-demo").owlCarousel({
							                    items: 1,
							                    lazyLoad: true,
							                    autoPlay: true,
							                    navigation: false,
							                    navigationText: false,
							                    pagination: true,
							                });
							            });
							    </script>
			<!-- //requried-jsfiles-for owl -->
	<!--	  <div id="owl-demo" class="owl-carousel">
			  <div class="item text-center guide-sliders">
				 <div class="col-md-3 image-grid">
					 <img src="images/g1.jpg">
					 <div class="guide-caption">
					 
					 </div>
					 <p><a href="menupage.aspx">Elena Smith</a></p>
					 </div>
				 <div class="col-md-3 image-grid">
					 <img src="images/g2.jpg">
					 <div class="guide-caption">
					 
					 </div>
					 <p><a href="#">John Wilson</a></p>
				 </div>
				 <div class="col-md-3 image-grid">
					 <img src="images/g3.jpg">
					 <div class="guide-caption">
					 
					 </div>
					 <p><a href="#">Kelly Gomez</a></p>
				 </div>
				 <div class="col-md-3 image-grid">
					 <img src="images/g4.jpg">
					 <div class="guide-caption">
					
					 </div>
					 <p><a href="#">Alex Franky</a></p>
				 </div>   
			  </div>
			  <div class="item text-center guide-sliders">
				 <div class="col-md-3 image-grid">
					 <img src="images/g5.jpg">
					 <div class="guide-caption">
					
					 </div>
					 <p><a href="#">John</a></p>
				 </div>
				 <div class="col-md-3 image-grid">
					 <img src="images/g6.jpg">
					 <div class="guide-caption">
					
					 </div>
					 <p><a href="#">Joe Winifred</a></p>
				 </div>
				 <div class="col-md-3 image-grid">
					 <img src="images/g7.jpg">
					 <div class="guide-caption">
					
					 </div>
					 <p><a href="#">Kevin</a></p>
				 </div>
				 <div class="col-md-3 image-grid">
					 <img src="images/g8.jpg">
					 <div class="guide-caption">
					
					 </div>
					 <p><a href="#">Fedora Willam</a></p>
				 </div>   
			  </div>
</div>
          </div>
    </div>


        -->
             <br /><br /><br /><br />
    
  <!-- TOUR GUIDES SECTION -->
  <div class="tour-guides section" id="section-4" >
	  <div class="tour-guides-head text-center">
		  <h2>TOUR GUIDES</h2>
		  <span></span><img src="images/guide.png" alt=""><span></span>
		  <div class="container">
				<p class="para">“Tourists came around and looked into our tipis. That those were the homes we choose to live in didn`t bother them at all. The untied the door, opened the flap, and barged right in, touching our things, poking through our bedrolls, inspecting everything. It boggles my mind that tourists feel they have the god-given right to intrude everywhere.” </p>
		  </div>
	  </div>



      <br><br><br><br><br><br><br><br>
          <div id="owl-demo" class="owl-carousel">
			  <div class="item text-center guide-sliders">
				 <div class="col-md-3 ">
					 <img src="g3.jpg" style="height:400px;width:300px;" >
					 <div class="guide-caption">
					 
					 </div>
                     
					 <p><a href="../guides.aspx">PRATHMESH</a></p>
					 </div>
				 <div class="col-md-3 ">
					 <img src="g1.jpg" style="height:400px;width:300px;" >
					 <div class="guide-caption">
					 
					 </div>
					 <p><a href="../guides.aspx">RHISHIKESH</a></p>
				 </div>
				 <div class="col-md-3 ">
					 <img src="DSC_0070.JPG" style="height:400px;width:300px;" >
					 <div class="guide-caption">
					 
					 </div>
					 <p><a href="../guides.aspx">SAURABH</a></p>
				 </div>
				 <div class="col-md-3 ">
					 <img src="DSC_0426.JPG" style="height:400px;width:300px;" >
					 <div class="guide-caption">
					
					 </div>
					 <p><a href="../guides.aspx">AMOL</a></p>
				 </div>   
			  </div> 
			  </div>
  </div>           
  
        <br /><br /><br /><br /><br /><br /><br /><br />
   

    <div id="section-5" class="contact section">
	  <div class="contact-head text-center">
		  <h2>CONTACT US</h2>
		  <span></span><img src="images/mail.png" alt=""><span></span><br><br><br><br><br><br><br><br>
		  <div class="contact-grids">
			  <div class="container">
				  <div class="col-md-4 address">
						<h4>Give Comments and Feedback here</h4>
						<p></p>
						<h5><span class="img1"></span>(+1) 224 56 789&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;(+1) 224 56 780</h5>
						<h5><span class="img2"></span><a href="#">info[at]Xplore.com&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;support[at]Xplore.com</a></h5>
						<h5><span class="img3"></span>1100 High Street,Bhandup-(w), Mumbai-78</h5>
				  </div>
				  <div class="col-md-8 contact">	
					  
                          NAME:-
                          <asp:TextBox ID="txt1" runat="server" Height="36px" Width="252px"></asp:TextBox>
                          &nbsp;&nbsp;&nbsp;&nbsp;
                          EMAIL:-
                          <asp:TextBox ID="txt2" runat="server" Height="34px" Width="252px"></asp:TextBox>
                          <br /><br /><br />
                          <P>COMMENTS:-</P>
                          <asp:TextBox ID="txt3" runat="server" Height="158px" TextMode="MultiLine" Width="454px" ForeColor="Black"></asp:TextBox>
                          <br />
                          <asp:Button ID="Button1" runat="server" Text="SUBMIT"  OnClick="Button1_Click" />
                      <div>
                         <p> <asp:Label ID="lbl" runat="server" Text=""></asp:Label> </p>
                          </div>
                          <!--
					  <input type="text" class="text" value=" Name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Your Name';}">
					  <input type="text" class="text" value="Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Your mail';}">
					  <textarea onfocus="if(this.value == 'Message') this.value='';" onblur="if(this.value == '') this.value='Enter Message Here';" >Message</textarea>
					  <input type="submit" value="Send message">  -->
					  <div class="clearfix"></div>
					
				   </div>
				  <div class="clearfix"></div>
			  </div>
		  </div>
	  </div>
   </div>
 
       
</form>
</body>
</html>