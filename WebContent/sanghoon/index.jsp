<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta charset="UTF-8" />
<c:set var='cp' value="${pageContext.request.contextPath }" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>MONAMI</title>
    <link rel="shortcut icon" href="${cp}/images/favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" href="${cp}/css/style.css" />
	<script type="text/javascript" src="${cp}/js/common.js"></script>
	<script src="${cp}/js/dragScroll.js"></script>
	<link href="${cp}/css/jquery.dragscroll.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="${cp}/css/style.css">
    <script src="${cp}/dragScroll.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.12.4.min.js"></script>
    <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){
			$(window).scroll(function() {  
		
				var position = $(window).scrollTop();  
		
				if(position > 2400 && position < 3400){    
					player.play();
				}else{
					player.pause();
			}
		
			});
		
		});
		</script>
	<script type="text/javascript" src="/js/common.js"></script>
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
<body>
	<div id="wrap">
		<div id="bgblack"></div>
		<div class="find_layer" style="display: none; top: 50px">
		  <iframe src="./shop/shop.html" frameborder="0" id="find_f"> </iframe>
		  <div class="btnx_">
			<img src="/images/close.png" alt="" />
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
								<li>
									<a href="#">ENG</a>
								</li>
							</ul>
						</div>
						<div class="sns">
							<ul>
								<li>
									<a href="https://www.facebook.com/monami1960" target="_blank">
										<img src="./images/sns_facebook.gif" alt="페이스북" />
									</a>
								</li>
								<li>
									<a href="https://www.instagram.com/monami_official/" target="_blank">
										<img src="./images/sns_insta.gif" alt="인스타" />
									</a>
								</li>
							</ul>
						</div>
					</div>
					<div class="topmenu">
						<ul>
							<c:choose>
           			<c:when test="${loginUser.user_id!=null}" >
            	<li><a href="${cp}/jungmin/usermodify.mo"><span>${loginUser.user_id} 님 환영합니다.</span>&nbsp;&nbsp;</a>
					<a href="${cp}/user/UserLogoutOk.us">LOGOUT</a></li>
					</c:when>
							<c:otherwise>
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
											action="${cp}/user/UserJoinOk.us"   onsubmit="return sendit()">
											<fieldset>
												<legend class="screen_out">회원가입 정보 입력폼</legend>
												<div class="box_join">
													<div class="inp_text">
														<input
															type="text" id="user_id" name="user_id" placeholder="ID">
													</div>
													<input type="button" value="중복검사" class="btn_ck" onclick="checkId()">
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
											action="${cp}/user/UserLoginOk.us">
											
											<fieldset>
												<legend class="screen_out">로그인 정보 입력폼</legend>
												<div class="box_login">
													<div class="inp_text">
													 <label for="user_id1" class="screen_out">아이디</label> <input
															type="text" id="user_id1" name="user_id1" placeholder="ID"> 
													</div> 
													<div class="nbsp">&nbsp;</div>
													<div class="inp_text">
														<label for="user_pw1" class="screen_out">비밀번호</label> <input
															type="password" id="user_pw1" name="user_pw1"
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
														href="${cp}/jungmin/idsearch.mo" class="link_find">아이디</a> / <a
														href="/member/find/password" class="link_find">비밀번호 찾기</a>
													</span>
												</div>

											</fieldset>
										</form>

									</div>
								</div></li>
								</c:otherwise>
								
								</c:choose>
							<li>
								<a href="index.html">HOME</a>
							</li>
							<li>
								<a href="./sitemap.html">SITE MAP</a>
							</li>
							<li>
								<a href="http://www.monami.com/customer/inquiry.php">CONTACT US</a>
							</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="gnb">
				<div class="conwrap">
					<h1>
						<a href="index.html">
							<img src="./images/logo.jpeg" alt="">
						</a>
					</h1>
					<div class="nav">
						<ul>
							<li>
								<a href="./about/ceo.html">모나미소개</a>
									<ul>
										<li>
											<a href="./about/ceo.html">CEO 메시지</a>
										</li>
										<li>
											<a href="./about/company.html">회사정보</a>
										</li>
										<li>
											<a href="./about/history.html">회사연혁</a>
										</li>
										<li>
											<a href="#">투자정보</a>
										</li>
										<li>
											<a href="#">CI</a>
										</li>
										<li>
											<a href="#">채용정보</a>
										</li>
										<li>
											<a href="#">찾아오시는 길</a>
										</li>
									</ul>
							</li>
							<li>
								<a href="#">모나미제품</a>
								<ul>
									<li>
										<a href="#">펜</a>
									</li>
									<li>
										<a href="#">마카</a>
									</li>
									<li>
										<a href="lightpen.html">형광펜</a>
									</li>
									<li>
										<a href="#">미술용품</a>
									</li>
									<li>
										<a href="#">기타</a>
									</li>
									<li>
										<a href="cataloguepage.html">카탈로그</a>
									</li>
								</ul>
							</li>
							<li>
								<a href="#">NEWS & VIDEO</a>
								<ul>
									<li>
										<a href="#">보도자료</a>
									</li>
									<li>
										<a href="#">동영상자료</a>
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
										<a href="#">수상작 발표</a>
									</li>
								</ul>
							</li>
							<li>
								<a href="#">고객지원</a>
								<ul>
									<li>
										<a href="FAQ.html">자주묻는질문</a>
									</li>
									<li>
										<a href="#">문의하기</a>
									</li>
									<li>
										<a href="#">이벤트</a>
									</li>
									<li>
										<a class="find_f">모나미 패밀리샵 찾기</a>
									</li>
								</ul>
							</li>
							<li>
								<a href="http://mpms.monami.com">기업 구매 / 개발</a>
								<ul class="hovermenu">
									<li><a href="http://mpms.monami.com">기업 및 단체 구매</a></li>
									<li><a href="#">산업용 맞춤 제품개발</a></li>
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
							<a href="./search.html">
								<img src="./images/btn_search.gif" alt="" />
							</a>
						</div>
					</div>
					<div class="allmenu" style="display: none;">
						<div class="menubox">
							<h2>모나미소개</h2>
							<ul>
								<li><a href="./about/ceo.html">CEO 메시지</a></li>
								<li><a href="./about/company.html">회사정보</a></li>
								<li><a href="./about/history.html">회사연혁</a></li>
								<li><a href="#">투자정보</a></li>
								<li><a href="#">CI</a></li>
								<li><a href="http://recruit.monami.co.kr/" target="_blank">채용정보</a></li>
								<li><a href="#">찾아오시는 길</a></li>
							</ul>
						</div>
						<div class="menubox">
							<h2>모나미제품</h2>
							<ul>
								<li><a href="#">펜</a></li>
								<li><a href="#">마카</a></li>
								<li><a href="lightpen.html">형광펜</a></li>
								<li><a href="#">미술용품</a></li>
								<li><a href="#">기타</a></li>
								<li><a href="cataloguepage.html">카탈로그</a></li>
							</ul>
						</div>
						<div class="menubox">
							<h2>NEWS &amp; VIDEO</h2>
								<ul>
									<li><a href="#">보도자료</a></li>
									<li><a href="#">동영상자료</a></li>
								</ul>
						</div>
						<div class="menubox">
							<h2>모나미 미술대회</h2>
							<ul>
								<li><a href="#" target="_blank">미술대회 소개</a></li>
								<li><a href="#" target="_blank">수상작 발표</a></li>
							</ul>
						</div>
						<div class="menubox">
							<h2>고객지원</h2>
							<ul>
								<li><a href="FAQ.html">자주묻는질문</a></li>
								<li><a href="#">문의하기</a></li>
								<li><a href="#">이벤트</a></li>
								<li><a class="find_f">모나미 패밀리샵 찾기</a></li>
							</ul>
						</div>
						<div class="menubox">
							<h2><a href="#" target="_blank">기업 구매 / 개발</a></h2>
							</div>
					</div>
				</div>
			</div>
		</div>
    </div>
    <!-- 헤더 끝 -->
    <!-- 바디 상단 이미지 시작-->
    <div id="visual">
		<div class="textarea">
			<h3>
				어쩌면 삶은<br>
				인생이라는 종이 위에<br>
				써 내려가는<br>
				펜의 기록 같습니다.<br>
			</h3>
			<p>
				그중에서도 지우고 싶지 않은 기록이 있습니다.<br>
				모나미는 언제나 당신의 행복한 기록과 함께 합니다.
			</p>
		</div>
	</div>
    <!-- 바디 상단 이미지 끝  -->
	
    <!-- 본문 시작  -->
    <div id="container">
		<div id="contents">
			<div class="new">
				<div class="conwrap">
					<div class="tit">
						<h2>NEW<br>ARRIVALS</h2>
						<p>가장 먼저 만나는 설레는 기다림</p>
					</div>
					<div class="toparea">
						<div class="box new1">
							<a href="peninfo/peninfo.html">
								<img src="https://dfrkkcv2hg1jc.cloudfront.net/data/main/file1_16401333121j15oonmzn.jpg" alt="" width="392" height="205">
								<div class="ondiv">
									<div class="align">
										<div class="cate">BALLPOINT PEN</div>
										<div class="name">FX ZETA C3</div>
										<div class="plus">
										<div></div><div></div></div>
									</div>
								</div>
							</a>
						</div>
						<div class="box new2">
							<a href="#">
								<img src="https://dfrkkcv2hg1jc.cloudfront.net/data/main/file1_1636692836t0wc4zcp10.jpg" alt="" width="786" height="360">
								<div class="ondiv">
									<div class="align">
										<div class="cate">NOTE</div>
										<div class="name">지퀀스</div>
										<div class="plus">
										<div></div><div></div></div>
									</div>
							</div>
							</a>
						</div>
					</div>
					<div class="btmarea">
						<div class="box new3">
							<a href="#">
								<img src="https://dfrkkcv2hg1jc.cloudfront.net/data/main/file1_1636692267mqgt626cbz.jpg" alt="" width="392" height="292">
								<div class="ondiv">
									<div class="align">
										<div class="cate">HIGHLIGHTER</div>
										<div class="name">에센티 트윈</div>
										<div class="plus">
										<div></div><div></div></div>
									</div>
								</div>
							</a>
						</div>
						<div class="box new4">
							<a href="#">
								<img src="https://dfrkkcv2hg1jc.cloudfront.net/data/main/file1_16366855229ga65wy5mb.jpg" alt="" width="450" height="439">
								<div class="ondiv">
									<div class="align">
										<div class="cate">BALLPOINT PEN</div>
										<div class="name">제니스</div>
										<div class="plus">
										<div></div><div></div></div>
									</div>
								</div>
							</a>
						</div>
						<div class="box new5">
							<a href="#">
								<img src="https://dfrkkcv2hg1jc.cloudfront.net/data/main/file1_1629263969hla59mlwz0.jpg" alt="" width="314" height="292">
								<div class="ondiv">
									<div class="align">
										<div class="cate">SHARP</div>
										<div class="name">클리키</div>
										<div class="plus">
										<div></div><div></div></div>
									</div>
								</div>
							</a>
						</div>
					</div>
				</div>
			</div>	
			<div class="product" id="our_product">	
				<div class="tit">
					BEST PRODUCT
				</div>
				<p class="tit_btm">언제 어디서나 생활 속에 함께하는 모나미</p>
				<div class="p_tabs">
					<ul>
						<li class="on"><a href="#">펜</a></li>
						<li><a href="index002.html">마카</a></li>
						<li><a href="index003.html">형광펜</a></li>
						<li><a href="index004.html">미술용품</a></li>
					</ul>
				</div>
				<div class="p_lists">
					<ul class="wrapper_ul" style="width: 5680px;">
						<li>
							<a href="#">
								<div class="thum">
									<img src="https://dfrkkcv2hg1jc.cloudfront.net/data/product/1_file6_1642574225zxvl14frbt.jpg" alt="" width="266" height="390">
								</div>
								<div class="info">
									<div class="cate">유성볼펜</div>
									<div class="name">153 어흥이</div>
								</div>
							</a>
						</li>
						<li>
							<a href="peninfo/peninfo.html">
								<div class="thum">
									<img src="https://dfrkkcv2hg1jc.cloudfront.net/data/product/2010152034_file6_1639639980jngius8r6i.jpg" alt="" width="266" height="390">
								</div>
								<div class="info">
									<div class="cate">유성볼펜</div>
									<div class="name">FX ZETA C3</div>
								</div>
							</a>
						</li>
						<li>
							<a href="#">
								<div class="thum">
									<img src="https://dfrkkcv2hg1jc.cloudfront.net/data/product/2010030001_file6_1635127393stijdjvr99.jpg" alt="" width="266" height="390">
								</div>
								<div class="info">
									<div class="cate">유성볼펜</div>
									<div class="name">제니스7</div>
								</div>
							</a>
						</li>
						<li>
							<a href="#">
								<div class="thum">
									<img src="https://dfrkkcv2hg1jc.cloudfront.net/data/product/2040048012_file6_1583298386d4wy0fw22t.jpg" alt="" width="266" height="390">
								</div>
								<div class="info">
									<div class="cate">만년필</div>
									<div class="name">153 네오 만년필 EF</div>
								</div>
							</a>
						</li>
						<li>
							<a href="#">
								<div class="thum">
									<img src="https://dfrkkcv2hg1jc.cloudfront.net/data/product/2011000001_file6_15820789024x1nayhgws.jpg" alt="" width="266" height="390">
								</div>
								<div class="info">
									<div class="cate">유성볼펜</div>
									<div class="name">플립3</div>
								</div>
							</a>
						</li>
						<li>
							<a href="#">
								<div class="thum">
									<img src="https://dfrkkcv2hg1jc.cloudfront.net/data/product/2011000012_file6_1620349565gom4im08o3.jpg" alt="" width="266" height="390">
								</div>
								<div class="info">
									<div class="cate">유성볼펜</div>
									<div class="name">FLIP3 형광</div>
								</div>
							</a>
						</li>
						<li>
							<a href="#">
								<div class="thum">
									<img src="https://dfrkkcv2hg1jc.cloudfront.net/data/product/2010207014_file6_1597798381k1ar11akrd.jpg" alt="" width="266" height="390">
								</div>
								<div class="info">
									<div class="cate">프리미엄펜</div>
									<div class="name">153 네오 아트</div>
								</div>
							</a>
						</li>
						<li>
							<a href="#">
								<div class="thum">
									<img src="https://dfrkkcv2hg1jc.cloudfront.net/data/product/2016010001_file6_1594946058soa8elphio.jpg" alt="" width="266" height="390">
								</div>
								<div class="info">
									<div class="cate">프리미엄펜</div>
									<div class="name">153 네온</div>
								</div>
							</a>
						</li>
						<li>
							<a href="#">
								<div class="thum">
									<img src="https://dfrkkcv2hg1jc.cloudfront.net/data/product/2016009001_file6_15858719673zblr2z1hq.jpg" alt="" width="266" height="390">
								</div>
								<div class="info">
									<div class="cate">유성볼펜</div>
									<div class="name">153 아로마</div>
								</div>
							</a>
						</li>
						<li>
							<a href="#">
								<div class="thum">
									<img src="https://dfrkkcv2hg1jc.cloudfront.net/data/product/ 2040012000_file6_1581983504aiqk5l95cs.jpg" alt="" width="266" height="390">
								</div>
								<div class="info">
									<div class="cate">프리미엄펜</div>
									<div class="name">60주년 프러스펜 3000 데스크펜 스페셜 에디션</div>
								</div>
							</a>
						</li>
						<li>
							<a href="#">
								<div class="thum">
									<img src="https://dfrkkcv2hg1jc.cloudfront.net/data/product/2010011003_file6_1603239769a8bxyplq27.jpg" alt="" width="266" height="390">
								</div>
								<div class="info">
									<div class="cate">유성볼펜</div>
									<div class="name">153 클립</div>
								</div>
							</a>
						</li>
						<li>
							<a href="#">
								<div class="thum">
									<img src="https://dfrkkcv2hg1jc.cloudfront.net/data/product/2012000001_file6_158208613198boosjtl0.jpg" alt="" width="266" height="390">
								</div>
								<div class="info">
									<div class="cate">유성볼펜</div>
									<div class="name">FX multi 700</div>
								</div>
							</a>
						</li>
						<li>
							<a href="#">
								<div class="thum">
									<img src="https://dfrkkcv2hg1jc.cloudfront.net/data/product/2010000003_file6_15759536886i29q2a2ud.jpg" alt="" width="266" height="390">
								</div>
								<div class="info">
									<div class="cate">프리미엄펜</div>
									<div class="name">153 스마트펜</div>
								</div>
							</a>
						</li>
						<li>
							<a href="#">
								<div class="thum">
									<img src="https://dfrkkcv2hg1jc.cloudfront.net/data/product/2110000001_file6_15740631264g0err5skc.jpg" alt="" width="266" height="390">
								</div>
								<div class="info">
									<div class="cate">만년필</div>
									<div class="name">라인 만년필</div>
								</div>
							</a>
						</li>
						<li>
							<a href="#">
								<div class="thum">
									<img src="https://dfrkkcv2hg1jc.cloudfront.net/data/product/8801067279536_file6_1552954140c5bul606gc.jpg" alt="" width="266" height="390">
								</div>
								<div class="info">
									<div class="cate">FX 153</div>
									<div class="name">FX 153</div>
								</div>
							</a>
						</li>
						<li>
							<a href="#">
								<div class="thum">
									<img src="https://dfrkkcv2hg1jc.cloudfront.net/data/product/2011071003_file6_1556070896zlny1by73y.jpg" alt="" width="266" height="390">
								</div>
								<div class="info">
									<div class="cate">프리미엄펜</div>
									<div class="name">153 네이처</div>
								</div>
							</a>
						</li>
						<li>
							<a href="peninfo/peninfo.html">
								<div class="thum">
									<img src="https://dfrkkcv2hg1jc.cloudfront.net/data/product/2010129001_file6_1584059663fxku9xz5t3.jpg" alt="" width="266" height="390">
								</div>
								<div class="info">
									<div class="cate">유성볼펜</div>
									<div class="name">FX ZETA</div>
								</div>
							</a>
						</li>
						<li>
							<a href="#">
								<div class="thum">
									<img src="https://dfrkkcv2hg1jc.cloudfront.net/data/product/2013129005_file6_1543815651bwz2foqzla.jpg" alt="" width="266" height="390">
								</div>
								<div class="info">
									<div class="cate">유성볼펜</div>
									<div class="name">153 야미 </div>
								</div>
							</a>
						</li>
						<li>
							<a href="#">
								<div class="thum">
									<img src="https://dfrkkcv2hg1jc.cloudfront.net/data/product/	2015321003_file6_153800521194eznh2ta7.jpg" alt="" width="266" height="390">
								</div>
								<div class="info">
									<div class="cate">프리미엄펜</div>
									<div class="name">153 블라썸</div>
								</div>
							</a>
						</li>
						<li>
							<a href="#">
								<div class="thum">
									<img src="https://dfrkkcv2hg1jc.cloudfront.net/data/product/2040048001_file6_1519117090gwwh3ty7fi.jpg" alt="" width="266" height="390">
								</div>
								<div class="info">
									<div class="cate">만년필</div>
									<div class="name">153 네오 만년필 F</div>
								</div>
							</a>
						</li>					
					</ul>
				</div>
				<div class="p_info">
					<div class="wrap">
						<span class="arr1"><img src="./images/p_arr1.gif" alt=""></span>
						<span class="arr2"><img src="./images/p_arr2.gif" alt=""></span>
						<div class="ds">
							<div><img src="./images/p_cursor.gif" alt=""></div>
							DRAG &amp; SCROLL
						</div>
					</div>
				</div>
			</div>
	<script>
		var $container = $(".product");
		var $scroller = $(".p_lists");
		var $wrapper = $(".wrapper_ul");
	
		$(window).load(function(){
	
			li = $(".p_lists ul li");
			lilen = li.length;
			liw = lilen*(li.width()+18);
			$(".p_lists ul").width(liw);
	
		});
	
		for (var i = 0; i < 0; i++) {
			$wrapper.append('<li>'+ i +'</li>')
		}
		bindDragScroll($container, $scroller);
	
	</script>
	
	<script type="text/javascript">
	$(function(){
	
		idxNum = 0;
		$(".btn_play a").click(function(){
			var idx = $(this).data("idx");
			dh = $(document).height();
			$("#bgblack").height(dh).show();
			$(".vod_pop").show().animate({top:$(document).scrollTop()+100+"px"},100);
			$(".vod_area").html("<iframe src='video.php?idx="+idx+"' frameborder='0' scrolling='no' width='100%' height='620'></iframe>");
	
		})
		$("#bgblack").click(function(){
	
			$("#bgblack").hide();
			$(".vod_pop").hide();
			$(".vod_area").html("");
	
		})
	})
	</script>
		<div class="video">
			<video loop="" class="bgvid" id="player">
				<source src="./images/monami_brand_web_60.mp4" type="video/mp4">
					<source src="http://dfrkkcv2hg1jc.cloudfront.net/data/video/monami_brand_web_60.ogv" type="video/ogv">
			</video>
		</div>
		<div class="vod_pop">
			<div class="vod_area"></div>
		</div>	
		<div class="bbs">
			<div class="conwrap">
				<div class="news">
					<div class="tit">
						<h2>MONAMI NEWS</h2>
						<a href="/board/board.php?bo_table=bodo">MORE</a>
					</div>
					<ul class="news_lists">
						<li class="first">
							<div class="thum">
								<a href="#"><img src="https://dfrkkcv2hg1jc.cloudfront.net/data/board/bodo/b_file_1642552727243drophj1.jpg" width="164" height="116"></a>
							</div>
							<div class="txt">
								<a href="#">
									<div class="sbj">모나미, 호랑이의 해 임인년(壬寅年)맞아 ‘15..</div>
									<p>
										모나미, 호랑이의 해 임인년(壬寅年)맞아 ‘153 어흥이’ 에디션 출시- 다양한 패턴의 호랑이를 은증착 효과와 비..
									</p>
									<span class="date">2022-01-19</span>
								</a>
							</div>
						</li>
						<li>
							<a href="#">- 모나미, 한국적인 아름다움 담은 라이브칼라 60색 에디션 2종 출시 </a>
							<span class="date">2022-01-14</span>
						</li>
						<li>
							<a href="#">- 모나미, ‘공부왕찐천재 홍진경’과 협업한 문구세트 출시</a>
							<span class="date">2022-01-10</span>
						</li>
						<li>
							<a href="#">- 모나미, 공부 필수템 3색 볼펜 ‘FX ZETA C3’ 출시</a>
							<span class="date">2021-12-22</span>
						</li>
					</ul>
				</div>
				<div class="inquiry">
					<div class="tit">
						<h2>INQUIRY</h2>
					</div>
					<p>언제나 소중한 의견에 귀 기울이겠습니다.<br>궁금한 사항은 문의하세요.</p>
					<a href="#">INQUIRY NOW</a>
				</div>
				<div class="shop">
					<div class="tit">
						<h2>FAMILY SHOP</h2>
					</div>
					<p>패밀리샵은 모나미와 함께 협력하는 문구<br>소매 매장입니다. 주변 패밀리샵을 찾아보세요.</p>
					<a class="#">FIND SHOP</a>
				</div>
			</div>
		</div>
		<div class="fam_links">
			<ul>
				<li><a href="#" target="_blank"><img src="./images/fam_img1.jpeg" alt="모나미 몰"></a></li>
				<li><a href="#" target="_blank"><img src="./images/fam_img6.jpg" alt="모나르떼"></a></li>
				<li><a href="#" target="_blank"><img src="./images/fam_img5.jpg" alt="모나미 스테이션"></a></li>
				<li><a href="#" target="_blank"><img src="./images/fam_img2.jpg" alt="모나미 미술대회"></a></li>
			</ul>
		</div>
		</div>
	
    <!-- 본문 끝 -->
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
            <h1><img src="/images/foot_logo.jpeg" alt="로고"></img></h1>
            <ul class="fm">
              <li>
                <a href="/about/ceo.html">회사소개</a>
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
                  <a href="#" target="_blank">모나미몰</a>
                </li>
                <li>
                  <a href="#" target="_blank">모나르떼</a>
                </li>
                <li>
                  <a href="#" target="_blank">모나미 컨셉스토어</a>
                </li>
                <li>
                  <a href="#" target="_blank">주식회사 항소</a>
                </li>
                <li>
                  <a href="#" target="_blank">모나미 스테이션</a>
                </li>
                <li>
                  <a href="#" target="_blank">모나미 미술대회</a>
                </li>
                <li>
                  <a href="#" target="_blank">모나미 기업서비스</a>
                </li>
                <li>
                  <a href="#" target="_blank">모나미코스메틱</a>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    <!-- 푸터 끝 -->
</div>
	
</body>
</html>