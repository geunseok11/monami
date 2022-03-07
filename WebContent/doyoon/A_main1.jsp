<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MONAMI</title>
<c:set var="cp" value="${pageContext.request.contextPath}"/>
<link rel="shortcut icon" href="${cp}/images/favicon.ico"
	type="image/x-icon" />
<link rel="stylesheet" href="${cp}/css/prodiqr.css" />
<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="${cp}/js/common.js"></script>
<script type="text/javascript" src="${cp}/js/prodiqr.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.js"></script>
</head>
<body>
	<div id="wrap">
		<%@ include file="/doyoon/header.jsp"%>
		<!-- 본문 시작  -->
		<div id="container">
			<div class="pagetitle pn2">
				<h2>모나미제품</h2>
				<p>모나미는 당신의 행복한 기록과 늘 함께 합니다.</p>
			</div>
			<div class="pagetabs">
				<ul class="m2">
					<li><a href="${cp}/jungmin/pen/penpage.jsp">펜</a></li>
	                <li><a href="${cp}/jungmin/marker/markerpage.jsp">마카</a></li>
	                <li><a href="${cp}/sanghoon/lightpen.jsp">형광펜</a></li>
	                <li><a href="${cp}/doyoon/A_main1.jsp" class="on">미술용품</a></li>
	                <li><a href="${cp}/doyoon/E_main1.jsp">기타</a></li>
	                <li><a href="${cp}/jungmin/cataloguepage.jsp">카탈로그</a></li>
				</ul>
			</div>
			<h3 class="title1">
				PRODUCT <span>INFO</span>
			</h3>
			<div class="subcate">
				<ul>
					<li><a href="${cp}/doyoon/A_prod1.jsp">크레파스</a></li>
					<li><a href="#">그림물감</a></li>
					<li><a href="#">색연필</a></li>
					<li><a href="#">사인펜</a></li>
					<li><a href="#">연필</a></li>
				</ul>
			</div>
			<div class="product_list">
				<ul>
					<li><a href="${cp}/doyoon/A_detail1.jsp">
							<div class="thum">
								<img src="${cp}/images/yellowpastel.jpg" alt="크레파스_모니주(옐로우)">
								<div class="ondiv">
									<div class="btn_plus">
										<div></div>
										<div></div>
									</div>
								</div>
							</div>
							<div class="info">
								<div class="cate1">크레파스</div>
								<div class="product_name">크레파스_모니주(옐로우)</div>
							</div>
					</a></li>
					<li><a href="#">
							<div class="thum">
								<img src="${cp}/images/pinkpastel.jpg" alt="크레파스_모니주(핑크)">
								<div class="ondiv">
									<div class="btn_plus">
										<div></div>
										<div></div>
									</div>
								</div>
							</div>
							<div class="info">
								<div class="cate1">크레파스</div>
								<div class="product_name">크레파스_모니주(핑크)</div>
							</div>
					</a></li>
					<li><a href="#">
							<div class="thum">
								<img src="${cp}/images/bluepastel.jpg" alt="크레파스_모니주(블루)">
								<div class="ondiv">
									<div class="btn_plus">
										<div></div>
										<div></div>
									</div>
								</div>
							</div>
							<div class="info">
								<div class="cate1">크레파스</div>
								<div class="product_name">크레파스_모니주(블루)</div>
							</div>
					</a></li>
					<li><a href="#">
							<div class="thum">
								<img src="${cp}/images/colorpencil.jpg" alt="종이말이 색연필_모니주(블루/핑크)">
								<div class="ondiv">
									<div class="btn_plus">
										<div></div>
										<div></div>
									</div>
								</div>
							</div>
							<div class="info">
								<div class="cate1">색연필</div>
								<div class="product_name">종이말이 색연필_모니주(블루/핑크)</div>
							</div>
					</a></li>
					<li><a href="#">
							<div class="thum">
								<img src="${cp}/images/pencil.jpg" alt="연필_모니주(오렌지/핑크/퍼플)">
								<div class="ondiv">
									<div class="btn_plus">
										<div></div>
										<div></div>
									</div>
								</div>
							</div>
							<div class="info">
								<div class="cate1">연필</div>
								<div class="product_name">연필_모니주(오렌지/핑크/퍼플)</div>
							</div>
					</a></li>
					<li><a href="#">
							<div class="thum">
								<img src="${cp}/images/mintpencil.jpg" alt="연필_모니주(그린/블루)">
								<div class="ondiv">
									<div class="btn_plus">
										<div></div>
										<div></div>
									</div>
								</div>
							</div>
							<div class="info">
								<div class="cate1">연필</div>
								<div class="product_name">연필_모니주(그린/블루)</div>
							</div>
					</a></li>
					<li><a href="#">
							<div class="thum">
								<img src="${cp}/images/sharppencil.jpg" alt="샤프식 색연필_모니주(블루/핑크)">
								<div class="ondiv">
									<div class="btn_plus">
										<div></div>
										<div></div>
									</div>
								</div>
							</div>
							<div class="info">
								<div class="cate1">샤프식 색연필</div>
								<div class="product_name">샤프식 색연필_모니주(블루/핑크)</div>
							</div>
					</a></li>
					<li><a href="#">
							<div class="thum">
								<img src="${cp}/images/signpen.jpg" alt="모니주 사인펜(핑크/블루)">
								<div class="ondiv">
									<div class="btn_plus">
										<div></div>
										<div></div>
									</div>
								</div>
							</div>
							<div class="info">
								<div class="cate1">사인펜</div>
								<div class="product_name">모니주 사인펜(핑크/블루)</div>
							</div>
					</a></li>
					<li><a href="#">
							<div class="thum">
								<img src="${cp}/images/9.watercolor.jpg" alt="그림물감_모니주(핑크)">
								<div class="ondiv">
									<div class="btn_plus">
										<div></div>
										<div></div>
									</div>
								</div>
							</div>
							<div class="info">
								<div class="cate1">그림물감</div>
								<div class="product_name">그림물감_모니주(핑크)</div>
							</div>
					</a></li>
					<li><a href="#">
							<div class="thum">
								<img src="${cp}/images/10.watercolor.jpg" alt="그림물감_모니주(블루)">
								<div class="ondiv">
									<div class="btn_plus">
										<div></div>
										<div></div>
									</div>
								</div>
							</div>
							<div class="info">
								<div class="cate1">그림물감</div>
								<div class="product_name">그림물감_모니주(블루)</div>
							</div>
					</a></li>
				</ul>
			</div>
			<!-- 본문 끝 -->
			<!-- paging 시작 -->
			<div class="paging">
				<a class="page_prev"><img src="${cp}/images/page_prev.gif"></a> <span>1</span>
				<a href="${cp}/doyoon/A_main2.jsp">2</a> <a class="page_next"><img
					src="${cp}/images/page_next.gif"></a>
			</div>
			<!-- paging 끝 -->
			<!-- top버튼 시작 -->
			<div class="btn_top">
				<a href="#"><img src="${cp}/images/btn_top.gif" alt="상단으로 이동"></a>
			</div>
			<!-- top버튼 끝 -->
		</div>
		<%@ include file="/doyoon/footer.jsp"%>
	</div>
</body>
</html>