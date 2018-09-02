//Nút quy về đầu trang sử dụng jQuery
jQuery(document).ready(function($){ 	
	if($(".btn-top").length > 0){
		$(window).scroll(function () {
			e = $(window).scrollTop();
			if (e > 300) { //quá 300pixel thì hiện ra... ngược lại thì ẩn đi
				$(".btn-top").show() 
			} else {
				$(".btn-top").hide()
			}
		});
	$(".btn-top").click(function () {//nếu nhấp vào btn-top thì cuộn về vị trí 0
			$('body,html').animate({
				scrollTop: 0
			})
		})
	}		
});

//Chào theo thời gian

function chao()
{
n=new Date(); //khai báo biến n
if(n.getTimezoneOffset()==0)  //Nếu múi giờ bằng 0
	t=n.getTime()+(7*60*60*1000); //VN ở múi giờ +/ => cộng thêm 7 tiếng 
else 
	t=n.getTime();n.setTime(t);h=n.getHours(); //gán giờ phút giây vào các biến
if(h>22)
	ht=dp="Chúc bạn ngủ ngon ,cảm ơn đã ghé thăm bạn thân yêu !";
else if(h<=4)
	ht=dp="Chào ngày mới bạn thân yêu, chúc bạn vui vẻ tại trang web này !";
else if(h>4&&h<=6)
	t=dp="Bình minh đón chào ngày mới, chúc vui vẻ may mắn sẽ đến với bạn nhé, bạn thân yêu!";
else if(h>17&&h<=18)
	ht=dp="Chúc vui vẻ, bạn đã có dự tính gì cho buổi tối này chưa?";
else if(h>18&&h<=22)
	ht=dp="Chúc bạn có một buổi tối vui vẻ, đầm ấm và hạnh phúc bên gia đình và bạn bè!";
else {
	ht="Hi , Chúc bạn một ngày học tập và làm việc thành công!";
	dp="Chúc bạn có ngày nghỉ cuối tuần vui vẻ , hạnh phúc nhé bạn thân yêu!"}
if(n.getDay()==6 || n.getDay()==0) //nếu rơi vào ngày thứ 7 hoặc chủ nhật (THỨ có giá trị 0, 1, 2, 3, 4, 5, 6 tương ứng với CN, T2, T3, T4, T5, T6, T7)
	document.getElementById("LoiChao").innerHTML=dp; //document.write(dp);
else document.getElementById("LoiChao").innerHTML=ht;}



//Hiển thị đồng hồ

myVar=setInterval(function(){Clock()},1000);
function Clock() {
a=new Date();
w=Array("Chủ Nhật","Thứ hai","Thứ ba","Thứ tư","Thứ năm","Thứ sáu","Thứ bảy");//tạo mảng các ngày trong tuần
a=w[a.getDay()],
w=new Date,
d=w.getDate();
m=w.getMonth()+1;
y=w.getFullYear();
h=w.getHours();
mi=w.getMinutes();
se=w.getSeconds();
	//Nếu d,m,h,mi,se >10 thì thêm số 0 vào trước chuỗi
if(10>d){d="0"+d}
if(10>m){m="0"+m}
if(10>h){h="0"+h}
if(10>mi){mi="0"+mi}
if(10>se){se="0"+se}
document.getElementById("clockDiv").innerHTML=" "+h+":"+mi+":"+se+" <br> "+a+", ngày "+d+" tháng "+m+" năm "+y+" "; //thời gian
}

function timkiem()
{
  var name = document.getElementById('inputtim').value;
  if(name == '' || name == ' ' )
	{
		alert('Vui lòng nhập vào từ khoá để tìm kiếm!');
		window.location.href="javascript:history.go(-1);";
	}
}
function kiemtra()
{
	//alert('Vui lòng nhập vào tên bạn!');
  	name = document.getElementById('name').value;
  	email = document.getElementById('email').value;
	aCong=email.indexOf('@');
	dauCham = email.lastIndexOf('.');
  	emailmessage = document.getElementById('email-message').value;
  if(name == '')
	{
		alert('Vui lòng nhập vào tên bạn!');
		return false;
	}
  else if(email == '')
	  {
		alert('Vui lòng nhập vào email của bạn!');
		return false;

	}
  else if((aCong<1) || (dauCham<aCong+2) || (dauCham+2>email.length)) //@ ko được ở vị trí đầu, dấu chấm cách @ ít nhất 1 ký tự, dấu chấm ko được đứng cuối
{
	alert('Email bạn điền không chính xác');
		return false;
}
  else if(emailmessage == '')
	  {
		alert('Vui lòng nhập vào nội dung !');
		return false;
	}
	else
	{
		if (confirm('Bạn có chắc chắn muốn gửi') == true){
			alert('Đã gửi thành công');
			window.location = 'Default.aspx';
		}
		else
		{
			//ko làm gì ~~
		}
	}
	
}

//đổi màu chữ sau 0.5 giây
time=500;
function red()
{
	document.getElementById("LoiChao").style.color = "red";
	setTimeout(function() {orange(); }, time);
}
function orange()
{
	document.getElementById("LoiChao").style.color = "orange";
	setTimeout(function() {yellow(); }, time);
}
function yellow()
{
	document.getElementById("LoiChao").style.color = "green";
	setTimeout(function() {blue(); }, time);
}
function blue()
{
	document.getElementById("LoiChao").style.color = "blue";
	setTimeout(function() {red(); }, time);
}
		  