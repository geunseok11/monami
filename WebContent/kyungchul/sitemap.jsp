<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
  <head>
  	<c:set var="cp" value="${pageContext.request.contextPath}"/>
    <meta
      http-equiv="Content-Type"
      content="application/xhtml+xml; charset=UTF-8"
    />
    <meta http-equiv="X-UA-Compatible" content="IE=Edge" />
    <title>MONAMI</title>
    <link rel="shortcut icon" href="${cp}/images/favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" href="${cp}/css/style_intro.css" />
    <script src ="https://code.jquery.com/jquery-3.6.0.min.js"></script>
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
    <!-- wrap 시작 -->
    <div id="wrap">
      <div id="bgblack"></div>
      <div class="find_layer" style="display: none; top: 50px">
        <iframe src="${cp}/shop/shop.jsp" frameborder="0" id="find_f"> </iframe>
        <div class="btnx_">
          <img src="${cp}/images/close.png" alt="" />
        </div>
      </div>
      <!-- 헤더 시작 -->
      <%@ include file="/kyungchul/header.jsp" %>
      <!-- 헤더 끝 -->
      <!-- 본문 시작 -->
      <div id="container" class="conSize">
        <div id="contents">
          <div class="pagetabs"></div>
          <h3 class="title1"><span>SITEMAP</span></h3>
          <div class="sitemap">
            <div class="sitemap_menubox">
              <div class="menu_title">모나미소개</div>
              <ul>
              <li><a href="${cp}/kyungchul/ceo.jsp">CEO 메시지</a></li>
              <li><a href="${cp}/kyungchul/company.jsp">회사정보</a></li>
              <li><a href="${cp}/kyungchul/history.jsp">회사연혁</a></li>
              <li><a href="${cp}/geunseok/investment.jsp">투자정보</a></li>
              <li><a href="${cp}/geunseok/investment.jsp">CI</a></li>
              <li>
                <a href="http://recruit.monami.co.kr/" target="_blank">채용정보</a>
              </li>
              <li><a href="${cp}/geunseok/location.jsp">찾아오시는 길</a></li>
            </ul>
            </div>
            <div class="sitemap_menubox">
              <div class="menu_title">모나미제품</div>
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
            </div>
            <div class="sitemap_menubox">
              <div class="menu_title">문구박물관</div>
              <ul>
                <li>
                  <a href="#">문구박물관</a>
                </li>
              </ul>
            </div>
            <div class="sitemap_menubox">
              <div class="menu_title">NEWS &amp; VIDEO</div>
              <ul>
                <li><a href="${cp}/teamin/monami_news1.jsp">보도자료</a></li>
                <li><a href="${cp}/teamin/monami_video1.jsp">동영상자료</a></li>
              </ul>
            </div>
            <div class="sitemap_menubox">
              <div class="menu_title">고객지원</div>
              <ul>
                <li><a href="${cp}/doyoon/FAQ.jsp">자주묻는질문</a></li>
                <li><a href="${cp}/doyoon/Inquiry.jsp">문의하기</a></li>
                <li><a href="${cp}/geunseok/board_event.jsp">이벤트</a></li>
                <li><a class="find_f">모나미 패밀리샵 찾기</a></li>
              </ul>
            </div>
            <div class="sitemap_menubox">
              <div class="menu_title">
                <a href="http://mpms.monami.com/promotion/" 
                	target="_blank">기업 구매 및 맞춤 개발</a>
              </div>
              <ul>
                <li>
                  <a href="http://mpms.monami.com/promotion/" 
                   	target="_blank">기업 및 단체 구매</a>
                </li>
                <li>
                  <a href="${cp}/geunseok/industry.jsp">산업용 맞춤 제품개발</a>
                </li>
              </ul>
            </div>
          </div>
          <div class="topButton">
            <a><img src="${cp}/images/btn_top.gif" alt="페이지 상단으로" /></a>
          </div>
        </div>
        <!--/contents-->
      </div>
      <!-- 본문 끝 -->
      <!-- 푸터 시작 -->
      <%@ include file="/kyungchul/footer.jsp" %>
      <!-- 푸터 끝 -->
    </div>
    <!-- wrap 끝 -->
  </body>
</html>
