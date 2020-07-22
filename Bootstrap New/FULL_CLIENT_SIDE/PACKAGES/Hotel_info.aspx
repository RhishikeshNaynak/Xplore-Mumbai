<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Hotel_info.aspx.cs" Inherits="botstrap.FULL_CLIENT_SIDE.PACKAGES.Hotel_info" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>HOTEL SAHARA STAR</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--
    <link href="CustomStyles.css" rel="stylesheet" />
    -->
    <link href="../jquery/bootstrap.css" rel="stylesheet" />
    <script src="../jquery/jquery.js"></script>
    <script src="../jquery/bootstrap.js"></script>
    <link href="../styling.css" rel="stylesheet" />
     

    <style>
div.gallery {
    margin: 5px;
    border: 1px solid #ccc;
    float: left;
    width: 300px;
}

div.gallery:hover {
    border: 2px solid #777;
}

div.gallery img {
    width: 100%;
    height: auto;
}

div.desc {
    padding: 20px;
    text-align: center;
}
</style>
    
</head>

<body style="background-color:#aed6f1;">
    <form id="form1" runat="server">
        <div> 
            <h2 style="font-family: Arial, Helvetica, sans-serif; height:70px; font-size: 50px; font-weight: bolder; font-style: normal; text-transform: uppercase; color:#fdfefe ; vertical-align: middle; text-align: center; text-indent: inherit; background-color:#2874a6;">
        <asp:Label ID="lbl" runat="server" Text="HOTEL SAHARA STAR" value="AKSA BEACH" ></asp:Label>                
            </h2>
        </div>
     <div class="container-fluid" style="background-color:#5dade2; margin-top:-10px; padding-top:10px;  padding-bottom:10px;">
        <div class="row">
             <div class="col-md-10 col-md-offset-1"> 
                <div id="imageCarousel" class="carousel slide" data-interval="2000"
                    data-ride="carousel" data-pause="hover" data-wrap="true">

                    <ol class="carousel-indicators">
                        <li data-target="#imageCarousel" data-slide-to="0" class="active"></li>
                        <li data-target="#imageCarousel" data-slide-to="1" class="active"></li>
                        <li data-target="#imageCarousel" data-slide-to="2" class="active"></li>
                        <li data-target="#imageCarousel" data-slide-to="3" class="active"></li>
                         <li data-target="#imageCarousel" data-slide-to="4" class="active"></li>
                        
                    </ol>

                    <div class="carousel-inner">
                        <div class="item active">
                            <img src="Images/h1.jpg" style="width: 1400px; height: 400px;" class="img-responsive">
                            <div class="carousel-caption">
                                <h3>HOTEL SAHARA STAR</h3>
                                
                            </div>
                        </div>
                        <div class="item">
                            <img src="Images/h2.jpg" style="width: 1400px; height: 400px;" class="img-responsive">
                            <div class="carousel-caption">
                                <h3>HOTEL SAHARA STAR</h3>
                                
                            </div>
                        </div>
                        
                        <div class="item active">
                            <img src="Images/h3.jpg" style="width: 1400px; height: 400px;" class="img-responsive">
                            <div class="carousel-caption">
                                <h3>HOTEL SAHARA STAR</h3>
                                
                            </div>
                        </div>
                        <div class="item">
                            <img src="Images/h4.jpg" style="width: 1400px; height: 400px;" class="img-responsive">
                            <div class="carousel-caption">
                                <h3>HOTEL SAHARA STAR</h3>
                                
                            </div>
                        </div>

                         <div class="item">
                            <img src="Images/h5.jpg" style="width: 1400px; height: 400px;" class="img-responsive">
                            <div class="carousel-caption">
                                <h3>HOTEL SAHARA STAR</h3>
                                
                            </div>
                        </div>



                    </div>

                    <a href="#imageCarousel" class="carousel-control left" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left"></span>
                    </a>
                    <a href="#imageCarousel" class="carousel-control right" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right"></span>
                    </a>
                    </div>
                </div>

            </div>
        </div>
    
    <script src="../jquery/jquery.js"></script>
    <script src="../jquery/bootstrap.js"></script>

    <div>
    
    </div>

        <div style="margin-left:20px; margin-right:20px; ">
    <div class="w3-panel w3-pale-blue w3-leftbar w3-rightbar w3-border-blue" style="background-color: #66FFFF">
        <asp:Label ID="lbl1" runat="server" Text=""></asp:Label>
    </div>
   
    

    <div class="w3-panel w3-pale-blue w3-leftbar w3-rightbar w3-border-blue">
        <asp:Label ID="lbl2" runat="server" Text=""></asp:Label></div>
    

    <div class="w3-panel w3-pale-blue w3-leftbar w3-rightbar w3-border-blue">
        <asp:Label ID="lbl3" runat="server" Text=""></asp:Label>

    </div>

    <div class="w3-panel w3-pale-blue w3-leftbar w3-rightbar w3-border-blue">
        <asp:Label ID="lbl4" runat="server" Text=""></asp:Label>

    </div>

    

    <div class="w3-panel w3-pale-blue w3-leftbar w3-rightbar w3-border-blue">
        <asp:Label ID="lbl5" runat="server" ></asp:Label>

    </div>
        <div class="w3-panel w3-pale-blue w3-leftbar w3-rightbar w3-border-blue">
        <asp:Label ID="lbl6" runat="server" ></asp:Label>

    </div>
      </div>
        
        <div>

            <p style="font-family: Arial, Helvetica, sans-serif; font-size: 35px; font-weight: bolder; text-transform: uppercase; color: #000000; background-color:#2874a6;">
                VIEW OF ROOMS IN HOTEL AND SOME HOTEL SENARIOS.
            </p>

            <p>

                 <div class="gallery">
                      <a target="_blank" href="Images/r1.jpg">
                        <img src="Images/r1.jpg" alt="HOTEL SAHARA STAR" width="300" height="200">
                      </a>
                      <div class="desc">Click here for Zoom</div>
                    </div>

                    <div class="gallery">
                      <a target="_blank" href="Images/r2.jpg">
                        <img src="Images/r2.jpg" alt="HOTEL SAHARA STAR" width="600" height="400">
                      </a>
                      <div class="desc">Click here for Zoom</div>
                    </div>

                 <div class="gallery">
                      <a target="_blank" href="Images/r5.jpg">
                        <img src="Images/r5.jpg" alt="HOTEL SAHARA STAR" width="600" height="400">
                      </a>
                      <div class="desc">Click here for Zoom</div>
                    </div>

                <div class="gallery">
                      <a target="_blank" href="Images/r6.jpg">
                        <img src="Images/r6.jpg" alt="HOTEL SAHARA STAR" width="600" height="400">
                      </a>
                      <div class="desc">Click here for Zoom</div>
                    </div>

                    <div class="gallery">
                      <a target="_blank" href="Images/r3.jpg">
                        <img src="Images/r3.jpg" alt="HOTEL SAHARA STAR " width="600" height="400">
                      </a>
                      <div class="desc">Click here for Zoom</div>
                    </div>

                    <div class="gallery">
                      <a target="_blank" href="Images/r4.jpg">
                        <img src="Images/r4.jpg" alt="HOTEL SAHARA STAR" width="600" height="400">
                      </a>
                      <div class="desc">Click here for Zoom</div>
                    </div>

               


            </p>
        </div>

  </form>  
</body>
</html>
