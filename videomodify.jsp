<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MONAMI</title>
<c:set var="cp" value="${pageContext.request.contextPath }"/>
    <link rel="stylesheet" href="${cp}/css/index_css/style.css" />
    <link rel="stylesheet" href="${cp }/css/style_another.css" />
	<script type="text/javascript" src="${cp}/js/common.js"></script>
	<link rel="stylesheet" href="${cp}/css/news_video.css" />
</head>
<style>
	#container{
		height:930px;
	}
	.btn_area{
	    height: 160px;
		width: 395px;
		margin-left : -10px;
	}
	form{
		margin-top:100px;
 		margin-left:38%;
	}
	table{
		height: 180px;
	}
	input{
		height: 30px;
		width : 392px;
	}
	a{
		display:inline-block;
		text-decoration: none;
	}
	.btn_area a{
		text-align:center;
		padding:10px;
		width:100px;
		border:1px solid black;
		border-radius:3% 3%;
	}
	.board_area input,{
		border:none;
		outline:none;
	}
	.write_box{
		padding-bottom: 40px;
	}
	.write_box>tbody>tr>td:first-child, .update_box>tbody>tr>td:first-child{
		width:150px;
		text-align: center;
		font-weight: bold;
		font-size: 18px;
	}
	.write_box>tbody>tr>td+td{
		position: relative;
	}
	.write_box textarea, .update_box textarea{
		padding:5px 10px;
		height:70px;
		resize:none;
		width:600px;
		outline:none;
		border:1px solid rgba(0,200,80,0.5);
		border-radius:10px;
	}
	.update_box textarea{
		width:500px;
		height:80px;
	}
	.write_box a{
		display:inline-block;
		text-align:center;
		padding:10px;
		width:90px;
		position: absolute;
		top:22px;
		right:0px;
	}
	.update_box{
		border-top:1px solid;
		padding-top:30px;
	}
	.update_box td:last-child {
		vertical-align: top;
	}
	.update_box .btns a{
		display:inline-block;
		width:70px;
		height:30px;
		text-align: center;
		vertical-align: middle;
		line-height: 30px;
		margin-top: 20px;
	}
</style>
<body>
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
								<a href="#">JOIN</a>
							</li>
							<li>
								<a href="#">LOGIN</a>
							</li>
							<li>
								<a href="index.jsp">HOME</a>
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
						<a href="index.jsp">
							<img src="${cp}/images/logo.jpeg" alt="">
						</a>
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
											<a href="${cp}/kyungchul/ceo.jsp">회사정보</a>
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
								<a href="${cp}/teamin/monami_news1.html">NEWS &amp; VIDEO</a>
								<ul>
									<li>
										<a href="${cp}/teamin/monami_news1.jsp">보도자료</a>
									</li>
									<li>
										<a href="${cp}/teamin/monami_video1.jsp">동영상자료</a>
									</li>
								</ul>
							</li>
							<li>
								<a href="https://www.monamimall.com/w/artcontest/info/artContestInfo.do?trackingCd=monami" target="_blank">모나미 미술대회</a>
								<ul>
									<li>
										<a href="https://www.monamimall.com/w/artcontest/info/artContestInfo.do?trackingCd=monami" target="_blank">미술대회 소개</a>
									</li>
									<li>
										<a href="https://www.monamimall.com/w/artcontest/award/award.do?trackingCd=monami"
                          target="_blank">수상작 발표</a>
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
										<a href="${cp}/doyoon/Inquiry.jsp">문의하기</a>
									</li>
									<li>
										<a href="${cp}/geunseok/board_event.jsp">이벤트</a>
									</li>
									<li>
										<a href="find_f">모나미 패밀리샵 찾기</a>
									</li>
								</ul>
							</li>
							<li>
								<a href="http://mpms.monami.com" target="_blank">기업 구매 / 개발</a>
								<ul class="hovermenu">
									<li><a href="http://mpms.monami.com" target="_blank">기업 및 단체 구매</a></li>
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
								<li><a href="${cp}/doyoon/Inquiry.jsp">문의하기</a></li>
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
    <div id="container">
        <div class="contents">
            <div class="pagetitle pn5">
                <h2>
                    " NEWS &amp; VIDEO "
                </h2>
                <p> 모나미는 늘 밝고 새로운 미래를 그려나갑니다.</p>
            </div>
            <div class="pagetabs">
                <ul class="m5">
                    <li>
                        <a href="monami_news1.html">보도자료</a>
                    </li>
                    <li class="on">
                        <a href="#">동영상자료</a>
                    </li>
                </ul>
            </div>
            <h3 class="title1">
                MONAMI
                <span>VIDEO</span>
            </h3>
    <form method="post" name="boardForm" action="${cp}/board/VideoWriteOk.mo" enctype="multipart/form-data">
	<table border="1" style="border-collapse: collapse;">
		<tr height="30px">
			<th align="center" width="150px">제 목</th>
			<td>
				<input name="video_title" size="51" maxlength="50"
				placeholder="제목을 입력하세요" value="${board.video_title}">
			</td>
		</tr>
		<tr height="30px">
			<th align="center" width="150px">작성자</th>
			<td>
				<span style="height: 30px;">모나미</span>
			</td>
		</tr>
		<tr>
			<th align="center">이미지</th>
			<td><input type="file" name="video_img" ></td>
		<tr>
			<th>링크</th>
			<td><input name="video_content" style="width: 392px; height: 113px;"></td>
		</tr>
	</table>
			<table class="btn_area">
				<tr align="right" valign="middle">
					<td>						
						<a href="javascript:sendit()">등록</a>&nbsp;&nbsp;
						<!-- <a href="javascript:document.removeForm.submit()">삭제</a>&nbsp;&nbsp; -->
						<a href="${cp}/board/VideoList.mo">취소</a>
					</td>
				</tr>
			</table>
		</form>
		<form name="removeForm" action="${cp}/board/VideoRemove.mo?icode=${board.video_idx}" method="get">
			<input type="hidden" name="video_idx" value="${board.video_idx}">
		</form>
		</div>
		</div>
    <!-- 푸터 시작 -->
    <div id="footer">
		<div class="foot">
			<div class="foot_top">
				<h1><img src="./images/foot_logo.jpeg" alt="로고"></img></h1>
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
<script>
		const boardForm = document.boardForm;
		const vtitle = boardForm.video_title;
	function sendit(){
		console.log(1);
		if(vtitle.value==""){
			alert("제목을 입력하세요");
			vtitle.focus();
			return false;
		}
		const vcont = boardForm.video_content;
		if(vcont.value==""){
			alert("링크를 입력해주세요");
			vcont.focus();
			return false;
		}
		const vimg = boardForm.video_img;
		if(vimg.value==""){
			alert("이미지파일을 삽입해주세요.");
			vimg.focus();
			return false;
		}
		boardForm.submit();
	}
</script>
</html>