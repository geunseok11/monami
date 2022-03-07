<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>MONAMI</title>
    <link rel="shortcut icon" href="../images/favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" href="../css/prodiqr.css" />
    <script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
    <script type="text/javascript" src="../js/common.js"></script>
    <link rel="stylesheet" href="../css/style.intro.css">
</head>

<style>
	.list a{
		background-color: transparent;
		color:#424242;
		
	}
	.header_area a{
		width:100px;
		padding:10px;
		text-align:center;
	}
	.header_area span{
		font-weight:bold;
	}
	.pagination a{
		padding:5px;
		width:20px;
		height:20px;
	}
	.pagination a:hover{
		background-color: #55FF9A;
	}
	.nowPage{
		padding:5px;
		display:inline-block;
		border-radius:3px;
		background-color: #55FF9A;
		font-weight: bold;
		width:20px;
		height:20px;
	}
	a.write{
		width:70px;
		height:25px;
		text-align: center;
		border-radius: 10px;
	}
	a.write:hover{
		background-color: #55FF9A;
	}
	table{
		border:0px;
		width:900px;
		margin: 0 auto;
	}
	.title h3{
		font-size:1.5em;
		color:rgb(0,200,80);
		text-shadow:0 0 4px deepskyblue;
	}
	.list{
		border-collapse:collapse;
		border-spacing:0;
		width:900px;
		margin: 0 auto;
	}
	.list td{
		text-align: center;
	}
	.list>tbody>tr>.list_title{
		background-color:rgb(240,255,240);
	}
	.list>tbody>tr:nth-child(n+2):hover{
		background-color:#CECECE;
	}
	.list>tbody>tr>th{
		border-top:1px solid #384d75;
		border-bottom:1px solid #ccc;
		padding:5px;
		font-weight: bold;
		font-size: 15px;
	}
	.list>tbody>tr{
	text-overflow:ellipsis;
			}
	.list>tbody>tr>td{
		border-bottom:1px solid #ccc;
		padding:5px;
	}
	a{
		display:inline-block;
		border-radius:3px;
		font-weight: bold;
		text-decoration: none;
	}
	#container{
		margin-bottom: 100px;
	}
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
    <c:set var="cp" value="${pageContext.request.contextPath}"/>
    <!-- wrap 시작 -->
    <div id="wrap">
        <div id="bgblack"></div> 
        <div class="find_layer" style="display: none; top: 50px">
          <iframe src="${cp}/shop/shop.jsp" frameborder="0" id="find_f">
          </iframe>
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
                                  <li>
                                      <a href="#" target="_blank">
                                          <img src="${cp}/images/sns_facebook.gif" alt="페이스북" />
                                      </a>
                                  </li>
                                  <li>
                                      <a href="#" target="_blank">
                                          <img src="${cp}/images/sns_insta.gif" alt="인스타" />
                                      </a>
                                  </li>
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
												<legend class="screen_out">회원가입 정보 입력폼</legend>
												<div class="box_join">
													<div class="inp_text">
														<input
															type="text" id="user_id" name="user_id" placeholder="ID">
													</div>
													<input type="button" value="중복검사" class="btn_ck">
													<div class="inp_text">
														<label for="user_pw" class="screen_out">비밀번호</label> <input
															type="password" id="user_pw" name="user_pw"
															placeholder="Password">
													</div>
													<div class="nbsp">&nbsp;</div>
													<div class="inp_text">
														<label for="user_name" class="screen_out">이름</label> <input
															type="text" id="user_name" name="user_name"
															placeholder="이름">
													</div>
													<div class="nbsp">&nbsp;</div>
													<div class="inp_text">
														<label for="user_dob" class="screen_out">생년월일</label> <input
															type="txt" id="user_dob" name="user_dob"
															placeholder="생년월일 (예:19950427)">
													</div>
													<div class="nbsp">&nbsp;</div>
													<div class="inp_text" id="zipcode">
														<label for="user_zipcode" class="screen_out">우편번호</label> <input
															type="txt" id="sample6_postcode" name="user_zipcode"
															placeholder="우편번호">
													</div>
													<input type="button"  class="btn_zip"onclick="sample6_execDaumPostcode()" value="우편번호 찾기">
													<div class="nbsp">&nbsp;</div>
													<div class="inp_text">
														<label for="user_addr" class="screen_out">주소</label> <input
															type="txt" id="sample6_address" name="user_addr"
															placeholder="주소">
													</div>
													<div class="nbsp">&nbsp;</div>
													<div class="inp_text">
														<label for="user_addrdetail" class="screen_out">상세주소</label> <input
															type="txt" id="sample6_detailAddress" name="user_addrdetail"
															placeholder="상세주소">
													</div>
													<div class="nbsp">&nbsp;</div>
													<div class="inp_text">
														<label for="user_addretc" class="screen_out">참고항목</label> <input
															type="txt" id="sample6_extraAddress" name="user_addretc"
															placeholder="참고항목">
													</div>
													<div class="nbsp">&nbsp;</div>
													<div class="inp_text">
														<label for="user_phone" class="screen_out">핸드폰 번호</label>
														<input type="tel" id="user_phone" name="user_phone"
															placeholder="핸드폰 번호">
													</div>
												</div>
												<button type="submit" class="btn_join">회원가입</button>
												
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
											action="${cp}/user/UserLoginOk.us"">
											<fieldset>
												<legend class="screen_out">로그인 정보 입력폼</legend>
												<div class="box_login">
													<div class="inp_text">
														<label for="user_id" class="screen_out">아이디</label> <input
															type="text" id="user_id" name="user_id" placeholder="ID">
													</div>
													<div class="nbsp">&nbsp;</div>
													<div class="inp_text">
														<label for="user_pw" class="screen_out">비밀번호</label> <input
															type="password" id="user_pw" name="user_pw"
															placeholder="Password">
													</div>
												</div>
												<button type="submit" class="btn_login">로그인</button>
												<div class="login_append">
													<div class="inp_chk">
														<!-- 체크시 checked 추가 -->
														<input type="checkbox" id="keepLogin" class="inp_radio"
															name="keepLogin">
															<span class="txt_lab"
															style="display: inline-block">로그인 상태 유지</span>
														
													</div>
													<span class="txt_find"> <a
														href="/member/find/loginId" class="link_find">아이디</a> / <a
														href="/member/find/password" class="link_find">비밀번호 찾기</a>
													</span>
												</div>

											</fieldset>
										</form>

									</div>
								</div></li>
                            <li>
                              <a href="${cp}/sanghoon/index.jsp">HOME</a>
                            </li>
                            <li>
                              <a href="${cp}/kyungchul/sitemap.jsp">SITE MAP</a>
                            </li>
                            <li>
                              <a href="${cp}/doyoon/Inquiry.jsp">CONTACT US</a>
                            </li>
                          </ul>
                        </div>
                      </div>
                    </div>
                    <div class="gnb">
                      <div class="conwrap">
                        <h1>
                          <a href="${cp}/sanghoon/index.jsp"><img src="${cp}/images/logo.jpeg" alt="" /></a>
                        </h1>
                        <div class="nav">
                          <ul>
                            <li>
                        <a href="${cp}/kyungchul/ceo.jsp">모나미소개</a>
                        <ul>
                          <li>
                            <a href="${cp}/kyungchul/ceo.jsp">CEO 메시지</a>
                          </li>
                          <li>
                            <a href="${cp}/kyungchul/company.jsp">회사정보</a>
                          </li>
                          <li>
                            <a href="${cp}/kyungchul/history.jsp">회사연혁</a>
                          </li>
                          <li>
                            <a href="${cp}/geunseok/investment.jsp">투자정보</a>
                          </li>
                          <li>
                            <a href="${cp}/geunseok/ci.jsp">CI</a>
                          </li>
                          <li>
                            <a href="http://recruit.monami.co.kr/" target="_blank">채용정보</a>
                          </li>
                          <li>
                            <a href="${cp}/geunseok/location.jsp">찾아오시는 길</a>
                          </li>
                        </ul>
                      </li>
                      <li>
                        <a href="${cp}/jungmin/pen/penpage.jsp">모나미제품</a>
                        <ul>
                          <li>
                            <a href="${cp}/jungmin/pen/penpage.jsp">펜</a>
                          </li>
                          <li>
                            <a href="${cp}/jungmin/marker/markerpage.jsp">마카</a>
                          </li>
                          <li>
                            <a href="${cp}/sanghoon/lightpen.jsp">형광펜</a>
                          </li>
                          <li>
                            <a href="${cp}/doyoon/A_main1.jsp">미술용품</a>
                          </li>
                          <li>
                            <a href="${cp}/doyoon/E_main1.jsp">기타</a>
                          </li>
                          <li>
                            <a href="${cp}/jungmin/cataloguepage.jsp">카탈로그</a>
                          </li>
                        </ul>
                      </li>
                      <li>
                        <a href="${cp}/teamin/monami_news1.jsp">NEWS & VIDEO</a>
                        <ul >
                          <li>
                            <a href="${cp}/teamin/monami_news1.jsp">보도자료</a>
                          </li>
                          <li>
                            <a href="${cp}/teamin/monami_video1.jsp">동영상자료</a>
                          </li>
                        </ul>
                      </li>
                      <li>
                        <a href="https://www.monamimall.com/w/artcontest/info/artContestInfo.do?trackingCd=monami">모나미 미술대회</a>
                        <ul>
                          <li>
                            <a href="https://www.monamimall.com/w/artcontest/info/artContestInfo.do?trackingCd=monami">미술대회 소개</a>
                          </li>
                          <li>
                            <a href="https://www.monamimall.com/w/artcontest/award/award.do?trackingCd=monami">수상작 발표</a>
                          </li>
                        </ul>
                      </li>
                      <li>
                        <a href="${cp}/doyoon/FAQ.jsp">고객지원</a>
                        <ul>
                          <li>
                            <a href="${cp}/doyoon/FAQ.jsp">자주묻는질문</a>
                          </li>
                          <li>

                            <a href="${cp}/inquiry/InquiryWrite.mo">문의하기</a>
                          </li>
                          <li>
                            <a href="${cp}/inquiry/InquiryList.mo">문의사항</a>

                            <a href="${cp}/doyoon/Inquiry.jsp">문의하기</a>
                          </li>
                          <li>
                            <a href="${cp}/teamin/Inquerylist.jsp">문의사항</a>

                          </li>
                          <li>
                            <a href="${cp}/geunseok/board_event.jsp">이벤트</a>
                          </li>
                          <li>
                            <a class="find_f">모나미 패밀리샵 찾기</a>
                          </li>
                        </ul>
                      </li>
                      <li>
                        <a href="http://mpms.monami.com/promotion/">기업 구매 / 개발</a>
                        <ul class="hovermenu">
                          <li><a href="http://mpms.monami.com/promotion/">기업 및 단체 구매</a></li>
                          <li><a href="${cp}/geunseok/industry.jsp">산업용 맞춤 제품개발</a></li>
                        </ul>
                      </li>
                </ul>
            </div>
            <div class="search">
                <div class="btn_all">
                    <div></div>
                    <div></div>
                    <div></div>
                </div>
                <div class="nav_search">
                <input type="text" name="" id="" />
                <a href="${cp}/kyungchul/search.jsp">
                    <img src="${cp}/images/btn_search.gif" alt="" />
                </a>
                </div>
            </div>
            <div class="allmenu" style="display: none;">
                <div class="menubox">
                    <h2>모나미소개</h2>
                    <ul>
                        <li><a href="${cp}/kyungchul/ceo.jsp">CEO 메시지</a></li>
                              <li><a href="${cp}/kyungchul/company.jsp">회사정보</a></li>
                              <li><a href="${cp}/kyungchul/history.jsp">회사연혁</a></li>
                              <li><a href="${cp}/geunseok/investment.jsp">투자정보</a></li>
                              <li><a href="${cp}/geunseok/ci.jsp">CI</a></li>
                              <li><a href="http://recruit.monami.co.kr/" target="_blank">채용정보</a></li>
                              <li><a href="${cp}/geunseok/location.jsp">찾아오시는 길</a></li>
                    </ul>
                </div>
                <div class="menubox">
                    <h2>모나미제품</h2>
                    <ul>
                        <li><a href="${cp}/jungmin/pen/penpage.jsp">펜</a></li>
                              <li><a href="${cp}/jungmin/marker/markerpage.jsp">마카</a></li>
                              <li><a href="${cp}/sanghoon/lightpen.jsp">형광펜</a></li>
                              <li><a href="${cp}/doyoon/A_main1.jsp">미술용품</a></li>
                              <li><a href="${cp}/doyoon/E_main1.jsp">기타</a></li>
                              <li><a href="${cp}/jungmin/cataloguepage.jsp">카탈로그</a></li>
                    </ul>
                </div>
                <div class="menubox">
                    <h2>NEWS &amp; VIDEO</h2>
                    <ul>
                        <li><a href="${cp}/teamin/monami_news1.jsp">보도자료</a></li>
                              <li><a href="${cp}/teamin/monami_video1.jsp">동영상자료</a></li>
                    </ul>
                </div>
                <div class="menubox">
                    <h2>모나미 미술대회</h2>
                    <ul>
                        <li><a href="https://www.monamimall.com/w/artcontest/info/artContestInfo.do?trackingCd=monami" target="_blank">미술대회 소개</a></li>
                              <li><a href="https://www.monamimall.com/w/artcontest/award/award.do?trackingCd=monami" target="_blank">수상작 발표</a></li>
                    </ul>
                </div>
                <div class="menubox">
                    <h2>고객지원</h2>
                    <ul>
                        <li><a href="${cp}/doyoon/FAQ.jsp">자주묻는질문</a></li>
                              <li><a href="${cp}/inquiry/InquiryWrite.mo">문의하기</a></li>
                              <li><a href="${cp}/geunseok/board_event.jsp">이벤트</a></li>
                              <li><a class="find_f">모나미 패밀리샵 찾기</a></li>
                    </ul>
                </div>
                <div class="menubox">
                    <h2><a href="http://mpms.monami.com/promotion/" target="_blank">기업 구매 / 개발</a></h2>
                  </div>
            </div>
        </div>
        </div>
    </div>
    </div>
      <!-- 헤더 끝 -->
      <!-- 본문 시작  -->
      <div id="container">
        <div class="pagetitle pn4">
            <h2>고객지원</h2>
            <p>모나미는 언제나 소중한 의견에 귀 기울이겠습니다.</p>
        </div>
        <div class="pagetabs">
            <ul class="m4">
                <li><a href="${cp}/doyoon/FAQ.jsp">자주하는질문</a></li>
                <li><a href="${cp}/inquiry/InquiryList.mo" class="on">문의하기</a></li>
                <li><a href="${cp}/inquiry/InquiryWrite.mo">문의등록</a></li>
                <li><a href="${cp}/geunseok/board_event.jsp">이벤트</a></li>
                <li><a href="${cp}/shop/shop.jsp">모나미 패밀리샵 찾기</a></li>
            </ul>
        </div>
        <h3 class="title1">
            MONAMI <span>INQUERYLIST</span>
        </h3>
      <div id="wrap">
      	<table class="list">
      		<tr align="center" valign="middle" style="background-color: #AFFFC5">
      			<th width="5%">번호</th>
      			<th width="10%">문의내용</th>
      			<th width="10%">이름</th>
      			<th width="15%">이메일</th>
      			<th width="15%">연락처</th>
      			<th width="10%">제목</th>
      			<th width="30%">내용</th>
      		</tr>
      		<c:choose>
      			<c:when test="${inquiryList.size()>0 and inquiryList != null}">
      				<c:forEach var="inquiry" items="${inquiryList}">
      					<tr class="inquiry">
      						<td>${inquiry.iqr_idx}</td>
      						<td>${inquiry.iqr_catagory}</td>
      						<td>${inquiry.iqr_writer}</td>
      						<td>${inquiry.iqr_email}</td>
      						<td>${inquiry.iqr_phone}</td>
      						<td><a href="${cp}/inquiry/InquiryView.mo?iqr_idx=${inquiry.iqr_idx}&page=${page}">${inquiry.iqr_title}</a></td>
      						<td class="contents" style="text-overflow: ellipsis; height: 5px">${inquiry.iqr_content}</td>
      					</tr>
      				</c:forEach>
      			</c:when>
      			<c:otherwise>
      				<tr>
      					<td colspan="6" style="text-align: center; font-size: 20px">
      					등록된 게시글이 없습니다.
      					</td>
      				</tr>
      			</c:otherwise>
      		</c:choose>
      	</table>
      	<table class="pagination">
			<tr align="center" valign="middle">
				<td>
					<c:if test="${page>1}">
						<a href="${cp}/inquiry/InquiryList.mo?page=${page-1}">&lt;</a>
					</c:if>
					<c:forEach begin="${startPage}" end="${endPage}" step="1" var="i">
						<c:choose>
							<c:when test="${i == page}">
								<span class="nowPage">${i}</span>
							</c:when>
							<c:otherwise>
								<a href="${cp}/inquiry/InquiryList.mo?page=${i}&keyword=${keyword}">${i}</a>
							</c:otherwise>
						</c:choose>
					</c:forEach>
					<c:if test="${page<totalPage}">
						<a href="${cp}/inquiry/InquiryList.mo?page=${page+1}">&gt;</a>
					</c:if>
				</td>
			</tr>
		</table>
		<table style="border:0px; width:900px;">
			<tr align="right" valign="middle">
				<td><a class="write" href="${cp}/inquiry/InquiryWrite.mo?page=${page}">글쓰기</a></td>
			</tr>
		</table>
      </div>
      </div>
      <!-- 푸터 시작 -->

   <div id="footer">
    <div class="foot">
      <div class="foot_pop" style="display: none;">
        <div class="privacy" style="display: none;">
          <div class="title">개인정보 취급방침</div>
          <div class="textarea">
            <textarea readonly="readonly">'㈜모나미'는 (이하 '회사'는) 정보주체의 개인정보를 중요시하며, "정보통신망 이용촉진 및 정보보호"에 관한 법률을 준수하고 있습니다. 회사는 개인정보취급방침을 통하여 고객님께서 제공하시는 개인정보가 어떠한 용도와 방식으로 이용되고 있으며, 개인정보보호를 위해 어떠한 조치가 취해지고 있는지 알려드립니다. 회사는 개인정보취급방침을 개정하는 경우 웹사이트 공지사항(또는 개별공지)을 통하여 공지할 것입니다.
    ＊ ㈜모나미의 개인정보 처리방침은 다음과 같은 내용을 담고 있습니다.
    
    1. 수집하는 개인정보 항목 및 수집방법 
    회사는 제품 문의, 제안사항, 불만사항 접수 등을 위해 아래와 같은 개인정보를 수집하고 있습니다. 
    - 필수항목 : 이름, 이메일
    - 선택항목 : 연락처
    (단, 정보주체의 기본적 인권 침해의 우려가 있는 민감한 인종 및 민족, 사상 및 신조, 출신지 및 본적지, 정치적 성향 및 범죄기록,건강상태 및 성생활 등의 개인정보는 수집하지 않습니다.) 
    또한, 서비스 이용 과정에서 아래와 같은 정보들이 생성되어 수집될 수 있습니다.
    - 개인정보 추가 수집에 대해 별도 동의를 받는 경우 
    - 수집방법 : 홈페이지 ’문의하기(Contact Us)’ 서비스를 통한 수집
    
    2. 개인정보 수집 및 이용목적
    회사는 수집한 개인정보를 다음의 목적을 위해 활용합니다.
    이용목적 : 질의자가 문의한 답변 전달, 본인의 의사표시 사항 처리, 불만사항 처리, 기타 원활한 의사소통 경로 확보 (이용 목적이 변경될 시에는 사전동의를 구할 예정입니다.)
    
    3. 개인정보의 제공 및 공유
    회사는 정보주체들의 개인정보를 개인정보의 수집목적 및 이용목적에서 고지한 범위내에서 사용하며, 정보주체의 사전 동의 없이는 범위를 초과하여 이용하거나 원칙적으로 정보주체의 개인정보를 외부에 공개하지 않습니다. 다만, 아래의 경우에는 예외로 합니다. 
    - 정보주체들이 사전에 동의한 경우
    - 법령의 규정에 의거하거나, 수사 목적으로 법령에 정해진 절차와 방법에 따라 수사기관의 요구가 있는 경우
    
    4. 개인정보의 보유 및 이용기간
    정보주체 개인정보는 원칙적으로, 개인정보의 수집 및 이용목적이 달성된 후에는 해당 정보를 지체 없이 파기합니다. 단, ‘회사’ 내부 방침 또는 정보주체로부터 개인정보 수집 시 동의 받은 개인정보 보유/이용기간, 관련법령의 규정 내에서 개인정보를 처리/보유합니다. 일정기간 동안 보존해야 하는 정보에 대해 아래와 같은 사유로 인하여 보존하고 있습니다.
    - 보존항목 : (필수) 이름, 이메일, 제목, 내용 / (선택) 연락처, 첨부파일 
    - 보유근거 : 정보주체 동의
    - 보유 및 이용기간 : 3년
    
    5. 개인정보의 파기절차 및 방법
    회사는 원칙적으로 개인정보수집 및 이용목적이 달성된 후에는 해당정보를 지체없이 파기합니다. 파기절차 및 방법은 다음과 같습니다.
    - 파기절차 
     : 정보주체가 서비스 신청, 문의상담 등을 위하여 입력하신 정보는 목적이 달성된 후 별도의 DB로 옮겨져(종이의 경우 별도의 서류함) 내부 방침 및 기타 관련 법령에 의한 정보보호 사유에 따라(보유 및 이용기간 참조) 일정기간 저장된 후 파기되어집니다.
     : 동 개인정보는 법률에 의한 경우가 아니고서는 보유되어지는 이외의 다른 목적으로 이용되지 않습니다. 
    - 파기방법 
     : 전자적 파일형태로 저장된 개인정보는 기록을 재생할 수 없는 기술적 방법을 사용하여 삭제합니다.
     : 종이에 출력된 개인정보는 분쇄기로 분쇄하거나 소각합니다. 
    
    6. 정보주체 및 법정대리인의 권리와 그 행사방법
    정보주체는 언제든지 등록되어 있는 자신의 개인정보를 조회하거나 수정할 수 있으며 삭제를 요청할 수 있습니다.
    혹은 개인정보보호책임자에게 서면, 전화 또는 이메일로 정정을 요청하시면, 본인 확인 절차 후에 조치하겠습니다. 
    정보주체가 개인정보의 오류 등에 대한 정정 또는 삭제를 요구한 경우에는 회사는 정정 또는 삭제를 완료할 때까지 당해 개인정보를 이용하거나 제공하지 않습니다.
    권리 행사는 정보주체의 법정대리인이나 위임을 받은 자 등 대리인을 통하여 하실 수 있습니다. 이 경우 개인정보 보호법 시행규칙 별지 제11호 서식에 따른 위임장을 제출하셔야 합니다.
    
    7. 개인정보 자동 수집장치의 설치,운영 및 그 거부에 관한 사항
    당사는 쿠키를 사용하지 않습니다. 
    
    8. 개인정보 보호책임자 및 담당부서 안내  
    회사는 고객의 개인정보를 보호하고 개인정보와 관련한 불만을 처리하기 위하여 아래와 같이 관련 부서 및 개인정보관리책임자를 지정하고 있습니다. 
    - 개인정보담당부서 
      : 부서명 : 마케팅팀
      : 전화번호 : 080-022-0153 / 031-216-0153 
      : 이메일 : help2@monami.com 
    - 개인정보보호책임자
      : 성명 : 신동호 팀장
      : 전화번호 : 080-022-0153
      : 이메일 : dhshin@monami.com 
    
    귀하께서는 회사의 서비스를 이용하시며 발생하는 모든 개인정보보호 관련 민원을 개인정보관리책임자 혹은 담당부서로 신고하실 수 있습니다. 회사는 정보주체들의 신고사항에 대해 신속하게 충분한 답변을 드릴 것입니다. 기타 개인정보침해에 대한 신고나 상담이 필요하신 경우에는 아래 기관에 문의하시기 바랍니다. 
    개인분쟁조정위원회 (http://www.1336.or.kr)
    정보보호마크인증위원회 (http://www.eprivacy.or.kr)
    대검찰청 인터넷범죄수사센터 (http://icic.sppo.go.kr)
    경찰청 사이버테러대응센터 (http://www.ctrc.go.kr) 
    
    9. 고지의 의무
    현 개인정보 처리방침 내용 추가, 삭제 및 수정이 있을 시에는 개정 최소 7일전부터 홈페이지의 ‘공지사항’을 통해 고지할 것입니다. 
    개인정보취급방침 시행일자 : 2018년 08월 02일 
     </textarea>
          </div>
          <div class="btn_close"><a>CLOSE</a></div>
        </div>
        <div class="email" style="display: none;">
          <div class="title">이메일무단수집거부</div>
          <div class="textarea">
            본 웹사이트에 게시된 이메일 주소가 전자우편 수집 프로그램이나 그 밖의 기술적 장치를 이용하여 무단으로 수집되는 것을 거부하며, 이를 위반시정 보통신망법에 의해 형사 처벌됨을 유념하시기 바랍니다.
    <br><br>
    <div class="tit">시행일</div>
    
    본 이메일 무단 수집 거부 정책은 2017년 11월부터 시행합니다.
          </div>
          <div class="btn_close"><a>CLOSE</a></div>
        </div>
      </div>
      <div class="foot_top">
        <h1><img src="${cp}/images/foot_logo.jpeg" alt="로고"></img></h1>
        <ul class="fm">
          <li>
            <a href="${cp}/kyungchul/ceo.jsp">회사소개</a>
          </li>
          <li>
            <a class="privacy_pop">개인정보처리방식</a>
          </li>
          <li>
            <a class="email_pop">이메일무단수집거부</a>
          </li>
        </ul>
      </div>
      <div class="foot_btm">
        <div class="info">
          <div class="tit">INFO</div>
          <address>
            ADDRESS : 경기도 용인시 수지구 손곡로 17 <span>l</span> TEL :
            031-216-0153 <span>l</span>
            FAX : 031-270-5154
          </address>
          <p class="copy">
            COPYRIGHT(C) 2017 MONAMI.CO.,LTD. ALL RIGHTS RESERVED.
          </p>
        </div>
        <div class="cc">
          <div class="tit">CUSTOMER CENTER</div>
          <div class="cc_tel">080-022-0153</div>
        </div>
        <div class="fam_site">
          <a>FAMILY SITE</a>
          <ul>
            <li>
                    <a href="https://www.monamimall.com/w/main.do" target="_blank">모나미몰</a>
                  </li>
                  <li>
                    <a href="https://www.mon-arte.com/" target="_blank">모나르떼</a>
                  </li>
                  <li>
                    <a href="https://www.monamimall.com/w/cscenter/store/storeInfo.do" target="_blank">모나미 컨셉스토어</a>
                  </li>
                  <li>
                    <a href="http://www.hangso.co.kr/" target="_blank">주식회사 항소</a>
                  </li>
                  <li>
                    <a href="http://www.monamistation.com/main.do" target="_blank">모나미 스테이션</a>
                  </li>
                  <li>
                    <a href="https://www.monamimall.com/w/artcontest/info/artContestInfo.do" target="_blank">모나미 미술대회</a>
                  </li>
                  <li>
                    <a href="http://mpms.monami.com/promotion/" target="_blank">모나미 기업서비스</a>
                  </li>
                  <li>
                    <a href="http://www.monamicosmetics.com/" target="_blank">모나미코스메틱</a>
                  </li>
          </ul>
        </div>
      </div>
    </div>

    </div>
    </div>
  <!-- 푸터 끝 -->
  </body>

  <script>
	function sendit(){
		let q = document.getElementById('q');
		//유효성 검사

		location.href = cp+"InquiryList.mo?keyword="+q.value;
	}

		location.href = cp+"/board/BoardList.bo?keyword="+q.value;
	}


</script>
</html>