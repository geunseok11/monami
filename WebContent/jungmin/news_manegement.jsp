<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MONAMI</title>
    <c:set var='cp' value="${pageContext.request.contextPath }"/>
    <link rel="shortcut icon" href="${cp}/images/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" href="${cp}/css/pen2.css"/>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.js"></script>
<script type="text/javascript" src="${cp}/ckeditor/ckeditor.js"></script>
<script type="text/javascript" src="${cp}/js/common.js"></script>
<script type="text/javascript">
  $(function () {
    $(document).on("click", ".find_f", function () {
      dh = $(document).height();
      poph = $(".find_layer").height();

      $("#bgblack").height(dh).show();
      $(".find_layer")
        .show()
        .animate({ top: $(document).scrollTop() + 50 + "px" }, 100);
    });
    $("#bgblack,.btnx_").click(function () {
      $("#bgblack").height(dh).hide();
      $(".find_layer").hide();
    });
  });
</script>
</head>
<style>
/* The Modal (background) */
.modal , .modal1{
	display: none; /* Hidden by default */
	position: fixed; /* Stay in place */
	z-index: 1; /* Sit on top */
	left: 0;
	top: 0;
	width: 100%; /* Full width */
	height: 100%; /* Full height */
	overflow: auto; /* Enable scroll if needed */
	background-color: rgb(0, 0, 0); /* Fallback color */
	background-color: rgba(0, 0, 0, 0.4); /* Black w/ opacity */
	padding-top: 60px;
}

/* Modal Content/Box */
.login , .join{
	background-color: #fefefe;
	margin: 5px auto; /* 15% from the top and centered */
	border: 1px solid #888;
	width: 30%; /* Could be more or less, depending on screen size */
	height: 500px;
	position: relative;
	margin: 0 auto;
	position: relative;
}
.join{
	height:700px;
	margin: -30px auto;
	overflow:scroll;
}

a {
	color: #333;
	text-decoration: none;
}

input {
	-webkit-writing-mode: horizontal-tb !important;
	text-rendering: auto;
	color: initial;
	letter-spacing: normal;
	word-spacing: normal;
	text-transform: none;
	text-indent: 0px;
	text-shadow: none;
	display: inline-block;
	text-align: start;
	-webkit-appearance: textfield;
	background-color: white;
	-webkit-rtl-ordering: logical;
	cursor: text;
	margin: 0em;
	font: 400 13.3333px Arial;
	padding: 1px 0px;
	border-width: 2px;
	border-style: inset;
	border-color: initial;
	border-image: initial;
}

.modal h2 , .modal1 h2{
	font-size: 30px;
	text-align: center;
	padding: 30px;
	padding-bottom: 10px;
}

.inner_login {
	position: absolute;
	left: 50%;
	top: 50%;
	margin: -145px 0 0 -160px;
}

.screen_out {
	position: absolute;
	width: 0;
	height: 0;
	overflow: hidden;
	line-height: 0;
	text-indent: -9999px;
}

body, button, input, select, td, textarea, th {
	font-size: 13px;
	line-height: 1.5;
	-webkit-font-smoothing: antialiased;
}


fieldset{
	padding-left: 10px;
	padding-right: 10px;
	border:0;
}
img{
	border: 0;
}
.close {
	position: absolute;
	right: 5px;
	top: 0;
	color: #000;
	font-size: 20px;
}

.close:hover, .close:focus {
	color: red;
	cursor: pointer;
}

.login .box_login , .join .box_join{
	margin: 35px 0 0;
	border-radius: 3px;
	background-color: #fff;
	box-sizing: border-box;
	border-radius: 3px
}

.login .inp_text ,.join .inp_text{
	position: relative;
	width: 100%;
	margin: 0;
	padding: 18px 19px 19px;
	box-sizing: border-box;
	border:1px solid #ddd;
}
div#zipcode{
	width:60%;
	float:left;
}
.login .inp_text+.inp_text , .join .inp_text+.inp_text{
	border-top: 1px solid #ddd;
}

#loginForm #joinForm{
	width: 100%;
}

.inp_text input {
	display: block;
	width: 100%;
	height: 100%;
	font-size: 13px;
	color: #000;
	border: none;
	outline: 0;
	-webkit-appearance: none;
	background-color: transparent;
}
.btn_ck, .btn_zip{
	color:#fff;
	background-color:#000;
	padding: 10px 30px;
    margin: 5px;
    border: none;
    border-radius: 3px;
    cursor:pointer;
}
input.btn_zip{
	margin-left:20px;
	margin-top:2px;
	padding:15px 30px;
}
.btn_login, .btn_join{
	margin: 20px 0 0;
	width: 100%;
	height: 48px;
	border-radius: 3px;
	border:none;
	font-size: 16px;
	color: #fff;
    background: #c40f39;
    cursor:pointer;
}

.login_append {
	overflow: hidden;
	padding: 15px 0 0;
}

.inp_chk {
	display: inline-block;
	position: relative;
	margin-bottom: -1px;
}

