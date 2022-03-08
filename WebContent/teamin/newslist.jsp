<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
	<c:set var="cp" value="${pageContext.request.contextPath}"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>MONAMI</title>
    <link rel="shortcut icon" href="${cp}/images/favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" href="${cp}/css/news_video.css" />
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.js"></script>
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
<body>
    <div id="wrap">
        <div id="bgblack"></div>
        <div class="find_layer" style="display: none; top: 50px">
          <iframe src="${cp}/shop/shop.jsp" frameborder="0" id="find_f"> </iframe>
          <div class="btnx_">
            <img src="${cp}/images/close.png" alt="" />
          </div>
        </div>
    <div class="popup_buttons">
    <a class="popup_button" href="">
        <div class="popup_button-txt">예약하기</div>
    </a>
    <a class="popup_button-close" onclick="jQuery(this).parent().hide(); return false" href="#">예약하기 버튼 닫기</a>
    </div>
    <!-- 헤더 시작  -->
    <%@ include file="/jungmin/header.jsp" %>
    <!-- 헤더 끝 -->
    <!-- 본문 시작  -->
    <div id="container">
        <div id="contents">
            <div class="pagetitle pn5">
                <h2>
                     NEWS & VIDEO 
                </h2>
                <p> 모나미는 늘 밝고 새로운 미래를 그려나갑니다.</p>
            </div>
            <div class="pagetabs">
                <ul class="m5">
                    <li class="on"><a href="${cp}/news/NewsBoardList.bo">보도자료</a>
						</li>
						<li><a href="${cp}/board/Videolist.bo">동영상자료</a></li>
                </ul>
            </div>
            <h3 class="title1">
                MONAMI
                <span>NEWS</span>
            </h3>
            <div class="bbs_basic">
					<table cellpadding="0" cellspacing="0">
						<tbody>
							<c:choose>
								<c:when test="${boardList.size()>0 and boardList != null}">
									<c:forEach var="board" items="${boardList}">
										<tr>

											<td class="date">
												<div class="day">${board.created_at.substring(8,10)}</div>
												<div class="ym">${board.created_at.substring(0,4)}.${board.created_at.substring(5,7)}</div>

											</td>
											<td class="sbj">
												<div>
													<a href="${cp}/news/Newsview.bo?news_idx=${board.news_idx}&page=${page}">
														<div class="tit">${board.news_title}</div>
														<div class="evt_type">${board.news_content}</div>
													
													</a>
												</div>
											</td>
											<td class="more">
											<a href="${cp}/news/Newsview.bo?news_idx=${board.news_idx}&page=${page}" class="btn">
												 <span>자세히보기</span>
												<div>
												</div>
											</a>
											</td>
										</tr>
									</c:forEach>
								</c:when>
								<c:otherwise>
									<td colspan="5" style="text-align: center; font-size: 20px">
										등록된 게시글이 없습니다.</td>
								</c:otherwise>
							</c:choose>
						</tbody>
					</table>
				</div>
					<script>
			$(".evt_type p").attr("style","color:#666");
			$(".evt_type span").attr("style","font-size:14px");
			$(".evt_type p").attr("style","text-align:left");
			$("strong").attr("style","font-weight:normal");
			 $(document).ready(function() {
				    $('.evt_type p').each(function(){
				        $(this).html($(this).html().replace(/&nbsp;/gi,''));
				    });
				});
			 $(".evt_type p").attr("style","display:inline")
			 $(".evt_type p img").remove();
		</script>
            <div class="paging">
					<c:choose>
					<c:when test="${page>1}">
					<a href="${cp}/news/NewsBoardList.bo?page=${page-1}" class="page_prev">
						
							<img src="${cp}/images/page_prev.gif" alt="">
						
					</a>
					</c:when>
					<c:when test="${page == null}">
						
					</c:when>
					<c:otherwise>
					<a href="#" class="page_prev">
						
							<img src="${cp}/images/page_prev.gif" alt="">
						
					</a>
					</c:otherwise>
					</c:choose>
					<c:forEach begin="${startPage}" end="${endPage}" step="1" var="i">
						<c:choose>
							<c:when test="${i == page}">
								<strong class="nowPage">${i}</strong>
							</c:when>
							<c:otherwise>
								<a href="${cp}/news/NewsBoardList.bo?page=${i}">${i}</a>
							</c:otherwise>
						</c:choose>
					</c:forEach>
					<c:choose>
					<c:when test="${page<endPage}">
						<a href="${cp}/news/NewsBoardList.bo?page=${page+1}"
							class="page_next"> <img src="${cp}/images/page_next.gif" alt="">
						</a>
					</c:when>
					<c:otherwise>
						<a href="#" class="page_next">
						
							<img src="${cp}/images/page_next.gif" alt="">
						
					</a>
					</c:otherwise>
					</c:choose>
				</div>
            <div class="btn_top" style="cursor:pointer;" onclick="window.scrollTo(0,0);">
                <a>
                    <img src="${cp}/images/btn_top.gif" alt="페이지 상단으로">
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
</html>