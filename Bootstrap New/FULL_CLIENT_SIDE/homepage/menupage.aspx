<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="menupage.aspx.cs" Inherits="botstrap.Client_side.menupage" %>

<!DOCTYPE html>

<html>
<head>
<style>
.dropbtn {
    background-color: #85C1E9  ;
    color:white;
    padding: 16px;
    font-size: 18px;
    border: none;
    cursor: pointer;
    margin-top:14px;
    border-style: solid;
    
           
}

.dropdown {
    position:relative;
    display: inline-block;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color:#5dade2;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.4);
    z-index: 1;
}

.dropdown-content a {
    color:#fbeee6 ;
    font-size:larger;
    font-weight:bolder;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
}

.dropdown-content a:hover {background-color: #2874a6 ;}

.dropdown:hover .dropdown-content {
    display: block;
}

    .dropdown:hover .dropbtn {
        background-color: #2874a6;
    }

body {
    background-color:#5dade2 ;
    background-repeat :no-repeat;   
}

 zoom {
    padding: 50px;
    background-color: green;
    transition: transform .2s;
    width: 200px;
    height: 200px;
    margin: 0 auto;
}

zoom:hover {
    -ms-transform: scale(1.5); /* IE 9 */
    -webkit-transform: scale(1.5); /* Safari 3-8 */
    transform: scale(1.5); 
}

</style>
</head>
<body>
   <form id="form1" runat="server">

     
        <div class="container">
            <div style="position:absolute; height:550px; width:auto; margin-top:80px;">
            <div style="position:relative; background-color:red; height:550px; width:auto;">
                <div class="zoom" style="position:absolute; height:1000px;  width:450px;">
                       <img src="gate2.jpg" style="height:250px;width:350px; margin-left:60px; margin-top:20px;" alt="">
                        <img src="vastu1.jpg" style="height:250px;width:350px; margin-left:60px;  margin-top:20px;" alt="">
                </div>
                <div class="zoom" style="position:absolute; height:1000px;  width:450px; margin-left:450px">
                     <img src="marine-drive2.jpg" style="height:250px;width:350px; margin-left:30px;  margin-top:20px;"  alt="">
                        <img src="aksa3.jpg" style="height:250px;width:350px; margin-left:30px;  margin-top:20px;" alt="">
                </div >
                <div class="zoom" style="position:absolute; height:1000px;  width:450px; margin-left:900px">
                     <img src="mumbadevi-temple1.jpg" style="height:250px;width:350px; margin-left:20px; margin-top:20px;" alt="">
                        <img src="siddhivinayak2.jpg" style="height:250px;width:350px; margin-left:20px;  margin-top:20px;" alt="">
                </div>
            </div>
                </div>
       <div align="center"> 
       <div class="header-top" style="background-color:#283747; height:80px; opacity:0.8">
          

             <div class="dropdown">
                   <button class="dropbtn"> FAMOUS PLACES</button>
                  <div class="dropdown-content">
                  <a href="../PLACES/GATEWAY%20OF%20INDIA.aspx">GATEWAY OF INDIA</a>
                  <a href="../PLACES/BANDRA%20FORT.aspx">BANDRA FORT</a>
                   <a href="../PLACES/NARIMAN%20POINT.aspx">NARIMAN POINT</a>
                   <a href="../PLACES/NEHRU%20CENTER.aspx">NEHRU CENTER</a>
                    <a href="../PLACES/TARAPOREWALA%20AQUARIUM.aspx">TARAPOREWALA AQUARIUM</a>
                     <a href="../PLACES/VASTU.aspx">CSM VASTU SANGRAHALAYA</a>
                      <a href="../PLACES/WANKHEDE.aspx">WANKHEDE STADIUM</a>
                      <a href="../PLACES/MARINE%20LINE.aspx">MARINE LINE</a>






                  <!--  <a href=" ">GATEWAY OF INDIA</a>
                    <a href="#">CMS VASTU SANGRAHALAYA</a>
                    <a href="#">NARIMAN POINT</a>
                    <a href=" ">WANKHEDE STADIUM</a>
                   <a href="PLACES/BANDRA%20FORT.aspx">BANDRA FORT</a>
                    <a href="#">TARAPORVALA AQUARIUM</a>
                     <a href="#">MOUNT MARY CHURCH</a>
                       <a href="#">NEHARU CENTER</a> -->
                  </div>
                </div>
           

               &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <div class="dropdown">
                   <button class="dropbtn">
                       BEACHES</button>
                   <div class="dropdown-content">
                      <a href="../BEACHES/AKSA%20BEACH.aspx">AKSA BEACH</a>
                       <a href="../BEACHES/GIRGAON%20CHAOWPATTY.aspx">GIRGAON CHAOWPATTY</a>
                       <a href="../BEACHES/GORAI%20BEACH.aspx">GORAI BEACH.aspx</a>
                       <a href="../BEACHES/DADAR%20CHOWPATTY.aspx">DADAR CHOWPATTY</a>
                       <a href="../BEACHES/VARSOVA%20BEACH.aspx">VARSOVA BEACH</a>
                       <a href="../BEACHES/JUHU%20BEACH.aspx">JUHU BEACH</a>


                     <!--  <a href="#">JUHU BEACH</a> 
                       <a href="<a href="Beaches_in_india/AKSA.aspx">GORAI BEACH</a>
                       <a href="#">AKSA BEACH</a>
                       <a href="#">VARSOVA BEACH</a> 
                       <a href="#">GIRGAON CHOWPATTY</a>
                       <a href="#">DADAR CHOWPATTY</a> -->
                   </div>
               </div>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <div class="dropdown">
                   <button class="dropbtn">
                       TEMPLES</button>
                   <div class="dropdown-content">
                    <a href="../TEMPLES/BABULNATH.aspx">BABULNATH TEMPLE</a>                   
                       <a href="../TEMPLES/ISKCON.aspx">ISKCON TEMPLE</a>
                       <a href="../TEMPLES/MAHALAKSHMI.aspx">MAHALAKSHMI TEMPLE</a>
                      <a href="../TEMPLES/MUMBADEVI.aspx">MUMBADEVI TEMPLE</a>
                       <a href="../TEMPLES/SIDDHIVINAYAK.aspx">SIDDHIVINAYAK TEMPLE</a>
                       <a href="../TEMPLES/WALKESHWAR.aspx">WALKESHWAR TEMPLE</a>



                    <!--   <a href="#">MAHALAXMI TEMPLE</a> 
                       <a href="#">SIDDHIVINAYAK TEMPLE</a>
                       <a href="#">MUMBADEVI TEMPLE</a>
                       <a href="#">ISKCON TEMPLE</a> 
                       <a href="#">WALKESHWAR TEMPLE</a>
                       <a href="#">BABULNATH TEMPLE</a> -->
                   </div>
               </div>


             

          </div>
     </div>
            
</div>

</form>
</body>
</html>