.login_append .inp_chk {
	float: left;
}

.inp_chk .inp_radio {
	position: absolute;
	z-index: 1;
	top: 0;
	left: 0;
	width: 18px;
	height: 18px;
	border: none;
}

.inp_chk .lab_g {
	display: inline-block;
	margin-right: 19px;
	color: #909090;
	font-size: 13px;
	line-height: 19px;
	vertical-align: top;
	font-family: "Montserrat", sans-serif;
}

.inp_chk .ico_check {
	display: inline-block;
	width: 18px;
	height: 18px;
	margin: 1px 4px 0 0;
	background-position: -60px 0;
	color: #333;
}

.inp_chk .txt_lab {
	vertical-align: top;
	padding-left:20px;
	font-family: "Montserrat", sans-serif;
	color: #909090;
	font-size: 13px;
}

.login_append .txt_find {
	float: right;
	color: #777;
}
.login_append .txt_find .link_find {
	font-size: 13px;
}
</style>
<body>

	<!--?????? ??????-->
	<%@ include file="/jungmin/header.jsp" %>
	<!-- ?????? ??? -->
	<!-- ?????? ?????? ????????? ??????-->

	<!-- ?????? ?????? ????????? ???  -->
	<!-- ?????? ??????  -->
	<div id="container" style="margin-top:110px;">
		<div id="contents">
			<div class="toptitle"  style=" background: url(${cp}/monami_images/page_visual5.jpg) no-repeat center;">
				<h2> NEWS & VIDEO</h2>
				<p>???????????? ??? ?????? ????????? ????????? ??????????????????.</p>
			</div>
			<div class="submenu_list">
				<ul id="sublist2">
					<li><a href="${cp}/news/NewsBoardList.bo">????????????</a></li>
					<li><a href="${cp}/board/Videolist.bo">???????????????</a></li>
					<li class="on"><a href="${cp}/jungmin/news_manegement.jsp">??????</a>
					</li>

				</ul>
			</div>
			<h3 class="title1">MANEGEMENT</h3>
			<div class="submenu_list2">
				<ul id="sublist2">
					<li class="on"><a href="${cp}/jungmin/news_manegement.jsp">????????????</a>
					</li>
					<li><a href="${cp}/videomodify.jsp">???????????????</a></li>
					<li><a href="${cp}/jungmin/event_manegement.jsp">???????????????</a></li>
				</ul>
			</div>

			<div class="Write">
				<form method="post" name="newsForm" class="W_area" action="${cp}/news/NewsWriteOk.bo" enctype="multipart/form-data">
					
					<table border="1" style="border-collapse: collapse">


						<tr class="WC1">
							<th>??????</th>
							<td><input class="news_title" size="50" name="news_title"
								placeholder="????????? ???????????????"></td>

						</tr>
						<tr class="WC3">
							<th>?????????</th>
							<td><input class="news_writer" name="news_writer"
								size="50"></td>
						</tr>

						<tr class="WC2">
							<th>??????</th>
							<td><textarea class="form-control" id="p_content"
									name="news_content" placeholder="????????? ??????????????????"></textarea></td>
						</tr>
						<script type="text/javascript">
							CKEDITOR.replace('p_content', {
								height : 657
							});
						</script>


						<tr class="f1">
							<th>????????????</th>

							<td><label for="file1" class="filelabel1">????????????</label><input
								type="file" id="file1" name="file1"></td>
						</tr>
					</table>

					<table class="btn">
						<td><a href="javascript:sendnews()">??????</a></td>
					</table>
				</form>
			</div>



			<div class="topbtn">
				<a href="#Top"> <img src="${cp}/images/btn_top.gif" alt="????????????">
				</a>
			</div>
		</div>
	</div>
	<!-- ?????? ??? -->
	<!-- ?????? ?????? -->
	 <%@ include file="/jungmin/footer.jsp" %>
	<!-- ?????? ??? -->
	</div>
</body>
<script>
function sendnews() {
	const newsForm = document.newsForm;
	const news_title = newsForm.news_title;
	if (news_title.value == "") {
		alert("????????? ???????????????!");
		news_title.focus();
		return false;
	}
	const news_writer = newsForm.news_writer;
	if(news_writer.value==""){
		alert("???????????? ???????????????!");
		news_writer.focus();
		return false;
	}
	if(CKEDITOR.instances.p_content.getData().length < 1){
		alert("????????? ????????? ?????????.");
		CKEDITOR.instances.p_content.focus();
		return false;
	}
	newsForm.submit();
}

var fileTarget = $('.f1 #file1');

fileTarget.on('change', function () {
    // ?????? ????????????

    if (window.FileReader) {
        // modern browser 
        var filename = $(this)[0].files[0].name;
    } else {
        // old IE 
        var filename = $(this).val().split('/').pop().split('\\').pop(); // ???????????? ??????
    }

    // ????????? ????????? ?????? 
    $(this).siblings('.filelabel1').html(filename);
});   


</script>
</html>