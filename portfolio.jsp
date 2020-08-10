<!DOCTYPE html>
<%@ include file="header.jsp"%>
<html>
<head>
    <title> Shree -Portfolio</title>
      <link rel="icon" href="images/main_icon.png" />
        <!-- CSS only -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

<!-- JS, Popper.js, and jQuery -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>


<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>


<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
* {
  box-sizing: border-box;
}

/* Center website */
.main {
  max-width: 1000px;
  margin: auto;
}

h1 {
  font-size: 50px;
  word-break: break-all;
}

.row {
  margin: 10px -16px;
}

/* Add padding BETWEEN each column */
.row,
.row > .column {
  padding: 8px;
}

/* Create three equal columns that floats next to each other */
.column {
  float: left;
  width: 33.33%;
  display: none; /* Hide all elements by default */
}

/* Clear floats after rows */ 
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Content */
.content {
  background-color: white;
  padding: 10px;
}

/* The "show" class is added to the filtered elements */
.show {
  display: block;
}

/* Style the buttons */

</style>
</head>
<body background="images/backimage.png">
<br><br>  

<!-- MAIN (Center website) -->
<div class="main">

<h1 style="color:azure">Our Portfolio</h1>
<hr>

<div id="myBtnContainer">
  <button class="btn btn-info" onclick="filterSelection('all')"> Show all</button>
  <button class="btn btn-secondary" onclick="feilterSelection('waxing')"> Waxing</button>
  <button class="btn btn-secondary" onclick="filterSelection('threading')">Threading</button>
  <button class="btn btn-secondary" onclick="filterSelection('makeup')">Makeup</button>
  <button class="btn btn-secondary" onclick="filterSelection('spa')">Spa</button>
  <button class="btn btn-secondary" onclick="filterSelection('haircut')">Haircut </button>
  <button class="btn btn-secondary" onclick="filterSelection('facial')">Facial</button>
</div>

<!-- Portfolio Gallery Grid -->
<div class="row">
  <div class="column waxing">
    <div class="content">
      <img src="images/waxing.png" alt="waxing" style="width:100%">
      <center/><h4>Leg Waxing</h4>
    </div>
  </div>
  <div class="column waxing">
    <div class="content">
    <img src="images/hand wax.png" alt="waxing" style="width:100%">
    <center/><h4>Hand Waxing</h4>
      
    </div>
  </div>
  <div class="column waxing">
    <div class="content">
    <img src="images/underarms2.png" alt="waxing" style="width:100%">
    <center/><h4>Underarm Waxing</h4>
       </div>
  </div>
  
  <div class="column threading">
    <div class="content">
      <img src="images/threading.png" alt="threading" style="width:100%">
      <center/><h4>Forehead Threading</h4>
      
    </div>
  </div>
  <div class="column threading">
    <div class="content">
    <img src="images/upper-lip-threading.png" alt="threading" style="width:100%">
    <center/> <h4>Upperlips Threading</h4>
         </div>
  </div>
  <div class="column threading">
    <div class="content">
    <img src="images/chin.png" alt="threading" style="width:100%">
    <center/><h4>Chin Threading</h4>
      
    </div>
  </div>

  <div class="column makeup">
    <div class="content">
      <img src="images/bridal images2.png" alt="bridal makeup" style="width:100%">
      <center/> <h4>Bridal Makeup</h4>
      </div>
  </div>
  <div class="column makeup">
    <div class="content">
    <img src="images/simple.png" alt="bbridal makeup" style="width:100%">
    <center/><h4>Simple Makeup</h4>
      
    </div>
  </div>
  <div class="column makeup">
    <div class="content">
    <img src="images/sidal.png" alt="makeup" style="width:100%">
    <center/> <h4>Sidal Makeup</h4>
      
    </div>
  </div>

  <div class="column spa ">
    <div class="content">
      <img src="images/body spa.png" alt="bridal makeup" style="width:100%">
      <center/> <h4>Body Spa</h4>
      </div>
  </div>
  <div class="column spa">
    <div class="content">
    <img src="images/hair spa.png" alt="bbridal makeup" style="width:100%">
    <center/><h4>Hair Spa</h4>
      
    </div>
  </div>
  <div class="column spa">
    <div class="content">
    <img src="images/hair spa2.png" alt="makeup" style="width:100%">
    <center/> <h4>Hair Spa</h4>
      
    </div>
  </div>
  <div class="column haircut">
    <div class="content">
      <img src="images/trim.png" alt="bridal makeup" style="width:100%">
      <center/> <h4>Trimming</h4>
      </div>
  </div>
  <div class="column haircut">
    <div class="content">
    <img src="images/layer hc.png" alt="bbridal makeup" style="width:100%">
    <center/><h4>Layer cut</h4>
      
    </div>
  </div>
  <div class="column haircut">
    <div class="content">
    <img src="images/step hc.png" alt="makeup" style="width:100%">
    <center/> <h4>Step cut</h4>
      
    </div>
  </div>

  <div class="column facial">
    <div class="content">
      <img src="images/scrub.png" alt="bridal makeup" style="width:100%">
      <center/> <h4> Facial Scrub</h4>
      </div>
  </div>
  <div class="column facial">
    <div class="content">
    <img src="images/gold f.png" alt="bbridal makeup" style="width:100%">
    <center/><h4>Facial Mask</h4>
      
    </div>
  </div>
  <div class="column facial">
    <div class="content">
    <img src="images/cleanup.png" alt="makeup" style="width:100%">
    <center/> <h4>Facial Cleanup</h4>
      
    </div>
  </div>
<!-- END GRID -->
</div>

<!-- END MAIN -->
</div>

<script>
filterSelection("all")
function filterSelection(c) {
  var x, i;
  x = document.getElementsByClassName("column");
  if (c == "all") c = "";
  for (i = 0; i < x.length; i++) {
    w3RemoveClass(x[i], "show");
    if (x[i].className.indexOf(c) > -1) w3AddClass(x[i], "show");
  }
}

function w3AddClass(element, name) {
  var i, arr1, arr2;
  arr1 = element.className.split(" ");
  arr2 = name.split(" ");
  for (i = 0; i < arr2.length; i++) {
    if (arr1.indexOf(arr2[i]) == -1) {element.className += " " + arr2[i];}
  }
}

function w3RemoveClass(element, name) {
  var i, arr1, arr2;
  arr1 = element.className.split(" ");
  arr2 = name.split(" ");
  for (i = 0; i < arr2.length; i++) {
    while (arr1.indexOf(arr2[i]) > -1) {
      arr1.splice(arr1.indexOf(arr2[i]), 1);     
    }
  }
  element.className = arr1.join(" ");
}


// Add active class to the current button (highlight it)
var btnContainer = document.getElementById("myBtnContainer");
var btns = btnContainer.getElementsByClassName("btn");
for (var i = 0; i < btns.length; i++) {
  btns[i].addEventListener("click", function(){
    var current = document.getElementsByClassName("active");
    current[0].className = current[0].className.replace(" active", "");
    this.className += " active";
  });
}
</script>
<%@ include file="footer.jsp" %>
</body>
</html>
