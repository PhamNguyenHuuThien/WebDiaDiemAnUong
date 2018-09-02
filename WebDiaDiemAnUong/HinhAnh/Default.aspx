<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebDiaDiemAnUong.HinhAnh.Default1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Tieude" runat="server">
    Hình ảnh
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    <div class="slideshow-container">

<div class="mySlides fade">
  <div class="numbertext">1</div>
  <img src="https://cdn.cnn.com/cnnnext/dam/assets/150521165140-01-microbiome-foods-restricted-super-169.jpg" style="width:100%">
  <div class="text"></div>
</div>

<div class="mySlides fade">
  <div class="numbertext">2</div>
  <img src="https://cdn.cnn.com/cnnnext/dam/assets/150521165141-02-microbiome-foods-restricted-super-169.jpg" style="width:100%">
  <div class="text"></div>
</div>

<div class="mySlides fade">
  <div class="numbertext">3</div>
  <img src="https://cdn.cnn.com/cnnnext/dam/assets/140424171238-coffee-cup-horizontal-large-gallery.jpg" style="width:100%">
  <div class="text"></div>
</div>
<div class="mySlides fade">
  <div class="numbertext">4</div>
  <img src="https://moondancepokhara.com/wp-content/uploads/2014/06/indien.jpg" style="width:100%">
  <div class="text"></div>
</div>
	
	
<a class="prev" onclick="plusSlides(-1)">❮</a>
<a class="next" onclick="plusSlides(1)">❯</a>

</div>
<br>

<div style="text-align:center">
  <span class="dot" onclick="currentSlide(1)"></span> 
  <span class="dot" onclick="currentSlide(2)"></span> 
  <span class="dot" onclick="currentSlide(3)"></span> 
	<span class="dot" onclick="currentSlide(4)"></span> 
</div>
		
		
		<br>
		<hr>
		
		
		
		
		

		
		
		
		
		
		
		
   <script> 
var slideIndex = 1;
showSlides(slideIndex);	   
time=3000;

	   window.onload = function()
	   {
		   //currentSlide(1);
		   chao();
		   red();
		   one();
		   
	   }
function one()
{
	currentSlide(1);
	setTimeout(function() {two(); }, time);
}
function two()
{
	currentSlide(2);
	setTimeout(function() {three(); }, time);
}
function three()
{
	currentSlide(3);
	setTimeout(function() {four(); }, time);
}
function four()
{
	currentSlide(4);
	setTimeout(function() {one(); }, time);
}


function plusSlides(n) {
  showSlides(slideIndex += n);
}

function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  if (n > slides.length) {slideIndex = 1}    
  if (n < 1) {slideIndex = slides.length} ;
  for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";  
  }
  for (i = 0; i < dots.length; i++) {
      dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
}</script>    
</asp:Content>
