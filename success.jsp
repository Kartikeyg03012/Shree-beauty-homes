<html>
<%@ include file="header.jsp"%>
<head>
  <title> Shree- Services</title>
  <link rel="icon" href="images/main_icon.png" />
  <!-- CSS only -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
    integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

  <!-- JS, Popper.js, and jQuery -->
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
    integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
    crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
    integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
    crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"
    integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI"
    crossorigin="anonymous"></script>


  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
  <style>
    tr {
      color: rgb(192, 197, 197);
    }
  </style>

</head>



<body background="images/backimage.png">
  
<br><br>
  <div class="container">
    <div class="jumbotron">
    <%String msg =(String)request.getAttribute("msg"); %>
        <%if (msg!=null){
        	if(msg=="success"){
        		out.print("<h2 style=color:green>Thank You for Booking</h2><br><h4> We Will Inform You Shortly!!!!! </h4>");
        	}
        	else{
        		out.print("<h2 style=color:red>Booking Failed Please Try Again!!!!!</h2>");
        	}
        	
        	
        }
        %>
        <hr><br>
        
        <a href="main.jsp"><input type="button" class="btn btn-primary" value="Go Home"></a>
    </div>
 </div>
 </body>
 </html>