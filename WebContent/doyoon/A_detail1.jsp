<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MONAMI</title>
<link rel="shortcut icon" href="../images/favicon.ico"
	type="image/x-icon" />
<link rel="stylesheet" href="../css/prodiqr.css" />
<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="../js/common.js"></script>
<script type="text/javascript" src="../js/prodiqr.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.js"></script>


</head>
<body>
	<div id="wrap">
		<%@ include file="./header.jsp"%>
		<!-- 본문 시작  -->
		<div id="container" class="detail">
			<div class="pagetitle pn2">
				<h2>모나미제품</h2>
				<p>모나미는 당신의 행복한 기록과 늘 함께 합니다.</p>
			</div>
			<div class="pagetabs">
				<ul class="m2">
					<li><a href="../jungmin/pen/penpage.jsp">펜</a></li>
					<li><a href="../jungmin/marker/markerpage.jsp">마카</a></li>
					<li><a href="../sanghoon/lightpen.jsp">형광펜</a></li>
					<li><a href="./A_main1.jsp" class="on">미술용품</a></li>
					<li><a href="./E_main1.jsp">기타</a></li>
					<li><a href="../jungmin/cataloguepage.jsp">카탈로그</a></li>
				</ul>
			</div>
			<h3 class="title1">
				PRODUCT <span>INFO</span>
			</h3>
			<div class="prodview">
				<div class="prodwrap">
					<!-- 1.상품 상세정보  -->
					<div class="p_detail">
						<div class="bgcolor"></div>
						<div class="numbering">
							<span>01</span> / <span>03</span>
						</div>
						<!-- 이미지박스  -->
						<div class="imgwrap">
							<!-- 큰이미지 박스 -->
							<div class="p_img">
								<ul>
									<li><img src="../images/1.jpg"></li>
									<li><img src="../images/2.jpg"></li>
									<li><img src="../images/3.jpg"></li>
								</ul>
							</div>
							<!-- 하단 이미지박스  -->
							<div class="thumb">
								<a class="tprev"><img src="../images/tprev.gif"></a> <a
									class="tnext"><img src="../images/tnext.gif"></a>
								<div class="thum_wrap">
									<ul>
										<li><a> <img src="../images/1.jpg">
										</a></li>
										<li><a> <img src="../images/2.jpg">
										</a></li>
										<li><a> <img src="../images/3.jpg">
										</a></li>
									</ul>
								</div>
							</div>
						</div>
						<!-- 상품상세정보 글  -->
						<div class="prodinfo">
							<div class="p_name">
								<div class="pname">크레파스_모니주(옐로우)</div>
								<div class="pcate">크레파스</div>
							</div>
							<div class="p_info_list">
								<div class="key_features">
									<div class="tit">KEY FEATURES</div>
									<ol>
										<li>(블루/핑크/옐로우) <br> <br> 18색 SET : 4,000원 <br>
											24색 SET : 5,000원 <br> 36색 SET : 7,000원
										</li>
									</ol>
								</div>
								<div class="download">
									<div class="tit">DOWNLOAD</div>
									<ul>
										<li class="type3"><a
											href="../images/file3_1523248839b62nubtlkp (4).zip"> <img
												src="../images/down_type3.gif"> 이미지
										</a></li>
									</ul>
								</div>
							</div>
						</div>
						<!-- 2.상품 리스트로 돌아가기 -->
					</div>
					<div class="listbtn">
						<a href="./A_main1.jsp">LIST</a>
					</div>
				</div>
			</div>

			<!-- 본문 끝 -->
			<!-- top버튼 시작 -->
			<div class="btn_top">
				<a href="#"><img src="../images/btn_top.gif" alt="상단으로 이동"></a>
			</div>
			<!-- top버튼 끝 -->
		</div>
		<!-- container 끝  -->
		<%@ include file="./footer.jsp"%>
		</div>
</body>

</html>