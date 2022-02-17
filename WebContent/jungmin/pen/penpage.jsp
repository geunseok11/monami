<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MONAMI</title>
<link rel="shortcut icon" href="../../images/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" href="../../css/pen.css"/>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.js"></script>

<script type="text/javascript" src="../../js/common.js"></script>
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
<div class="popup_buttons">
    <a class="popup_button" href="">
      <div class="popup_button-txt">예약하기</div>
    </a>
    <a class="popup_button-close" onclick="jQuery(this).parent().hide(); return false" href="#">예약하기 버튼 닫기</a>
  </div>
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
                <li><a href="http://www.monami.com/en/">ENG</a></li>
              </ul>
            </div>
            <div class="sns">
              <ul>
                <li>
                  <a href="#https://www.facebook.com/monami1960" target="_blank">
                    <img src="../../images/sns_facebook.gif" alt="페이스북" />
                  </a>
                </li>
                <li>
                  <a href="https://www.instagram.com/monami_official/" target="_blank">
                    <img src="../../images/sns_insta.gif" alt="인스타" />
                  </a>
                </li>
              </ul>
            </div>
          </div>
          <div class="topmenu">
            <ul>
              <li>
                <a href="../../sanghoon/index.jsp">HOME</a>
              </li>
              <li>
                <a href="../../kyungchul/sitemap.jsp">SITE MAP</a>
              </li>
              <li>
                <a href="../../doyoon/Inquiry.jsp">CONTACT US</a>
              </li>
            </ul>
          </div>
        </div>
      </div>
      <div class="gnb">
        <div class="conwrap">
          <h1>
            <a href="../../sanghoon/index.jsp"><img src="../../images/logo.jpeg" alt="" /></a>
          </h1>
          <div class="nav">
            <ul>
              <li >
                <a href="../../kyungchul/ceo.jsp">모나미소개</a>
                <ul>
                  <li>
                    <a href="../../kyungchul/ceo.jsp">CEO 메시지</a>
                  </li>
                  <li>
                    <a href="../../kyungchul/company.jsp">회사정보</a>
                  </li>
                  <li>
                    <a href="../../kyungchul/company.jsp">회사연혁</a>
                  </li>
                  <li>
                    <a href="../../geunseok/investment.jsp">투자정보</a>
                  </li>
                  <li>
                    <a href="../../geunseok/ci.jsp">CI</a>
                  </li>
                  <li>
                    <a href="http://recruit.monami.co.kr/">채용정보</a>
                  </li>
                  <li>
                    <a href="../../geunseok/location.jsp">찾아오시는 길</a>
                  </li>
                </ul>
              </li>
              <li >
                <a href="./penpage.jsp">모나미제품</a>
                <ul>
                  <li>
                    <a href="./penpage.jsp">펜</a>
                  </li>
                  <li>
                    <a href="../marker/markerpage.jsp">마카</a>
                  </li>
                  <li>
                    <a href="../../sanghoon/lightpen.jsp">형광펜</a>
                  </li>
                  <li>
                    <a href="../../doyoon/A_main1.jsp">미술용품</a>
                  </li>
                  <li>
                    <a href="../../doyoon/E_main1.jsp">기타</a>
                  </li>
                  <li>
                    <a href="../cataloguepage.jsp">카탈로그</a>
                  </li>
                </ul>
              </li>
              <li>
                <a href="../../teamin/monami_news1.jsp">NEWS & VIDEO</a>
                <ul >
                  <li>
                    <a href="../../teamin/monami_news1.jsp">보도자료</a>
                  </li>
                  <li>
                    <a href="../../teamin/monami_video1.jsp">동영상자료</a>
                  </li>
                </ul>
              </li>
              <li>
                <a href="https://www.monamimall.com/w/artcontest/info/artContestInfo.do?trackingCd=monami">모나미 미술대회</a>
                <ul>
                  <li>
                    <a href="https://www.monamimall.com/w/artcontest/info/artContestInfo.do?trackingCd=monami">미술대회 소개</a>
                  </li>
                  <li>
                    <a href="https://www.monamimall.com/w/artcontest/award/award.do?trackingCd=monami">수상작 발표</a>
                  </li>
                </ul>
              </li>
              <li>
                <a href="../../doyoon/FAQ.jsp">고객지원</a>
                <ul>
                  <li>
                    <a href="../../doyoon/FAQ.jsp">자주묻는질문</a>
                  </li>
                  <li>
                    <a href="../../doyoon/Inquiry.jsp">문의하기</a>
                  </li>
                  <li>
                    <a href="../../geunseok/board_event.jsp">이벤트</a>
                  </li>
                  <li>
                    <a  class="find_f">모나미 패밀리샵 찾기</a>
                  </li>
                </ul>
              </li>
              <li>
                <a href="http://mpms.monami.com/promotion/">기업 구매 / 개발</a>
                <ul class="hovermenu">
                  <li><a href="http://mpms.monami.com/promotion/">기업 및 단체 구매</a></li>
                  <li><a href="../../geunseok/industry.jsp">산업용 맞춤 제품개발</a></li>
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
              <a href="../../kyungchul/search.jsp">
                <img src="../../images/btn_search.gif" alt="" />
              </a>
            </div>
          </div>
          <div class="allmenu" style="display: none;">
            <div class="menubox">
              <h2>모나미소개</h2>
              <ul>
                <li><a href="../../kyungchul/ceo.jsp">CEO 메시지</a></li>
                <li><a href="../../kyungchul/company.jsp">회사정보</a></li>
                <li><a href="../../kyungchul/history.jsp">회사연혁</a></li>
                <li><a href="../../geunseok/investment.jsp">투자정보</a></li>
                <li><a href="../../geunseok/ci.jsp">CI</a></li>
                <li><a href="http://recruit.monami.co.kr/" target="_blank">채용정보</a></li>
                <li><a href="../../geunseok/location.jsp">찾아오시는 길</a></li>
              </ul>
            </div>
            <div class="menubox">
              <h2>모나미제품</h2>
              <ul>
                <li><a href="../pen/penpage.jsp">펜</a></li>
                <li><a href="../marker/markerpage.jsp">마카</a></li>
                <li><a href="../../sanghoon/lightpen.jsp">형광펜</a></li>
                <li><a href="../../doyoon/A_main1.jsp">미술용품</a></li>
                <li><a href="../../doyoon/E_main1.jsp">기타</a></li>
                <li><a href="../cataloguepage.jsp">카탈로그</a></li>
              </ul>
            </div>
            <div class="menubox">
              <h2>NEWS &amp; VIDEO</h2>
              <ul>
                <li><a href="../../teamin/monami_news1.jsp">보도자료</a></li>
                <li><a href="../../teamin/monami_video1.jsp">동영상자료</a></li>
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
                <li><a href="../../doyoon/FAQ.jsp">자주묻는질문</a></li>
                <li><a href="../../doyoon/Inquiry.jsp">문의하기</a></li>
                <li><a href="../../geunseok/board_event.jsp">이벤트</a></li>
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
  <!-- 바디 상단 이미지 시작-->
 
  <!-- 바디 상단 이미지 끝  -->
  <!-- 본문 시작  -->
  <div id="container">
    <div id="contents">
        <div class="toptitle">
            <h2>모나미제품</h2>
            <p>모나미는 당신의 행복한 기록과 늘 함께 합니다.</p>
        </div>
        <div class="submenu_list">
             <ul id="sublist">
                 <li class="on">
                     <a href="../penpage.jsp">펜</a>
                 </li>
                 <li>
                     <a href="../marker/markerpage.jsp">마카</a>
                 </li>
                 <li>
                     <a href="../../sanghoon/lightpen.jsp">형광펜</a>
                 </li>
                 <li>
                     <a href="../../doyoon/A_main1.jsp">미술용품</a>
                 </li>
                 <li>
                     <a href="../../doyoon/E_main1.jsp">기타</a>
                 </li>
                 <li>
                     <a href="../cataloguepage.jsp">카탈로그</a>
                 </li>
             </ul>
        </div>
        <h3 class="title1">
            PRODUCT
            <span>INFO</span>
        </h3>
        <ul class="categori_list">
            <li><a href="../pen/premium_pen.jsp">프리미엄펜</a></li>
            <li><a href="../pen/fountain_pen.jsp">만년필</a></li>
            <li><a href="../pen/oil_pen.jsp">유성볼펜</a></li>
            <li><a href="../pen/neutral_pen.jsp">중성펜</a></li>
        </ul>

        <div class="product_list">
            <ul>
              <li><a href="../peninfo/peninfo.jsp">
                <div class="thum">
                    <img src="../../images/p0.jpg" alt="">
                    <div class="ondiv">
                        <div class="btn_plus">
                            <div></div>
                            <div></div>
                        </div>
                    </div>
                </div>
                <div class="info">
                    <div class="pen_name">유성볼펜</div>
                    <div class="product_name">153 어흥이</div>
                </div>                   
                <li><a href="../peninfo/peninfo.jsp">
                    <div class="thum">
                        <img src="../../images/p1.jpg" >
                        <div class="ondiv">
                            <div class="btn_plus">
                                <div></div>
                                <div></div>
                            </div>
                        </div>
                    </div>
                    <div class="info">
                        <div class="pen_name">유성볼펜</div>
                        <div class="product_name">FX ZETA C3</div>
                    </div>                   
                </a>
                </li>

                <li><a href="pen2">
                    <div class="thum">
                        <img src="../../images/p2.jpg" alt="">
                        <div class="ondiv">
                            <div class="btn_plus">
                                <div></div>
                                <div></div>
                            </div>
                        </div>
                    </div>
                    <div class="info">
                        <div class="pen_name">유성볼펜</div>
                        <div class="product_name">제니스7</div>
                    </div>                   
                </a>
                </li>

                <li><a href="pen3">
                    <div class="thum">
                        <img src="../../images/p3.jpg" alt="">
                        <div class="ondiv">
                            <div class="btn_plus">
                                <div></div>
                                <div></div>
                            </div>
                        </div>
                    </div>
                    <div class="info">
                        <div class="pen_name">만년필</div>
                        <div class="product_name">153 네오 만년필EF</div>
                    </div>                   
                </a>
                 </li>
                 
                <li><a href="pen4">
                    <div class="thum">
                        <img src="../../images/p4.jpg" alt="">
                        <div class="ondiv">
                            <div class="btn_plus">
                                <div></div>
                                <div></div>
                            </div>
                        </div>
                    </div>
                    <div class="info">
                        <div class="pen_name">유성볼펜</div>
                        <div class="product_name">플립3</div>
                    </div>                   
                </a>
                 </li>

                <li><a href="pen5">
                    <div class="thum">
                        <img src="../../images/p5.jpg" alt="">
                        <div class="ondiv">
                            <div class="btn_plus">
                                <div></div>
                                <div></div>
                            </div>
                        </div>
                    </div>
                    <div class="info">
                        <div class="pen_name">유성볼펜</div>
                        <div class="product_name">FLIP3 형광</div>
                    </div>                   
                </a>
             </li>
                <li><a href="pen6">
                 <div class="thum">
                     <img src="../../images/p6.jpg" alt="">
                     <div class="ondiv">
                         <div class="btn_plus">
                             <div></div>
                             <div></div>
                         </div>
                     </div>
                 </div>
                 <div class="info">
                     <div class="pen_name">프리미엄펜</div>
                     <div class="product_name">153 네오 아트</div>
                 </div>                   
                </a></li>
                <li><a href="pen7">
                 <div class="thum">
                     <img src="../../images/p7.jpg" alt="">
                     <div class="ondiv">
                         <div class="btn_plus">
                             <div></div>
                             <div></div>
                         </div>
                     </div>
                 </div>
                 <div class="info">
                     <div class="pen_name">프리미엄펜</div>
                     <div class="product_name">153 네온</div>
                 </div>                   
                </a></li>
                <li><a href="pen8">
                 <div class="thum">
                     <img src="../../images/p8.jpg" alt="">
                     <div class="ondiv">
                         <div class="btn_plus">
                             <div></div>
                             <div></div>
                         </div>
                     </div>
                 </div>
                 <div class="info">
                     <div class="pen_name">유성볼펜</div>
                     <div class="product_name">153 로마</div>
                 </div>                   
                </a></li>

                <li><a href="pen9">
                 <div class="thum">
                     <img src="../../images/p9.jpg" alt="">
                     <div class="ondiv">
                         <div class="btn_plus">
                             <div></div>
                             <div></div>
                         </div>
                     </div>
                 </div>
                 <div class="info">
                     <div class="pen_name">프리미엄펜</div>
                     <div class="product_name">60주년 프러스펜 3000 데스크펜 스페셜 에디션</div>
                 </div>                   
                </a></li>
                
                </a></li>
            </ul>
        </div>
        <div class="pagenum">
         <a class="page_prev">
             <img src="../../images/page_prev.gif">
         </a>
         <strong>1</strong>
         <a href="../pen/penpage2.jsp">2</a>
         <a href="../pen/penpage3.jsp">3</a>
         <a href="../pen/penpage4.jsp">4</a>
         <a href="../pen/penpage5.jsp">5</a>
         <a href="../pen/penpage6.jsp">6</a>
        
         <a  class="page_next" href="../pen/penpage2.jsp"> 
             <img src="../../images/page_next.gif">
         </a>
     </div>
     <div class="topbtn">
         <a href="#Top">
             <img src="../../images/btn_top.gif" alt="상단으로">
         </a>
     </div>
 </div>
    </div>
  <!-- 본문 끝 -->
  <!-- 푸터 시작 -->
  <div id="footer">
    <div class="foot">
      <div class="foot_top">
        <h1><img src="../../images/foot_logo.jpeg" alt="로고"></img></h1>
        <ul class="fm">
          <li>
            <a href="../../kyungchul/ceo.jsp">회사소개</a>
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
</html>