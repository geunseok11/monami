<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
              <li><a href="${cp}/kyungchul/company.jsp">회사정보</a></li>
              <li class="on"><a href="${cp}/kyungchul/history.jsp">회사연혁</a></li>
              <li><a href="${cp}/geunseok/investment.jsp">투자정보</a></li>
              <li><a href="${cp}/geunseok/investment.jsp">CI</a></li>
              <li>
                <a href="http://recruit.monami.co.kr/" target="_blank">채용정보</a>
              </li>
              <li><a href="${cp}/geunseok/location.jsp">찾아오시는 길</a></li>
            </ul> 
          </div>
          <h3 class="titleText">MONAMI <span>HISTORY</span></h3>
          <div class="history">
            <div class="bgarea1"></div>
            <div class="bgarea2"></div>
            <div class="bgarea3"></div>
            <div class="center_line"></div>
            <img src="${cp}/images/history_img1.png" class="HImg1" />
            <img src="${cp}/images/history_img2.png" class="HImg2" />
            <img src="${cp}/images/history_img3.png" class="HImg3" />
            <img src="${cp}/images/history_img4.png" class="HImg4" />
            <img src="${cp}/images/history_img5.png" class="HImg5" />
            <img src="${cp}/images/history_img6.png" class="HImg6" />
            <div>
              <div class="HBox fr">
                <div class="record">
                  <div class="subTitle">
                    새로운<br />50년의 <span>시작</span>
                  </div>
                  <div class="year"><span>2010 ~ 2018</span></div>
                  <div class="red"></div>
                </div>
                <dl>
                  <dt>2018</dt>
                  <dd>
                    모나미 스토어 오픈 (롯데백화점 부산점/평촌점, MCC 합정)
                  </dd>
                  <dd style="padding-left: 55px">
                    153 고급필기구 런칭 (153 NEO 만년필)
                  </dd>
                  <dd style="padding-left: 55px">
                    모나미 타일랜드 아마타공장 증축
                  </dd>
                </dl>
                <dl>
                  <dt>2017</dt>
                  <dd>153 고급 필기구 런칭(153 GOLD)</dd>
                </dl>
                <dl>
                  <dt>2016</dt>
                  <dd>모나미 컨셉스토어 2호점(DDP) / 3호점(에버랜드) 오픈</dd>
                </dl>
                <dl>
                  <dt>2015</dt>
                  <dd>
                    국내문구업계 최초 모나미 컨셉스토어 1호점 오픈 (서울 합정동)
                  </dd>
                </dl>
                <dl>
                  <dt>2014</dt>
                  <dd>
                    153 고급 필기구 런칭 (153 리미티드, 153 ID, 153 리스펙트)
                  </dd>
                </dl>
                <dl>
                  <dt>2013</dt>
                  <dd>153 볼펜 출시 50년 / 프러스펜 S 출시</dd>
                </dl>
                <dl>
                  <dt>2012</dt>
                  <dd>기업용 홍보 통합 제작 서비스 MPOD 솔루션 설립</dd>
                </dl>
                <dl>
                  <dt>2010</dt>
                  <dd>모나미 창립 50주년 / 모나미 타일랜드 아마타공장 신축</dd>
                </dl>
              </div>
              <div class="HBox fl">
                <div class="record">
                  <div class="subTitle">
                    사무용품 유통서비스<br />기업으로의 <span>도약</span>
                  </div>
                  <div class="year"><span>2006 ~ 2009&nbsp;&nbsp;</span></div>
                  <div class="red"></div>
                </div>
                <dl>
                  <dt>2009</dt>
                  <dd>프로유성매직 국내문구 최초 RED DOT AWARD 수상</dd>
                </dl>
                <dl>
                  <dt>2007</dt>
                  <dd>모나미스테이션 사업개시</dd>
                </dl>
                <dl>
                  <dt>2007</dt>
                  <dd>세계최초 생잉크 보드마커 시그마플로 출시</dd>
                </dl>
                <dl>
                  <dt>2006</dt>
                  <dd>MIS(모나미이미징솔루션)설립</dd>
                </dl>
              </div>
              <div class="HBox fr">
                <div class="record">
                  <div class="subTitle">
                    글로벌<br />기업으로서의 <span>도약</span>
                  </div>
                  <div class="year">
                    &nbsp;&nbsp;&nbsp;&nbsp;<span>2000 ~ 2001</span>
                  </div>
                  <div class="red"></div>
                </div>
                <dl>
                  <dt>2001</dt>
                  <dd>상해 모나미 문화용품 유한공사 (중국현지법인) 설립</dd>
                </dl>
                <dl>
                  <dt>2001</dt>
                  <dd>Zenith-MonAmi 설립 (폴란드 합작법인)</dd>
                </dl>
                <dl>
                  <dt>2001</dt>
                  <dd>e-비지니스 사업부 신설</dd>
                </dl>
                <dl>
                  <dt>2000</dt>
                  <dd>(주)익스프레스라인 14와 합병</dd>
                </dl>
              </div>
              <div class="HBox fl">
                <div class="record">
                  <div class="subTitle">사업진출<br /><span>다각화</span></div>
                  <div class="year"><span>1990 ~ 1996</span></div>
                  <div class="red"></div>
                </div>
                <dl>
                  <dt>1996</dt>
                  <dd>(주)모나미로 (주)모나미 애드 합병</dd>
                </dl>
                <dl>
                  <dt>1992</dt>
                  <dd>(주)모나미 애드 / 항소 인터내셔널 (미국)설립</dd>
                </dl>
                <dl>
                  <dt>1990</dt>
                  <dd>(주)항소 설립</dd>
                </dl>
                <dl>
                  <dt>1990</dt>
                  <dd>
                    모나미 데이타 시스템 설립 (1992년 모나미컴퓨터시스템으로
                    변경)
                  </dd>
                </dl>
              </div>

              <div class="HBox fr">
                <div class="record">
                  <div class="subTitle">모나미의<br /><span>성장기</span></div>
                  <div class="year"><span>1989 ~ 1970</span></div>
                  <div class="red"></div>
                </div>
                <dl>
                  <dt>1989</dt>
                  <dd>모나미 타일랜드 출범 (태국 차이아난다사와 합작)</dd>
                </dl>
                <dl>
                  <dt>1988</dt>
                  <dd>안산 공장 신축, 이전(1,2 공장 통합)</dd>
                </dl>
                <dl>
                  <dt>1974</dt>
                  <dd>주식회사 모나미로 상호변경 / 증권 거래소 주식 상장</dd>
                </dl>
                <dl>
                  <dt>1970</dt>
                  <dd>모나미 쎌라 만년필(주) 흡수합병</dd>
                </dl>
                <dl>
                  <dt>1970</dt>
                  <dd>제2공장 신축(성수동)</dd>
                </dl>
              </div>
              <div class="HBox fl">
                <div class="record">
                  <div class="subTitle">
                    모나미의 창업과<br /><span>도약기</span>
                  </div>
                  <div class="year"><span>1960 ~ 1967</span></div>
                  <div class="red"></div>
                </div>
                <dl>
                  <dt>1967</dt>
                  <dd>모나미 화학 공업 주식회사 설립</dd>
                </dl>
                <dl>
                  <dt>1963</dt>
                  <dd>제1공장 신축(성수동)</dd>
                </dl>
                <dl>
                  <dt>1963</dt>
                  <dd>사인펜, 매직펜 생산</dd>
                </dl>
                <dl>
                  <dt>1963</dt>
                  <dd>153 볼펜 생산개시</dd>
                </dl>
                <dl>
                  <dt>1960</dt>
                  <dd>광신 화학 공업사 설립 (회화구류 생산 시작)</dd>
                </dl>
              </div>
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
