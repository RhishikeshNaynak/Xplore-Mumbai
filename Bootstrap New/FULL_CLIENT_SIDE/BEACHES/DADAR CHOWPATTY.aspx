<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DADAR CHOWPATTY.aspx.cs" Inherits="botstrap.FULL_CLIENT_SIDE.BEACHES.DADAR_CHOWPATTY" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>DADAR CHOWPATTY BEACH</title>
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

<body style="background-color: #aed6f1;">
    <form id="form1" runat="server">
    
       
<h2 style="font-family: Arial, Helvetica, sans-serif; height:70px; font-size: 50px; font-weight: bolder; font-style: normal; text-transform: uppercase; color:#fdfefe ; vertical-align: middle; text-align: center; text-indent: inherit; background-color:#2874a6">
        <asp:Label ID="lbl" runat="server" Text="DADAR CHOWPATTY BEACH" value="DADAR CHOWPATTY BEACH" ></asp:Label>                
            </h2>
        <div class="container-fluid" style="background-color: #5dade2; margin-top:-10px; padding-top:10px;  padding-bottom:10px;">
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
                            <img src="Images/Dadar1.jpg" style="width: 1400px; height: 400px;" class="img-responsive">
                            <div class="carousel-caption">
                                <h3>DADAR CHOWPATTY</h3>
                                
                            </div>
                        </div>
                        <div class="item">
                            <img src="Images/Dadar2.jpg" style="width: 1400px; height: 400px;" class="img-responsive">
                            <div class="carousel-caption">
                                <h3>DADAR CHOWPATTY</h3>
                                
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

   <br /><br />
        <div style="margin-left:20px; margin-right:20px; ">
    <div class="w3-panel w3-pale-blue w3-leftbar w3-rightbar w3-border-blue">
        <asp:Label ID="lbl1" runat="server" Text="Label"></asp:Label></div>
    

    <div class="w3-panel w3-pale-blue w3-leftbar w3-rightbar w3-border-blue">
        <asp:Label ID="lbl2" runat="server" Text="Label"></asp:Label></div>
    

    <div class="w3-panel w3-pale-blue w3-leftbar w3-rightbar w3-border-blue">
        <asp:Label ID="lbl3" runat="server" Text="Label"></asp:Label>

    </div>

    <div class="w3-panel w3-pale-blue w3-leftbar w3-rightbar w3-border-blue">
        <asp:Label ID="lbl4" runat="server" Text="Label"></asp:Label>

    </div>

    </div>


    </form>
</body>
</html>
