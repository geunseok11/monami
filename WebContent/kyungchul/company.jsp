<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html lang="en">
  <head>
  	<c:set var="cp" value="${pageContext.request.contextPath}"/>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>MONAMI</title>
    <link rel="shortcut icon" href="${cp}/images/favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" href="${cp}/css/style_intro.css" />
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
  	<c:set var="cp" value="${pageContext.request.contextPath}"/>
    <!-- wrap 시작 -->
    <div id="wrap">
      <div id="bgblack"></div>
      <div class="find_layer" style="display: none; top: 50px">
        <iframe src="${cp}/shop/shop.jsp" frameborder="0" id="find_f">
        </iframe>
        <div class="btnx_">
          <img src="${cp}/images/close.png" alt=""/>
        </div>
      </div> 
      <!-- 헤더 시작 -->
      <%@ include file="/kyungchul/header.jsp" %>
      <!-- 헤더 끝 -->
      <!-- 본문 시작 -->
      <div id="container" class="conSize">
        <div id="contents">
          <div class="titleTop1 pageImg1">
            <h2>모나미소개</h2>
            <p>언제 어디서나 모나미는 당신 곁에 있습니다.</p>
          </div>
          <div class="subMenu">
            <ul>
              <li><a href="${cp}/kyungchul/ceo.jsp">CEO 메시지</a></li>
              <li class="on"><a href="${cp}/kyungchul/company.jsp">회사정보</a></li>
              <li><a href="${cp}/kyungchul/history.jsp">회사연혁</a></li>
              <li><a href="${cp}/geunseok/investment.jsp">투자정보</a></li>
              <li><a href="${cp}/geunseok/investment.jsp">CI</a></li>
              <li>
                <a href="http://recruit.monami.co.kr/" target="_blank">채용정보</a>
              </li>
              <li><a href="${cp}/geunseok/location.jsp">찾아오시는 길</a></li>
            </ul>
          </div>
          <h3 class="titleText">COMPANY <span>INFO</span></h3>
          <div class="companyBox">
            <div class="info">
              <h4 class="titleNum"><span class="num">01</span> 계열사 소개</h4>
              <div class="company">
                <div class="subLeft">
                  <img
                    src="${cp}/images/company_info2_img1.jpeg"
                    alt=""
                    class="bg"
                  />
                  <div class="boxTitle">
                    <div class="sub">
                      PARKER/WATERMAN<br />TOMBOW
                      <span>국내 공식</span> 수입업체
                    </div>
                    <div class="comLogo">
                      <a href="#" target="_blank"
                        ><img src="${cp}/images/company_info2_logo1.jpeg" alt=""
                      /></a>
                    </div>
                  </div>
                </div>
                <div class="subRight">
                  <img
                    src="${cp}/images/company_info2_img2.jpeg"
                    alt=""
                    class="bg"
                  />
                  <div class="boxTitle">
                    <div class="sub">
                      HP전산용품 &amp; '<span>통합출력관리</span><br /><span
                        >서비스</span
                      >' 솔루션 공급
                    </div>
                    <div class="comLogo">
                      <a
                        ><img src="${cp}/images/company_info2_logo2.jpeg" alt=""
                      /></a>
                    </div>
                  </div>
                </div>
                <div class="subLeft">
                  <img
                    src="${cp}/images/company_info2_img4.jpeg"
                    alt=""
                    class="bg"
                  />
                  <div class="boxTitle">
                    <div class="sub">
                      철학, 역사, 예술, 과학, 경제를<br /><span
                        >미술로 만나다</span
                      >
                    </div>
                    <div class="comLogo">
                      <a href="#" target="_blank"
                        ><img src="${cp}/images/company_info2_logo4.jpeg" alt=""
                      /></a>
                    </div>
                  </div>
                </div>
                <div class="subRight">
                  <img
                    src="${cp}/images/company_info2_img3.jpeg"
                    alt=""
                    class="bg"
                  />
                  <div class="boxTitle">
                    <div class="sub">
                      모나미 문구제품<br /><span>전문 제조 기업</span>
                    </div>
                    <div class="comLogo">
                      <a href="#" target="_blank"
                        ><img src="${cp}/images/company_info2_logo3.jpeg" alt=""
                      /></a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="info2">
              <h4 class="titleNum"><span class="num">02</span> 해외법인</h4>
              <div class="nation">
                <div class="maparea">
                  <img src="${cp}/images/company_info3_img1.jpeg" alt="" />
                </div>
                <div class="addBox">
                  <div class="nation1">
                    <div class="comName">
                      <span>THAILAND</span> 모나미 타일랜드 (방콕)
                    </div>
                    <dl>
                      <dt>법인명</dt>
                      <dd>MONAMI THAILAND</dd>
                    </dl>
                    <dl>
                      <dt>주소</dt>
                      <dd>
                        #475 Siripinyo Bldg.,12th floor, Si Ayutthaya
                        Rd.,Khwaeng ThanonPhayathai, Khet Ratchathewi, Bangkok
                        10400 Thailand
                      </dd>
                    </dl>
                    <dl>
                      <dt>전화</dt>
                      <dd>+66-2-640-0980-2</dd>
                    </dl>
                    <dl>
                      <dt>팩스</dt>
                      <dd>+66-2-640-0980-2</dd>
                    </dl>
                    <dl>
                      <dt>SNS</dt>
                      <dd>
                        <a href="#" target="_blank"
                          >www.facebook.com/monami.thailand/</a
                        >
                      </dd>
                    </dl>
                  </div>
                  <div class="nation2">
                    <div class="comName">
                      <span>THAILAND</span> 모나미 타일랜드 (아마타 공장)
                    </div>
                    <dl>
                      <dt>주소</dt>
                      <dd>
                        Amata City Industrial Estate 7/281 Moo. 6 Mabyangporn,
                        Plaukdang, Rayong 21140 Thailand
                      </dd>
                    </dl>
                    <dl>
                      <dt>전화</dt>
                      <dd>+66-38-6508091-4218</dd>
                    </dl>
                  </div>
                  <div class="nation3">
                    <div class="comName">
                      <span>CHINA</span> 상해 모나미 (상하이)
                    </div>

                    <dl>
                      <dt>법인명</dt>
                      <dd>上海慕那美文化用品有限公司 (SHANGHAI MONAMI)</dd>
                    </dl>
                    <dl>
                      <dt>홈페이지</dt>
                      <dd>
                        <a href="#" target="_blank">www.monami.com.cn</a>
                      </dd>
                    </dl>
                    <dl>
                      <dt>주소(중문)</dt>
                      <dd>嘉定区兴贤路1388号9号楼</dd>
                    </dl>
                    <dl>
                      <dt>주소(영문)</dt>
                      <dd>
                        Building No.9,&nbsp;1388&nbsp;,XingXian Road, Jiading
                        District,, Shanghai, China.
                      </dd>
                    </dl>
                    <dl>
                      <dt>전화</dt>
                      <dd>+86-21-69521210-69521216</dd>
                    </dl>
                    <dl>
                      <dt>팩스</dt>
                      <dd>+86-21-69521250-59160776</dd>
                    </dl>
                    <dl>
                      <dt>SNS</dt>
                      <dd>
                        <a href="#" target="_blank">weibo.com/shmonami</a>
                      </dd>
                    </dl>
                  </div>

                  <div class="nation4">
                    <div class="comName">
                      <span>POLAND</span> 제니스 모나미 (바르샤바)
                    </div>

                    <dl>
                      <dt>법인명</dt>
                      <dd>ZENITH MONAMI</dd>
                    </dl>
                    <dl>
                      <dt>주소</dt>
                      <dd>ul. Poleczki 23, 02-822, Warsaw, Poland.</dd>
                    </dl>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <div class="topButton">
            <a><img src="${cp}/images/btn_top.gif" alt="페이지 상단으로" /></a>
          </div>
        </div>
        <!--/contents-->
      </div>
      <!-- 본문 끝  -->
      <!-- 푸터 시작 -->
      <%@ include file="/kyungchul/footer.jsp" %>
      <!-- 푸터 끝 -->
    </div>
    <!-- wrap 끝 -->
  </body>
</html>
