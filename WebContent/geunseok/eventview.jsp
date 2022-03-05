<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <c:set var="cp" value="${pageContext.request.contextPath}"/>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>MONAMI</title>
    <link rel="shortcut icon" href="${cp}/images/favicon.ico" type="image/x-icon" />
     <script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.js"></script>
    <link rel="stylesheet" href="${cp}/css/style_another.css" />
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
        <iframe src="./shop/shop.html" frameborder="0" id="find_f"> </iframe>
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
    <!-- 헤더 시작 -->
 	<%@ include file="/jungmin/header.jsp" %>
    <!-- 헤더 끝 -->
    <!-- 바디 상단 이미지 시작-->
    <div id="visaul">메인화면 상단에 이미지 들어갈 곳</div>
    <!-- 바디 상단 이미지 끝  -->
    <!-- 본문 시작  -->
    <div id="container">
      <div id="contents">
      
          <div class="pagetitle pn4">
          <h2>
                              고객지원											</h2>
          <p>
                              모나미는 언제나 소중한 의견에 귀 기울이겠습니다.											</p>
        </div>
          <div class="pagetabs">
                      <ul class="m4">
            <li><a href="/customer/faq.php">자주하는질문</a></li>
            <li><a href="/customer/inquiry.php">문의하기</a></li>
            <li class="on"><a href="./board_event.html">이벤트</a></li>
            <li><a class="find_f">모나미 패밀리샵 찾기</a></li>
            <!--<li ><a href="http://mpms.monami.com" target="_blank">기업 및 단체 구매 문의</a></li>-->
      
          </ul>
                  
      
        </div>
      
        
      <h3 class="title1">
          MONAMI <span>EVENT</span>
      </h3>
      <table cellpadding="0" cellspacing="0" class="bbs_view">
        <tbody>
        
        <tr>
          <th>
            <div class="sbj">
            <c:choose>
            <c:when test="${board.event_startdate.compareTo(board.created_at.substring(0,10))>0}">
            [예정]
            </c:when>
            <c:when  test="${board.event_startdate.compareTo(board.created_at.substring(0,10))<0 && 
            0<board.event_enddate.compareTo(board.created_at.substring(0,10))}">
            [진행중]
            </c:when>
            <c:otherwise>
            [종료]
            </c:otherwise>
            </c:choose>
            ${board.event_title}</div>
            <div class="date">
              <span class="tit">작성자</span>${board.event_writer}
              <span class="line">I</span>
              <span class="tit">날짜</span> ${board.created_at.substring(0,10)}</div>
          </th>
        </tr>
      
        <tr>
          <td class="viewcon">
          ${board.event_content}
          </td>
        </tr>
      
      </tbody></table>
      <form name="removeForm" action="${cp}/event/EventRemove.mo" method="get">
						<input type="hidden" name="event_idx" value="${board.event_idx}">
					</form>
      <div class="view_btns">
      	<c:if test="${loginUser.user_id == 'monami'}">
     	 <a href="${cp}/event/EventModify.mo?event_idx=${board.event_idx}">수정</a>&nbsp;&nbsp;
			<a href="javascript:document.removeForm.submit()">삭제</a>&nbsp;&nbsp;
		</c:if>
        <a href="${cp}/event/EventList.mo?page=${param.page == null ? 1 : param.page}">LIST</a>
            <div class="view_page">
						<c:choose>
							<c:when test="${nidx != null && pidx == null }">
								<a href="${cp}/event/EventView.mo?event_idx=${nidx}"> <img
									src="${cp}/monami_images/view_page_next.gif" alt="">
								</a>
							</c:when>
							<c:when test="${nidx != null && pidx != null }">
								<a href="${cp}/event/EventView.mo?event_idx=${pidx}"> <img
									src="${cp}/monami_images/view_page_prev.gif" alt="">
								</a>
								<a href="${cp}/event/EventView.mo?event_idx=${nidx}"> <img
									src="${cp}/monami_images/view_page_next.gif" alt="">
								</a>
							</c:when>
							<c:when test="${nidx == null && pidx != null}">
								<a href="${cp}/event/EventView.mo?event_idx=${pidx}"> <img
									src="${cp}/monami_images/view_page_prev.gif" alt="">
								</a>
							</c:when>
							<c:otherwise>
								
							</c:otherwise>
						</c:choose>
         </div>
      </div>
      
      
        <div class="btn_top">
          <a><img src="${cp}/images/btn_top.gif" alt="페이지 상단으로"></a>
        </div>
      </div><!--/contents-->
      </div>
    <!-- 본문 끝 -->
    <!-- 푸터 시작 -->
  	<%@ include file="/jungmin/footer.jsp" %>
    <!-- 푸터 끝 -->
  </div>
  </body>
</html>
