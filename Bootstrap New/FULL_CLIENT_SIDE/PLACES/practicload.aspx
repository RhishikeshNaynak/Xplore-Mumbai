<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="practicload.aspx.cs" Inherits="botstrap.FULL_CLIENT_SIDE.PLACES.practicload" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Bandra fort</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--
    <link href="CustomStyles.css" rel="stylesheet" />
    -->
    <link href="../jquery/bootstrap.css" rel="stylesheet" />
    <script src="../jquery/jquery.js"></script>
    <script src="../jquery/bootstrap.js"></script>
    <link href="../styling.css" rel="stylesheet" />
     
    
</head>

<body>
    <form id="form1" runat="server">
        <div> 
            <p style="font-family: Arial, Helvetica, sans-serif; font-size: 40px; font-weight: bolder; font-style: normal; text-transform: uppercase; color: #000000">
        <asp:Label ID="lbl1" runat="server" Text=""></asp:Label>                
            </p>
        </div>
    <div class="container">
        <div class="row">
             <div class="col-md-10 col-md-offset-1"> 
                <div id="imageCarousel" class="carousel slide" data-interval="2000"
                    data-ride="carousel" data-pause="hover" data-wrap="true">

                    <ol class="carousel-indicators">
                        <li data-target="#imageCarousel" data-slide-to="0" class="active"></li>
                        <li data-target="#imageCarousel" data-slide-to="1" class="active"></li>
                        
                    </ol>

                    <div class="carousel-inner">
                        <div class="item active">
                            <img src="Images/bandra1.jpg" style="width: 1400px; height: 400px;" class="img-responsive">
                            <div class="carousel-caption">
                                <h3>Bandra  Fort</h3>
                                
                            </div>
                        </div>
                        <div class="item">
                            <img src="Images/bandra2.jpg" style="width: 1400px; height: 400px;" class="img-responsive">
                            <div class="carousel-caption">
                                <h3>Bandra  Fort</h3>
                                
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
        <asp:TextBox ID="place"  runat="server" BackColor="#66FFFF" ForeColor="Black"></asp:TextBox> 
    
    </div>
    <div class="w3-panel w3-pale-blue w3-leftbar w3-rightbar w3-border-blue" style="background-color: #66FFFF">
        <asp:Label ID="lbl" runat="server" Text=""></asp:Label>
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
        <asp:Label ID="lbl5" runat="server" BackColor="#66FFCC"></asp:Label>

    </div>

  </form>  
</body>
</html>
