<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<c:set var="cp" value="${pageContext.request.contextPath}" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>MONAMI</title>
<link rel="shortcut icon" href="${cp}/images/favicon.ico"
	type="image/x-icon" />
<link rel="stylesheet" href="${cp}/css/news_video.css" />
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.js"></script>
<script type="text/javascript" src="${cp}/js/common.js"></script>
<script type="text/javascript">
	$(function() {
		$(document).on("click", ".find_f", function() {
			dh = $(document).height();
			poph = $(".find_layer").height();

			$("#bgblack").height(dh).show();
			$(".find_layer").show().animate({
				top : $(document).scrollTop() + 50 + "px"
			}, 100);
		});
		$("#bgblack,.btnx_").click(function() {
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
			<iframe src="${cp}/shop/shop.jsp" frameborder="0" id="find_f">
			</iframe>
			<div class="btnx_">
				<img src="${cp}/images/close.png" alt="" />
			</div>
		</div>
		<div class="popup_buttons">
			<a class="popup_button" href="">
				<div class="popup_button-txt">예약하기</div>
			</a> <a class="popup_button-close"
				onclick="jQuery(this).parent().hide(); return false" href="#">예약하기
				버튼 닫기</a>
		</div>
		<!-- 헤더 시작  -->
		<%@ include file="/jungmin/header.jsp" %>
		<!-- 헤더 끝 -->
		<!-- 본문 시작  -->
		<div id="container">
			<div class="contents">
				<div class="pagetitle pn5">
					<h2>NEWS & VIDEO</h2>
					<p>모나미는 늘 밝고 새로운 미래를 그려나갑니다.</p>
				</div>
				<div class="pagetabs">
					<ul class="m5">
						<li class="on"><a href="${cp}/news/NewsBoardList.bo">보도자료</a>
						</li>
						<li><a href="${cp}/board/Videolist.bo">동영상자료</a></li>
					</ul>
				</div>
				<h3 class="title1">
					MONAMI <span>NEWS</span>
				</h3>
				<form>
					<table class="bbs_view" cellpadding="0" cellspacing="0">
						<tbody>
							<tr>
								<th style="font-weight: normal">
									<div class="sbj">${board.news_title}</div>
									<div class="date">
										<span class="tit">작성자</span> ${board.news_writer} <span
											class="line">I</span> <span class="tit">날짜</span>
										${board.created_at.substring(0,10)}
									</div>
								</th>
							</tr>
							<tr>
								<td class="viewcon">
									${board.news_content}</td>
							</tr>
						</tbody>
					</table>
				</form>
				<form name="removeForm" action="${cp}/news/NewsRemove.bo" method="get">
						<input type="hidden" name="news_idx" value="${board.news_idx}">
					</form>
				<div class="view_btns">
					<c:if test="${loginUser.user_id == 'admin'}">
					<a href="${cp}/news/NewsModify.bo?news_idx=${board.news_idx}">수정</a>&nbsp;&nbsp;
					<a href="javascript:document.removeForm.submit()">삭제</a>&nbsp;&nbsp;
					<!--get방식으로 form 제출시 안의 input-->
					</c:if>
					<a
						href="${cp}/news/NewsBoardList.bo?page=${param.page == null ? 1 : param.page}">LIST</a>
					<div class="view_page">
						<c:choose>
							<c:when test="${nidx != null && pidx == null }">
								<a href="${cp}/news/Newsview.bo?news_idx=${nidx}"> <img
									src="${cp}/monami_images/view_page_next.gif" alt="">
								</a>
							</c:when>
							<c:when test="${nidx != null && pidx != null }">
								<a href="${cp}/news/Newsview.bo?news_idx=${pidx}"> <img
									src="${cp}/monami_images/view_page_prev.gif" alt="">
								</a>
								<a href="${cp}/news/Newsview.bo?news_idx=${nidx}"> <img
									src="${cp}/monami_images/view_page_next.gif" alt="">
								</a>
							</c:when>
							<c:when  test="${nidx == null && pidx != null }">
								<a href="${cp}/news/Newsview.bo?news_idx=${pidx}"> <img
									src="${cp}/monami_images/view_page_prev.gif" alt="">
								</a>
							</c:when>
							<c:otherwise>
								
							</c:otherwise>
						</c:choose>
					</div>
				</div>
				<div class="btn_top" style="cursor: pointer;"
					onclick="window.scrollTo(0,0);">
					<a> <img src="${cp}/images/btn_top.gif" alt="페이지 상단으로">
					</a>
				</div>
			</div>
		</div>
		<!-- 본문 끝 -->
		<!-- 푸터 시작 -->
	 <%@ include file="/jungmin/footer.jsp" %>
		<!-- 푸터 끝 -->
	</div>
</body>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>const cp = "${pageContext.request.contextPath}"</script>
<script src="${cp}/js/user.js"></script>
</html>