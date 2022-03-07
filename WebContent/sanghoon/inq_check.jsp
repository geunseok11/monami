<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<c:set var="cp" value="${pageContext.request.contextPath}"/>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="stylesheet" href="./css/style.css" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MONAMI</title>
    <script>
function sendit(){
	const pw_area = document.pw_area;
	const pw = document.getElementById('password');
		if(pw.value.length!='4'){
			console.log('1');
			alert('비밀번호 4자리를 입력해주세요.');
			pw.vlaue='';
			pw.focus;
		}else{
			pw_area.submit();
		}
}
</script>
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
								<li>
									<a href="#">ENG</a>
								</li>
							</ul>
						</div>
						<div class="sns">
							<ul>
								<li>
									<a href="https://www.facebook.com/monami1960" target="_blank">
										<img src="${cp}/images/sns_facebook.gif" alt="페이스북" />
									</a>
								</li>
								<li>
									<a href="https://www.instagram.com/monami_official/" target="_blank">
										<img src="${cp}/images/sns_insta.gif" alt="인스타" />
									</a>
								</li>
							</ul>
						</div>
					</div>
					<div class="topmenu">
						<ul>
							<li>
								<a href="index.html">HOME</a>
							</li>
							<li>
								<a href="http://www.monami.com/sitemap.php">SITE MAP</a>
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
						<a href="index.jsp">
							<img src="./images/logo.jpeg" alt="">
						</a>
					</h1>
					<div class="nav">
						<ul>
							<li>
								<a href="#">모나미소개</a>
									<ul>
										<li>
											<a href="#">CEO 메시지</a>
										</li>
										<li>
											<a href="#">회사정보</a>
										</li>
										<li>
											<a href="#">회사연혁</a>
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
										<a href="#">카탈로그</a>
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
										<a href="#">자주묻는질문</a>
									</li>
									<li>
										<a href="#">문의하기</a>
									</li>
									<li>
										<a href="#">이벤트</a>
									</li>
									<li>
										<a href="#">모나미 패밀리샵 찾기</a>
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
							<a href="#">
								<img src="./images/btn_search.gif" alt="" />
							</a>
						</div>
					</div>
					<div class="allmenu" style="display: none;">
						<div class="menubox">
							<h2>모나미소개</h2>
							<ul>
								<li><a href="#">CEO 메시지</a></li>
								<li><a href="#">회사정보</a></li>
								<li><a href="#">회사연혁</a></li>
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
								<li><a href="#">카탈로그</a></li>
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
								<li><a href="#">자주묻는질문</a></li>
								<li><a href="#">문의하기</a></li>
								<li><a href="#">이벤트</a></li>
								<li><a class="#">모나미 패밀리샵 찾기</a></li>
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
    <!-- 본문 시작 -->
    <div  id="pw_area" style="width: 100%; height: 500px; margin-top: 108px; border: 1px solid black;">
        <div clss="pw_area"style="margin: 200px 48%; width: 240px;">
        <form method="post" action="${cp}/board/inq_pwchk.mo?iqr_idx="${iqr_idx} name="pw_area"></form>
            <h3>비밀번호를 입력해주세요</h3>
            <input type="password" name="password" id="password"  maxlength='4' ><a href="javascript:sendit()">확인</a>
        </div>
    </div>
    <!-- 본문 끝 -->
    <!-- 푸터 시작 -->
    <div id="footer">
		<div class="foot">
			<div class="foot_top">
				<h1><img src="${cp}/images/foot_logo.jpeg" alt="로고"></img></h1>
				<ul class="fm">
					<li>
						<a href="#">회사소개</a>
					</li>
					<li>
						<a href="#">개인정보처리방식</a>
					</li>
					<li>
						<a href="#">이메일무단수집거부</a>
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
</body>
</html>