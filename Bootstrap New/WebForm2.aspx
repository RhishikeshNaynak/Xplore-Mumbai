<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="botstrap.WebForm2" %>

<!DOCTYPE html>



<html xmlns="http://www.w3.org/1999/xhtml">

         <head>
		<title>JavaScript JavaScript Function.</title>
		<script type="text/javascript">
		    function disableButton(btn) {
		        document.getElementById(btn.id).disabled = true;
		        alert("Button has been disabled.");
		    }
		</script>
	</head>

<body>
 <form id="form1" runat="server">
     
 <div>
 </div>

   


	<body style="text-align: center;">
		<h1>JavaScript - Disable Button after Click using JavaScript Function.</h1>
		<p><input type="button" id="btn1" value="Click to disable button." onclick="disableButton(this)" /></p>

	</body>

     
</form>
</body>
</html>
