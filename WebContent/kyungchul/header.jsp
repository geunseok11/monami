<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>header part</title>
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
</head>
<body>
<c:set var="cp" value="${pageContext.request.contextPath}"/>
	<div id="bgblack"></div>
	<div class="find_layer" style="display: none; top: 50px">
		<iframe src="${cp}/shop/shop.jsp" frameborder="0" id="find_f"> </iframe>
		<div class="btnx_">
			<img src="${cp}/images/close.png" alt="" />
		</div>
	</div>
	<div id="header">
		<div class="head">
			<div class="head_top">
				<div class="conwrap">
					<div class="links">
						<div class="lang">
							<div class="this_lang">
								<a>KOR</a>
							</div>
							<ul>
								<li><a href="#">ENG</a></li>
							</ul>
						</div>
						<div class="sns">
							<ul>
								<li><a href="https://www.facebook.com/monami1960"
									target="_blank"> <img src="${cp}/images/sns_facebook.gif"
										alt="????????????" />
								</a></li>
								<li><a href="https://www.instagram.com/monami_official/"
									target="_blank"> <img src="${cp}/images/sns_insta.gif"
										alt="?????????" />
								</a></li>
							</ul>
						</div>
					</div>
					<div class="topmenu">
						<ul>
							<li><a class="join_click"
								onclick="document.getElementById('id02').style.display='block'">JOIN</a>
								<!-- The Modal -->
								<div class="modal1" id="id02">
									<div class="join">
										<span
											onclick="document.getElementById('id02').style.display='none'"
											class="close">&times;</span>
										<h2>
											<img src="${cp}/images/logo.jpeg">
										</h2>
										<div id="result">&nbsp;</div>
										
										<form method="post" id="joinForm" name="joinForm"
											action="${cp}/user/UserJoinOk.us" onsubmit="return sendit()">
											<fieldset>
												<legend class="screen_out">???????????? ?????? ?????????</legend>
												<div class="box_join">
													<div class="inp_text">
														<input
															type="text" id="user_id" name="user_id" placeholder="ID">
													</div>
													<input type="button" value="????????????" class="btn_ck">
													<div class="inp_text">
														<label for="user_pw" class="screen_out">????????????</label> <input
															type="password" id="user_pw" name="user_pw"
															placeholder="Password">
													</div>
													<div class="nbsp">&nbsp;</div>
													<div class="inp_text">
														<label for="user_name" class="screen_out">??????</label> <input
															type="text" id="user_name" name="user_name"
															placeholder="??????">
													</div>
													<div class="nbsp">&nbsp;</div>
													<div class="inp_text">
														<label for="user_dob" class="screen_out">????????????</label> <input
															type="txt" id="user_dob" name="user_dob"
															placeholder="???????????? (???:19950427)">
													</div>
													<div class="nbsp">&nbsp;</div>
													<div class="inp_text" id="zipcode">
														<label for="user_zipcode" class="screen_out">????????????</label> <input
															type="txt" id="sample6_postcode" name="user_zipcode"
															placeholder="????????????">
													</div>
													<input type="button"  class="btn_zip"onclick="sample6_execDaumPostcode()" value="???????????? ??????">
													<div class="nbsp">&nbsp;</div>
													<div class="inp_text">
														<label for="user_addr" class="screen_out">??????</label> <input
															type="txt" id="sample6_address" name="user_addr"
															placeholder="??????">
													</div>
													<div class="nbsp">&nbsp;</div>
													<div class="inp_text">
														<label for="user_addrdetail" class="screen_out">????????????</label> <input
															type="txt" id="sample6_detailAddress" name="user_addrdetail"
															placeholder="????????????">
													</div>
													<div class="nbsp">&nbsp;</div>
													<div class="inp_text">
														<label for="user_addretc" class="screen_out">????????????</label> <input
															type="txt" id="sample6_extraAddress" name="user_addretc"
															placeholder="????????????">
													</div>
													<div class="nbsp">&nbsp;</div>
													<div class="inp_text">
														<label for="user_phone" class="screen_out">????????? ??????</label>
														<input type="tel" id="user_phone" name="user_phone"
															placeholder="????????? ??????">
													</div>
												</div>
												<button type="submit" class="btn_join">????????????</button>
												
											</fieldset>
										</form>

									</div>
								</div></li>
							<li><a
								onclick="document.getElementById('id01').style.display='block'">LOGIN</a>
								<!-- The Modal -->
								<div class="modal" id="id01">
									<div class="login">
										<span
											onclick="document.getElementById('id01').style.display='none'"
											class="close">&times;</span>
										<h2>
											<img src="${cp}/images/logo.jpeg">
										</h2>

										<form method="post" id="loginForm"
											action="${cp}/user/UserLoginOk.us">
											<fieldset>
												<legend class="screen_out">????????? ?????? ?????????</legend>
												<div class="box_login">
													<div class="inp_text">
														<label for="user_id" class="screen_out">?????????</label> <input
															type="text" id="user_id" name="user_id" placeholder="ID">
													</div>
													<div class="nbsp">&nbsp;</div>
													<div class="inp_text">
														<label for="user_pw" class="screen_out">????????????</label> <input
															type="password" id="user_pw" name="user_pw"
															placeholder="Password">
													</div>
												</div>
												<button type="submit" class="btn_login">?????????</button>
												<div class="login_append">
													<div class="inp_chk">
														<!-- ????????? checked ?????? -->
														<input type="checkbox" id="keepLogin" class="inp_radio"
															name="keepLogin">
															<span class="txt_lab"
															style="display: inline-block">????????? ?????? ??????</span>
														
													</div>
													<span class="txt_find"> <a
														href="/member/find/loginId" class="link_find">?????????</a> / <a
														href="/member/find/password" class="link_find">???????????? ??????</a>
													</span>
												</div>

											</fieldset>
										</form>

									</div>
								</div></li>
							<li><a href="${cp}/index.jsp">HOME</a></li>
							<li><a href="${cp}/kyungchul/sitemap.jsp">SITE MAP</a></li>
							<li><a href="${cp}/doyoon/Inquiry.jsp">CONTACT US</a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="gnb">
				<div class="conwrap">
					<h1>
						<a href="${cp}/index.jsp"><img src="${cp}/images/logo.jpeg"
							alt="" /></a>
					</h1>
					<div class="nav">
						<ul>
							<li><a href="${cp}/kyungchul/ceo.jsp">???????????????</a>
								<ul>
									<li><a href="${cp}/kyungchul/ceo.jsp">CEO ?????????</a></li>
									<li><a href="${cp}/kyungchul/company.jsp">????????????</a></li>
									<li><a href="${cp}/kyungchul/history.jsp">????????????</a></li>
									<li><a href="${cp}/geunseok/investment.jsp">????????????</a></li>
									<li><a href="${cp}/geunseok/ci.jsp">CI</a></li>
									<li><a href="http://recruit.monami.co.kr/" target="_blank">????????????</a>
									</li>
									<li><a href="${cp}/geunseok/location.jsp">??????????????? ???</a></li>
								</ul></li>
							<li><a href="${cp}/jungmin/pen/penpage.jsp">???????????????</a>
								<ul>
									<li><a href="${cp}/jungmin/pen/penpage.jsp">???</a></li>
									<li><a href="${cp}/jungmin/marker/markerpage.jsp">??????</a></li>
									<li><a href="${cp}/sanghoon/lightpen.jsp">?????????</a></li>
									<li><a href="${cp}/doyoon/A_main1.jsp">????????????</a></li>
									<li><a href="${cp}/doyoon/E_main1.jsp">??????</a></li>
									<li><a href="${cp}/jungmin/cataloguepage.jsp">????????????</a></li>
								</ul></li>
							<li><a href="${cp}/taemin/monami_news1.jsp">NEWS & VIDEO</a>
								<ul>
									<li><a href="${cp}/taemin/monami_news1.jsp">????????????</a></li>
									<li><a href="${cp}/taemin/monami_video1.jsp">???????????????</a></li>
								</ul></li>
							<li><a
								href="https://www.monamimall.com/w/artcontest/info/artContestInfo.do?trackingCd=monami">?????????
									????????????</a>
								<ul>
									<li><a
										href="https://www.monamimall.com/w/artcontest/info/artContestInfo.do?trackingCd=monami">????????????
											??????</a></li>
									<li><a
										href="https://www.monamimall.com/w/artcontest/award/award.do?trackingCd=monami">?????????
											??????</a></li>
								</ul></li>
							<li><a href="./FAQ.jsp">????????????</a>
								<ul>
									<li><a href="${cp}/doyoon/FAQ.jsp">??????????????????</a></li>
									<li><a href="${cp}/doyoon/Inquiry.jsp">????????????</a></li>
									<li><a href="${cp}/inquiry/InquiryList.mo">????????????</a></li>
									<li><a href="${cp}/geunseok/board_event.jsp">?????????</a></li>
									<li><a class="find_f"
										style="padding-left: -10px;">????????? ???????????? ??????</a></li>
								</ul></li>
							<li><a href="http://mpms.monami.com/promotion/">?????? ?????? /
									??????</a>
								<ul class="hovermenu">
									<li><a href="http://mpms.monami.com/promotion/">?????? ???
											?????? ??????</a></li>
									<li><a href="${cp}/geunseok/industry.jsp">????????? ?????? ????????????</a></li>
								</ul></li>
						</ul>
					</div>
					<div class="search">
						<div class="btn_all">
							<div></div>
							<div></div>
							<div></div>
						</div>
						<div class="nav_search">
							<input type="text" name="" id="" /> <a
								href="${cp}/product/ProductList.pd?keyword"> <img
								src="${cp}/images/btn_search.gif" alt="" />
							</a>
						</div>
					</div>
					<div class="allmenu" style="display: none;">
						<div class="menubox">
							<h2>???????????????</h2>
							<ul>
								<li><a href="${cp}/kyungchul/ceo.jsp">CEO ?????????</a></li>
								<li><a href="${cp}/kyungchul/company.jsp">????????????</a></li>
								<li><a href="${cp}/kyungchul/history.jsp">????????????</a></li>
								<li><a href="${cp}/geunseok/investment.jsp">????????????</a></li>
								<li><a href="${cp}/geunseok/ci.jsp">CI</a></li>
								<li><a href="http://recruit.monami.co.kr/" target="_blank">????????????</a></li>
								<li><a href="${cp}/geunseok/location.jsp">??????????????? ???</a></li>
							</ul>
						</div>
						<div class="menubox">
							<h2>???????????????</h2>
							<ul>
								<li><a href="${cp}/jungmin/pen/penpage.jsp">???</a></li>
								<li><a href="${cp}/jungmin/marker/markerpage.jsp">??????</a></li>
								<li><a href="${cp}/sanghoon/lightpen.jsp">?????????</a></li>
								<li><a href="${cp}/doyoon/A_main1.jsp">????????????</a></li>
								<li><a href="${cp}/doyoon/E_main1.jsp">??????</a></li>
								<li><a href="${cp}/jungmin/cataloguepage.jsp">????????????</a></li>
							</ul>
						</div>
						<div class="menubox">
							<h2>NEWS &amp; VIDEO</h2>
							<ul>
								<li><a href="${cp}/news/NewsBoardList.bo">????????????</a></li>
								<li><a href="${cp}/board/Videolist.bo">???????????????</a></li>
							</ul>
						</div>
						<div class="menubox">
							<h2>????????? ????????????</h2>
							<ul>
								<li><a
									href="https://www.monamimall.com/w/artcontest/info/artContestInfo.do?trackingCd=monami"
									target="_blank">???????????? ??????</a></li>
								<li><a
									href="https://www.monamimall.com/w/artcontest/award/award.do?trackingCd=monami"
									target="_blank">????????? ??????</a></li>
							</ul>
						</div>
						<div class="menubox">
							<h2>????????????</h2>
							<ul>
								<li><a href="${cp}/doyoon/FAQ.jsp">??????????????????</a></li>
								<li><a href="${cp}/doyoon/Inquiry.jsp">????????????</a></li>
								<li><a href="${cp}/inquiry/InquiryList.mo">????????????</a></li>
								<li><a href="${cp}/event/EventList.bo">?????????</a></li>
								<li><a class="find_f">????????? ????????????
										??????</a></li>
							</ul>
						</div>
						<div class="menubox">
							<h2>
								<a href="http://mpms.monami.com/promotion/" target="_blank">??????
									?????? / ??????</a>
							</h2>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- ?????? ??? -->
</body>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>const cp = "${pageContext.request.contextPath}"</script>
<script src="${cp}/js/user.js"></script>
</html>