<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${cp}/css/modal.css" />
<link rel="stylesheet" type="text/css" href="${cp}/css/style_intro.css">
<title>header part</title>
</head>
<body>
<c:set var="cp" value="${pageContext.request.contextPath}"/>
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
										alt="페이스북" />
								</a></li>
								<li><a href="https://www.instagram.com/monami_official/"
									target="_blank"> <img src="${cp}/images/sns_insta.gif"
										alt="인스타" />
								</a></li>
							</ul>
						</div>
					</div>
					<div class="topmenu">
						<ul>
								<c:choose>
           			<c:when test="${loginUser.user_id!=null}" >
            	<li><span>${loginUser.user_id} 님 환영합니다.</span>&nbsp;&nbsp;
            		<a href="${cp}/jungmin/usermodify.mo">MYPAGE</a>&nbsp;
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
													action="${cp}/user/UserJoinOk.us"
													onsubmit="return sendit()">
													<fieldset>
														<legend class="screen_out">회원가입 정보 입력폼</legend>
														<div class="box_join">
															<div class="inp_text">
																<input type="text" id="user_id" name="user_id"
																	placeholder="ID">
															</div>
															<input type="button" value="중복검사" class="btn_ck"
																onclick="checkId()">
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
																<label for="user_zipcode" class="screen_out">우편번호</label>
																<input type="txt" id="sample6_postcode"
																	name="user_zipcode" placeholder="우편번호">
															</div>
															<input type="button" class="btn_zip"
																onclick="sample6_execDaumPostcode()" value="우편번호 찾기">
															<div class="nbsp">&nbsp;</div>
															<div class="inp_text">
																<label for="user_addr" class="screen_out">주소</label> <input
																	type="txt" id="sample6_address" name="user_addr"
																	placeholder="주소">
															</div>
															<div class="nbsp">&nbsp;</div>
															<div class="inp_text">
																<label for="user_addrdetail" class="screen_out">상세주소</label>
																<input type="txt" id="sample6_detailAddress"
																	name="user_addrdetail" placeholder="상세주소">
															</div>
															<div class="nbsp">&nbsp;</div>
															<div class="inp_text">
																<label for="user_addretc" class="screen_out">참고항목</label>
																<input type="txt" id="sample6_extraAddress"
																	name="user_addretc" placeholder="참고항목">
															</div>
															<div class="nbsp">&nbsp;</div>
															<div class="inp_text">
																<label for="user_phone" class="screen_out">핸드폰
																	번호</label> <input type="tel" id="user_phone" name="user_phone"
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
																	type="text" id="user_id1" name="user_id1"
																	placeholder="ID">
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
																	name="keepLogin"> <span class="txt_lab"
																	style="display: inline-block">로그인 상태 유지</span>

															</div>
															<span class="txt_find"> <a
																href="${cp}/jungmin/idsearch.mo" class="link_find">아이디</a>
																/ <a href="/member/find/password" class="link_find">비밀번호
																	찾기</a>
															</span>
														</div>

													</fieldset>
												</form>

											</div>
										</div></li>
								</c:otherwise>

							</c:choose>

							<li><a href="${cp}/sanghoon/index.jsp">HOME</a></li>
							<li><a href="${cp}/kyungchul/sitemap.jsp">SITE MAP</a></li>
							<li><a href="${cp}/doyoon/Inquiry.jsp">CONTACT US</a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="gnb">
				<div class="conwrap">
					<h1>
						<a href="${cp}/sanghoon/index.jsp"><img src="${cp}/images/logo.jpeg"
							alt="" /></a>
					</h1>
					<div class="nav">
						<ul>
							<li><a href="${cp}/kyungchul/ceo.jsp">모나미소개</a>
								<ul>
									<li><a href="${cp}/kyungchul/ceo.jsp">CEO 메시지</a></li>
									<li><a href="${cp}/kyungchul/company.jsp">회사정보</a></li>
									<li><a href="${cp}/kyungchul/history.jsp">회사연혁</a></li>
									<li><a href="${cp}/geunseok/investment.jsp">투자정보</a></li>
									<li><a href="${cp}/geunseok/ci.jsp">CI</a></li>
									<li><a href="http://recruit.monami.co.kr/" target="_blank">채용정보</a>
									</li>
									<li><a href="${cp}/geunseok/location.jsp">찾아오시는 길</a></li>
								</ul></li>
							<li><a href="${cp}/jungmin/pen/penpage.jsp">모나미제품</a>
								<ul>
									<li><a href="${cp}/jungmin/pen/penpage.jsp">펜</a></li>
									<li><a href="${cp}/jungmin/marker/markerpage.jsp">마카</a></li>
									<li><a href="${cp}/sanghoon/lightpen.jsp">형광펜</a></li>
									<li><a href="${cp}/doyoon/A_main1.jsp">미술용품</a></li>
									<li><a href="${cp}/doyoon/E_main1.jsp">기타</a></li>
									<li><a href="${cp}/jungmin/cataloguepage.jsp">카탈로그</a></li>
								</ul></li>
							<li><a href="${cp}/news/NewsBoardList.mo">NEWS & VIDEO</a>
								<ul>
									<li><a href="${cp}/news/NewsBoardList.bo">보도자료</a></li>
									<li><a href="${cp}/board/Videolist.bo">동영상자료</a></li>
									<c:if test="${loginUser.user_id == 'admin'}">
									<li><a href="${cp}/jungmin/news_manegement.jsp">등록</a></li>
								</c:if>	
								
								</ul></li>
							<li><a
								href="https://www.monamimall.com/w/artcontest/info/artContestInfo.do?trackingCd=monami">모나미
									미술대회</a>
								<ul>
									<li><a
										href="https://www.monamimall.com/w/artcontest/info/artContestInfo.do?trackingCd=monami">미술대회
											소개</a></li>
									<li><a
										href="https://www.monamimall.com/w/artcontest/award/award.do?trackingCd=monami">수상작
											발표</a></li>
								</ul></li>
							<li><a href="./FAQ.jsp">고객지원</a>
								<ul>
									<li><a href="${cp}/doyoon/FAQ.jsp">자주묻는질문</a></li>
									<li><a href="${cp}/doyoon/Inquiry.jsp">문의하기</a></li>
									<li><a href="${cp}/event/EventList.bo">이벤트</a></li>
									<li><a class="find_f" href="${cp}/shop/shop.jsp"
										style="padding-left: -10px;">모나미 패밀리샵 찾기</a></li>
								</ul></li>
							<li><a href="http://mpms.monami.com/promotion/">기업 구매 /
									개발</a>
								<ul class="hovermenu">
									<li><a href="http://mpms.monami.com/promotion/">기업 및
											단체 구매</a></li>
									<li><a href="${cp}/geunseok/industry.jsp">산업용 맞춤 제품개발</a></li>
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
								href="${cp}/product/ProductList.mo?keyword"> <img
								src="${cp}/images/btn_search.gif" alt="" />
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
								<li><a href="${cp}/news/NewsBoardList.bo">보도자료</a></li>
									<li><a href="${cp}/board/Videolist.bo">동영상자료</a></li>
									<c:if test="${loginUser.user_id == 'admin'}">
									<li><a href="${cp}/jungmin/news_manegement.jsp">등록</a></li>
									</c:if>
							</ul>
						</div>
						<div class="menubox">
							<h2>모나미 미술대회</h2>
							<ul>
								<li><a
									href="https://www.monamimall.com/w/artcontest/info/artContestInfo.do?trackingCd=monami"
									target="_blank">미술대회 소개</a></li>
								<li><a
									href="https://www.monamimall.com/w/artcontest/award/award.do?trackingCd=monami"
									target="_blank">수상작 발표</a></li>
							</ul>
						</div>
						<div class="menubox">
							<h2>고객지원</h2>
							<ul>
								<li><a href="${cp}/doyoon/FAQ.jsp">자주묻는질문</a></li>
								<li><a href="${cp}/doyoon/Inquiry.jsp">문의하기</a></li>
								<li><a href="${cp}/event/EventList.mo">이벤트</a></li>
								<li><a class="find_f" href="${cp}/shop/shop.jsp">모나미 패밀리샵
										찾기</a></li>
							</ul>
						</div>
						<div class="menubox">
							<h2>
								<a href="http://mpms.monami.com/promotion/" target="_blank">기업
									구매 / 개발</a>
							</h2>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 헤더 끝 -->
</body>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>const cp = "${pageContext.request.contextPath}"</script>
<script src="${cp}/js/user.js"></script>
</html>