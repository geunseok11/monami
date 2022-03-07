<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
  <head>
   	<c:set var="cp" value="${pageContext.request.contextPath}"/>
    <meta http-equiv="Content-Type" content="application/xhtml+xml; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=Edge" />
    <title>MONAMI</title>
    <link rel="shortcut icon" href="${cp}/images/favicon.ico" type="image/x-icon" />
	<link rel="stylesheet" type="text/css" href="../css/style_intro.css">﻿
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
        <iframe src="${cp}/shop/shop.jsp" frameborder="0" id="find_f">
        </iframe>
        <div class="btnx_">
          <img src="${cp}/images/close.png" alt="" />
        </div>
      </div>
      <!-- 헤더 시작 -->
      <%@ include file="/kyungchul/header.jsp" %>
      <!--헤더 끝 -->
      <!-- 본문 시작 -->
      <div id="container" class="conSize">
        <div id="contents">
          <div class="titleTop1 pageImg1">
            <h2>모나미소개</h2>
            <p>언제 어디서나 모나미는 당신 곁에 있습니다.</p>
          </div>
          <div class="subMenu">
            <ul>
              <li class="on"><a href="${cp}/kyungchul/ceo.jsp">CEO 메시지</a></li>
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
          <h3 class="titleText">CEO <span>MESSAGE</span></h3>
          <div class="conwrap">
            <div class="pArea">
              <div class="photo">
                <img
                  src="${cp}/images/message_ceo.jpeg"
                  alt="모나미 대표 송하경 사진"
                />
                <div class="backbox"></div>
              </div>
              <div class="ment">
                <div class="textarea">
                  항상 당신 곁의<br />
                  <span>소중한 친구</span>로 남겠습니다.
                </div>
              </div>
            </div>
            <div class="message">
              <div class="m1">
                <p>
                  안녕하십니까? (주)모나미 대표이사 송하경입니다.<br />
                  언제나 한결같이 모나미에 애정과 관심을 보여주시는 고객 및 주주
                  여러분들께 깊은 감사를 드립니다.
                </p>
                <p>
                  1960년 창립된 광신화학공업사에서 출발한 모나미의 역사가 어느덧
                  반백년이 넘었습니다.<span class="br"></span> 지금의 모나미를
                  있게한 ‘모나미 153’볼펜은 지난 50여 년간 꾸준한 사랑을
                  받으며<span class="br"></span> 모나미를 필기구의 대명사이자
                  국민 브랜드로 성장시켰습니다.<span class="br"></span> 이처럼
                  많은 분들의 사랑에 힘입어 문구 업계의 혁신을 주도할 수
                  있었으며,<span class="br"></span> 사인펜, 프러스펜, 네임펜,
                  보드 마카 등 수 많은 히트작들을 선보일 수 있었습니다.
                </p>

                <p>
                  필기구를 넘어 종합문구 분야의 선도적인 기업으로 건실한 성장을
                  이뤄온 모나미는 국내시장 뿐 아니라<span class="br"></span>
                  해외시장에서도 꾸준한 성장을 거둬 전세계 다양한 국가로
                  수출되고 있습니다.
                </p>
                <p>
                  하지만 모나미는 지난 50여 년간의 성과에 만족하지 않고 새로운
                  출발에 나서려고 합니다.
                </p>
              </div>
              <div class="m2">
                <p>
                  종합문구분야의 선두 자리를 넘어 문구와 유통을 아우르는 새로운
                  비즈니스 모델을 만들어 나가고 있습니다.<span
                    class="br"
                  ></span>
                  하루가 다르게 변하는 트렌드와 시대의 변화에 대처하기
                  위해서<span class="br"></span> 모나미의 기업 문화 역시 새롭게
                  만들어 나가고 있습니다.<span class="br"></span> 미래를
                  긍정적으로 바라보면서 준비하고, 항상 즐거운 변화를 추구하는
                  기업이 되겠습니다.<span class="br"></span>
                  시장에 대해서는 항상 겸손하고, 고객에 대해서는 항상 함께하는
                  친구 같은 마음과 자세로 대할 것입니다.
                </p>
                <p>
                  앞으로 모나미는<br />
                  <span
                    >'오래된 친구지만 항상 신선하고 놀라움으로 가득찬, 그리고
                    미래를 위해 쉼 없이 노력하는'</span
                  >
                  기업이 되고자<span class="br"></span> 합니다. 모나미의 새로운
                  변화와 도전을 지켜봐 주시길 바라며,<span class="br"></span>
                  앞으로도 변함없는 사랑과 격려를 부탁드립니다.
                </p>
                <p>감사합니다.</p>
                <p class="signImg">
                  (주)모나미 대표
                  <img
                    src="${cp}/images/message_sign.jpg"
                    alt="모나미 대표 송하경 싸인"
                  />
                </p>
              </div>
            </div>
          </div>
          <div class="topButton">
            <a><img src="${cp}/images/btn_top.gif" alt="페이지 상단으로" /></a>
          </div>
        </div>
        <!-- contents 끝-->
      </div>
      <!-- 본문 끝 -->
      <!-- 푸터 시작 -->
      <%@ include file="/kyungchul/footer.jsp" %>
      <!-- 푸터 끝 -->
    </div>
    <!-- wrap 끝 -->
  </body>
</html>
