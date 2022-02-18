<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>MONAMI</title>
    <link rel="shortcut icon" href="${cp}/images/favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" href="${cp}/css/style_another.css" />
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
                  <li><a href="#">ENG</a></li>
                </ul>
              </div>
              <div class="sns">
                <ul>
                  <li>
                    <a href="#" target="_blank">
                      <img src="${cp}/images/sns_facebook.gif" alt="페이스북" />
                    </a>
                  </li>
                  <li>
                    <a href="#" target="_blank">
                      <img src="${cp}/images/sns_insta.gif" alt="인스타" />
                    </a>
                  </li>
                </ul>
              </div>
            </div>
            <div class="topmenu">
              <ul>
                <li>
                  <a href="./index.html">HOME</a>
                </li>
                <li>
                  <a href="./sitemap.html">SITE MAP</a>
                </li>
                <li>
                  <a href="./Inquiry.html">CONTACT US</a>
                </li>
              </ul>
            </div>
          </div>
        </div>
        <div class="gnb">
          <div class="conwrap">
            <h1>
              <a href="./index.html"><img src="${cp}/images/logo.jpeg" alt="" /></a>
            </h1>
            <div class="nav">
              <ul>
                <li>
                  <a href="./about/ceo.html">모나미소개</a>
                  <ul>
                    <li>
                      <a href="./about/ceo.html">CEO 메시지</a>
                    </li>
                    <li>
                      <a href="./about/company.html">회사정보</a>
                    </li>
                    <li>
                      <a href="./about/history.html">회사연혁</a>
                    </li>
                    <li>
                      <a href="./investment.html">투자정보</a>
                    </li>
                    <li>
                      <a href="./ci.html">CI</a>
                    </li>
                    <li>
                      <a href="http://recruit.monami.co.kr/">채용정보</a>
                    </li>
                    <li>
                      <a href="./location.html">찾아오시는 길</a>
                    </li>
                  </ul>
                </li>
                <li>
                  <a href="./pen/penpage.html">모나미제품</a>
                  <ul>
                    <li>
                      <a href="./pen/penpage.html">펜</a>
                    </li>
                    <li>
                      <a href="./marker/markerpage.html">마카</a>
                    </li>
                    <li>
                      <a href="./lightpen.html">형광펜</a>
                    </li>
                    <li>
                      <a href="./A_main1.html">미술용품</a>
                    </li>
                    <li>
                      <a href="./E_main1.html">기타</a>
                    </li>
                    <li>
                      <a href="./cataloguepage.html">카탈로그</a>
                    </li>
                  </ul>
                </li>
                <li>
                  <a href="./monami_news1.html">NEWS & VIDEO</a>
                  <ul >
                    <li>
                      <a href="./monami_news1.html">보도자료</a>
                    </li>
                    <li>
                      <a href="./monami_video1.html">동영상자료</a>
                    </li>
                  </ul>
                </li>
                <li>
                  <a href="#">모나미 미술대회</a>
                  <ul>
                    <li>
                      <a href="#">미술대회 소개</a>
                    </li>
                    <li>
                      <a href="#">수상작 발표</a>
                    </li>
                  </ul>
                </li>
                <li>
                  <a href="./">고객지원</a>
                  <ul>
                    <li>
                      <a href="./FAQ.html">자주묻는질문</a>
                    </li>
                    <li>
                      <a href="./Inquiry.html">문의하기</a>
                    </li>
                    <li>
                      <a href="./board_event.html">이벤트</a>
                    </li>
                    <li>
                      <a class="find_f">모나미 패밀리샵 찾기</a>
                    </li>
                  </ul>
                </li>
                <li>
                  <a href="./industry.html">기업 구매 / 개발</a>
                  <ul class="hovermenu">
                    <li><a href="http://mpms.monami.com/promotion/">기업 및 단체 구매</a></li>
                    <li><a href="./industry.html">산업용 맞춤 제품개발</a></li>
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
                <a href="${cp}/search.html">
                  <img src="${cp}/images/btn_search.gif" alt="" />
                </a>
              </div>
            </div>
            <div class="allmenu" style="display: none;">
              <div class="menubox">
                <h2>모나미소개</h2>
                <ul>
                  <li><a href="./about/ceo.html">CEO 메시지</a></li>
                  <li><a href="./about/company.html">회사정보</a></li>
                  <li><a href="./about/history.html">회사연혁</a></li>
                  <li><a href="./investment.html">투자정보</a></li>
                  <li><a href="./ci.html">CI</a></li>
                  <li><a href="http://recruit.monami.co.kr/" target="_blank">채용정보</a></li>
                  <li><a href="./location.html">찾아오시는 길</a></li>
                </ul>
              </div>
              <div class="menubox">
                <h2>모나미제품</h2>
                <ul>
                  <li><a href="./pen/penpage.html">펜</a></li>
                  <li><a href="./marker/markerpage.html">마카</a></li>
                  <li><a href="./lightpen.html">형광펜</a></li>
                  <li><a href="./A_main1.html">미술용품</a></li>
                  <li><a href="./E_main1.html">기타</a></li>
                  <li><a href="./cataloguepage.html">카탈로그</a></li>
                </ul>
              </div>
              <div class="menubox">
                <h2>NEWS &amp; VIDEO</h2>
                <ul>
                  <li><a href="./monami_news1.html">보도자료</a></li>
                  <li><a href="./monami_video1.html">동영상자료</a></li>
                </ul>
              </div>
                                      <div class="menubox">
                <h2>모나미 미술대회</h2>
                <ul>
                  <li><a href="#" target="_blank">미술대회 소개</a></li>
                  <li><a href="#" target="_blank">수상작 발표</a></li>
                </ul>
              </div>
              <div class="menubox">
                <h2>고객지원</h2>
                <ul>
                  <li><a href="./FAQ.html">자주묻는질문</a></li>
                  <li><a href="./Inquiry.html">문의하기</a></li>
                  <li><a href="./board_event.html">이벤트</a></li>
                  <li><a class="find_f">모나미 패밀리샵 찾기</a></li>
                </ul>
              </div>
              <div class="menubox">
                <h2><a href="./industry.html" target="_blank">기업 구매 / 개발</a></h2>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- 헤더 끝 SECTION-->
    <!-- 바디 상단 이미지 시작 SECTION-->
    <div id="visaul">메인화면 상단에 이미지 들어갈 곳</div>
    <!-- 바디 상단 이미지 끝  SECTION-->
    <!-- 본문 시작  SECTION-->
    <div id="container">
      <div id="contents">
      
          <div class="pagetitle pn1">
          <h2>
            모나미소개																				</h2>
          <p>
            언제 어디서나 모나미는 당신 곁에 있습니다.																				</p>
        </div>
          <div class="pagetabs">
              <ul class="m1">
            <li><a href="/about/ceo.html">CEO 메시지</a></li>
            <li><a href="/about/company.html">회사정보</a></li>
            <li><a href="/about/history.html">회사연혁</a></li>
            <li><a href="./investment.html">투자정보</a></li>
            <li><a href="./ci.html">CI</a></li>
            <li><a href="http://recruit.monami.co.kr/" target="_blank">채용정보</a></li>
            <li class="on"><a href="./location.html">찾아오시는 길</a></li>
          </ul>
                          
      
        </div>
      
      
      <h3 class="title1">MONAMI <span>CONTACT</span></h3>
      <div class="location">
      
        
        <div class="mapinfo">
          <div class="map" id="map" style="position: relative; overflow: hidden; background: url(&quot;http://t1.daumcdn.net/mapjsapi/images/2x/bg_tile.png&quot;);">
            <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d32e75f90907e855439232949f95a9f8"></script><script charset="UTF-8" src="http://t1.daumcdn.net/mapjsapi/js/main/4.4.3/kakao.js"></script>
            <script>
            var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
              mapOption = { 
                center: new daum.maps.LatLng(37.335565, 127.100658), // 지도의 중심좌표
                level: 3 // 지도의 확대 레벨
              };
      
            var map = new daum.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
      
            // 마커가 표시될 위치입니다 
            var markerPosition  = new daum.maps.LatLng(37.335565, 127.100658); 
      
            // 마커를 생성합니다
            var marker = new daum.maps.Marker({
              position: markerPosition
            });
      
            // 마커가 지도 위에 표시되도록 설정합니다
            marker.setMap(map);
      
            // 아래 코드는 지도 위의 마커를 제거하는 코드입니다
            // marker.setMap(null);    
      
      
            daum.maps.event.addListener(marker, 'click', function() {
                // 마커 위에 인포윈도우를 표시합니다
               window.open("http://map.daum.net/?q=%EA%B2%BD%EA%B8%B0%20%EC%9A%A9%EC%9D%B8%EC%8B%9C%20%EC%88%98%EC%A7%80%EA%B5%AC%20%EB%8F%99%EC%B2%9C%EB%8F%99%20854-2&map_type=DEFAULT&map_hybrid=false");
      
            });
      
      
      
      
            </script><div style="position: absolute; left: 0px; top: 0px; width: 100%; height: 100%; touch-action: none; cursor: url(&quot;http://t1.daumcdn.net/mapjsapi/images/2x/cursor/openhand.cur.ico&quot;) 7 5, url(&quot;http://t1.daumcdn.net/mapjsapi/images/2x/cursor/openhand.cur.ico&quot;), default;"><div style="position: absolute;"><div style="position: absolute; z-index: 1; left: 0px; top: 0px;"><img src="http://map3.daumcdn.net/map_2d_hd/2111ydg/L5/473/231.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -244px; top: 462px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map0.daumcdn.net/map_2d_hd/2111ydg/L5/473/232.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 12px; top: 462px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map1.daumcdn.net/map_2d_hd/2111ydg/L5/473/233.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 268px; top: 462px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map2.daumcdn.net/map_2d_hd/2111ydg/L5/473/234.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 524px; top: 462px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map3.daumcdn.net/map_2d_hd/2111ydg/L5/474/231.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -244px; top: 206px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map0.daumcdn.net/map_2d_hd/2111ydg/L5/474/232.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 12px; top: 206px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map1.daumcdn.net/map_2d_hd/2111ydg/L5/474/233.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 268px; top: 206px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map2.daumcdn.net/map_2d_hd/2111ydg/L5/474/234.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 524px; top: 206px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map3.daumcdn.net/map_2d_hd/2111ydg/L5/475/231.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -244px; top: -50px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map0.daumcdn.net/map_2d_hd/2111ydg/L5/475/232.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 12px; top: -50px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map1.daumcdn.net/map_2d_hd/2111ydg/L5/475/233.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 268px; top: -50px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map2.daumcdn.net/map_2d_hd/2111ydg/L5/475/234.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 524px; top: -50px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map3.daumcdn.net/map_2d_hd/2111ydg/L5/476/231.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -244px; top: -306px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map0.daumcdn.net/map_2d_hd/2111ydg/L5/476/232.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 12px; top: -306px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map1.daumcdn.net/map_2d_hd/2111ydg/L5/476/233.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 268px; top: -306px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map2.daumcdn.net/map_2d_hd/2111ydg/L5/476/234.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 524px; top: -306px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"></div><div style="position: absolute; z-index: 0; left: 0px; top: 0px;"><img src="http://map3.daumcdn.net/map_2d_hd/2111ydg/L3/1898/931.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 203.25px; top: 270.5px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 64px; height: 64px;"><img src="http://map0.daumcdn.net/map_2d_hd/2111ydg/L3/1898/932.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 267.25px; top: 270.5px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 64px; height: 64px;"><img src="http://map1.daumcdn.net/map_2d_hd/2111ydg/L3/1898/933.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 331.25px; top: 270.5px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 64px; height: 64px;"><img src="http://map2.daumcdn.net/map_2d_hd/2111ydg/L3/1898/934.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 395.25px; top: 270.5px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 64px; height: 64px;"><img src="http://map3.daumcdn.net/map_2d_hd/2111ydg/L3/1899/931.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 203.25px; top: 206.5px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 64px; height: 64px;"><img src="http://map0.daumcdn.net/map_2d_hd/2111ydg/L3/1899/932.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 267.25px; top: 206.5px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 64px; height: 64px;"><img src="http://map1.daumcdn.net/map_2d_hd/2111ydg/L3/1899/933.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 331.25px; top: 206.5px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 64px; height: 64px;"><img src="http://map2.daumcdn.net/map_2d_hd/2111ydg/L3/1899/934.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 395.25px; top: 206.5px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 64px; height: 64px;"><img src="http://map3.daumcdn.net/map_2d_hd/2111ydg/L3/1900/931.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 203.25px; top: 142.5px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 64px; height: 64px;"><img src="http://map0.daumcdn.net/map_2d_hd/2111ydg/L3/1900/932.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 267.25px; top: 142.5px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 64px; height: 64px;"><img src="http://map1.daumcdn.net/map_2d_hd/2111ydg/L3/1900/933.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 331.25px; top: 142.5px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 64px; height: 64px;"><img src="http://map2.daumcdn.net/map_2d_hd/2111ydg/L3/1900/934.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 395.25px; top: 142.5px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 64px; height: 64px;"><img src="http://map3.daumcdn.net/map_2d_hd/2111ydg/L3/1901/931.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 203.25px; top: 78.5px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 64px; height: 64px;"><img src="http://map0.daumcdn.net/map_2d_hd/2111ydg/L3/1901/932.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 267.25px; top: 78.5px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 64px; height: 64px;"><img src="http://map1.daumcdn.net/map_2d_hd/2111ydg/L3/1901/933.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 331.25px; top: 78.5px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 64px; height: 64px;"><img src="http://map2.daumcdn.net/map_2d_hd/2111ydg/L3/1901/934.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 395.25px; top: 78.5px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 64px; height: 64px;"></div><div style="position: absolute; z-index: 1;"></div><div style="width: 712px; height: 598px; position: absolute; z-index: 1;"></div><div style="position: absolute; z-index: 1;"><svg version="1.1" style="stroke: none; stroke-dashoffset: 0.5; stroke-linejoin: round; fill: none; transform: translateZ(0px); position: absolute; left: -1424px; top: -1196px; width: 3560px; height: 2990px;" viewBox="0 0 3560 2990"><defs></defs></svg></div><div style="position: absolute; z-index: 1; width: 100%; height: 0px; transform: translateZ(0px);"><div style="position: absolute; margin: -39px 0px 0px -14px; z-index: 0; left: 350px; top: 242px;"><img draggable="false" src="http://t1.daumcdn.net/mapjsapi/images/2x/marker.png" alt="" title="" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 29px, 42px, 0px); top: 0px; left: 0px; width: 29px; height: 42px;"><img src="http://t1.daumcdn.net/mapjsapi/images/2x/transparent.gif" alt="" draggable="false" usemap="#daum.maps.Marker.Area:1" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; width: 29px; height: 42px;"><map id="daum.maps.Marker.Area:1" name="daum.maps.Marker.Area:1"><area href="javascript:void(0)" alt="" shape="poly" coords="14,39,9,27,4,21,1,16,1,10,4,4,11,0,18,0,25,4,28,10,28,16,25,21,20,27" title="" style="-webkit-tap-highlight-color: transparent;"></map></div></div></div></div><div style="position: absolute; cursor: default; z-index: 1; margin: 0px 6px; height: 19px; line-height: 14px; left: 0px; bottom: 0px; color: rgb(0, 0, 0);"><div style="color: rgb(0, 0, 0); text-align: center; font-size: 10px; float: left;"><div style="float: left; margin: 2px 3px 0px 4px; height: 6px; transition: width 0.1s ease 0s; border-top: none rgb(0, 0, 0); border-right: 2px solid rgb(0, 0, 0); border-bottom: 2px solid rgb(0, 0, 0); border-left: 2px solid rgb(0, 0, 0); border-image: initial; width: 58px;"></div><div style="float: left; margin: 0px 4px 0px 0px; font-family: AppleSDGothicNeo-Regular, 돋움, dotum, sans-serif; font-weight: bold; color: rgb(0, 0, 0);">250m</div></div><div style="margin: 0px 4px; float: left;"><a target="_blank" href="http://map.kakao.com/" title="Kakao 지도로 보시려면 클릭하세요." style="float: left; width: 32px; height: 10px;"><img src="http://t1.daumcdn.net/mapjsapi/images/2x/m_bi_b.png" alt="Kakao 지도로 이동" style="float: left; width: 32px; height: 10px; border: none;"></a><div style="font: 11px / 11px Arial, Tahoma, Dotum, sans-serif; float: left;"></div></div></div><div style="cursor: auto; position: absolute; z-index: 2; left: 0px; top: 0px;"></div>			
          </div>
          <div class="txtarea">
            
            <div class="tit">
              <img src="${cp}/images/location_logo.jpeg" alt="모나미 로고">
              <h4>모나미 본사 오시는길</h4>
            </div>
            <dl>
              <dt>ADDRESS</dt>
              <dd>
                경기도 용인시 수지구 손곡로 17<br>
                (구)경기도 용인시 수지구 동천동 854-2
              </dd>
            </dl>
            <dl>
              <dt>TEL</dt>
              <dd>
                031-216-0153 / 080-022-0153
              </dd>
            </dl>
            <img src="${cp}/images/location_img1.jpeg" alt="본사 사진" class="bd_img">
          </div>
        </div>
        <div class="traffic">
          <div class="car">
            <div class="tit">자가용 이용 시</div>
            <div class="info">
              <div class="align">
                <ul>
                  <li>판교IC를 빠져 나와 '수지/신갈' 방향으로 오시면 됩니다.</li>
                </ul>
              </div>
            </div>
          </div>
          <div class="public">
            <div class="tit">대중교통 이용 시</div>
            <div class="info">
              <div class="align">
                <ul>
                  <li>지하철 : 신분당선 동천역 2번 출구 도보 10분 거리</li>
                  <li>일반버스 :<br>분당선 미금역 7번 출구에서 버스 11번을 이용, 프레시원 정거장 하차<br>또는 700-2번, 5번을 이용, KT 수지지사.물류센터 정거장 하차</li>
                  <li>광역버스 :<br>M4101번 (종로,을지로,남대문→동천동 현대홈타운2차아파트 정거장 하차)<br>6900번(잠실→동천동 현대홈타운2차아파트 정거장 하차)</li>
                </ul>
              </div>
            </div>
          </div>
        </div>
      
      </div>
      
      
      
        <div class="btn_top">
          <a href="#"><img src="${cp}/images/btn_top.gif" alt="페이지 상단으로"></a>
        </div>
      </div><!--/contents-->
      </div>
    </div>
    <!-- 본문 끝 SECTION-->
    <!-- 푸터 시작 SECTION-->
    <div id="footer">
      <div class="foot">
        <div class="foot_pop" style="display: none;">
          <div class="privacy" style="display: none;">
            <div class="title">개인정보 취급방침</div>
            <div class="textarea">
              <textarea readonly="readonly">'㈜모나미'는 (이하 '회사'는) 정보주체의 개인정보를 중요시하며, "정보통신망 이용촉진 및 정보보호"에 관한 법률을 준수하고 있습니다. 회사는 개인정보취급방침을 통하여 고객님께서 제공하시는 개인정보가 어떠한 용도와 방식으로 이용되고 있으며, 개인정보보호를 위해 어떠한 조치가 취해지고 있는지 알려드립니다. 회사는 개인정보취급방침을 개정하는 경우 웹사이트 공지사항(또는 개별공지)을 통하여 공지할 것입니다.
      ＊ ㈜모나미의 개인정보 처리방침은 다음과 같은 내용을 담고 있습니다.
      
      1. 수집하는 개인정보 항목 및 수집방법 
      회사는 제품 문의, 제안사항, 불만사항 접수 등을 위해 아래와 같은 개인정보를 수집하고 있습니다. 
      - 필수항목 : 이름, 이메일
      - 선택항목 : 연락처
      (단, 정보주체의 기본적 인권 침해의 우려가 있는 민감한 인종 및 민족, 사상 및 신조, 출신지 및 본적지, 정치적 성향 및 범죄기록,건강상태 및 성생활 등의 개인정보는 수집하지 않습니다.) 
      또한, 서비스 이용 과정에서 아래와 같은 정보들이 생성되어 수집될 수 있습니다.
      - 개인정보 추가 수집에 대해 별도 동의를 받는 경우 
      - 수집방법 : 홈페이지 ’문의하기(Contact Us)’ 서비스를 통한 수집
      
      2. 개인정보 수집 및 이용목적
      회사는 수집한 개인정보를 다음의 목적을 위해 활용합니다.
      이용목적 : 질의자가 문의한 답변 전달, 본인의 의사표시 사항 처리, 불만사항 처리, 기타 원활한 의사소통 경로 확보 (이용 목적이 변경될 시에는 사전동의를 구할 예정입니다.)
      
      3. 개인정보의 제공 및 공유
      회사는 정보주체들의 개인정보를 개인정보의 수집목적 및 이용목적에서 고지한 범위내에서 사용하며, 정보주체의 사전 동의 없이는 범위를 초과하여 이용하거나 원칙적으로 정보주체의 개인정보를 외부에 공개하지 않습니다. 다만, 아래의 경우에는 예외로 합니다. 
      - 정보주체들이 사전에 동의한 경우
      - 법령의 규정에 의거하거나, 수사 목적으로 법령에 정해진 절차와 방법에 따라 수사기관의 요구가 있는 경우
      
      4. 개인정보의 보유 및 이용기간
      정보주체 개인정보는 원칙적으로, 개인정보의 수집 및 이용목적이 달성된 후에는 해당 정보를 지체 없이 파기합니다. 단, ‘회사’ 내부 방침 또는 정보주체로부터 개인정보 수집 시 동의 받은 개인정보 보유/이용기간, 관련법령의 규정 내에서 개인정보를 처리/보유합니다. 일정기간 동안 보존해야 하는 정보에 대해 아래와 같은 사유로 인하여 보존하고 있습니다.
      - 보존항목 : (필수) 이름, 이메일, 제목, 내용 / (선택) 연락처, 첨부파일 
      - 보유근거 : 정보주체 동의
      - 보유 및 이용기간 : 3년
      
      5. 개인정보의 파기절차 및 방법
      회사는 원칙적으로 개인정보수집 및 이용목적이 달성된 후에는 해당정보를 지체없이 파기합니다. 파기절차 및 방법은 다음과 같습니다.
      - 파기절차 
       : 정보주체가 서비스 신청, 문의상담 등을 위하여 입력하신 정보는 목적이 달성된 후 별도의 DB로 옮겨져(종이의 경우 별도의 서류함) 내부 방침 및 기타 관련 법령에 의한 정보보호 사유에 따라(보유 및 이용기간 참조) 일정기간 저장된 후 파기되어집니다.
       : 동 개인정보는 법률에 의한 경우가 아니고서는 보유되어지는 이외의 다른 목적으로 이용되지 않습니다. 
      - 파기방법 
       : 전자적 파일형태로 저장된 개인정보는 기록을 재생할 수 없는 기술적 방법을 사용하여 삭제합니다.
       : 종이에 출력된 개인정보는 분쇄기로 분쇄하거나 소각합니다. 
      
      6. 정보주체 및 법정대리인의 권리와 그 행사방법
      정보주체는 언제든지 등록되어 있는 자신의 개인정보를 조회하거나 수정할 수 있으며 삭제를 요청할 수 있습니다.
      혹은 개인정보보호책임자에게 서면, 전화 또는 이메일로 정정을 요청하시면, 본인 확인 절차 후에 조치하겠습니다. 
      정보주체가 개인정보의 오류 등에 대한 정정 또는 삭제를 요구한 경우에는 회사는 정정 또는 삭제를 완료할 때까지 당해 개인정보를 이용하거나 제공하지 않습니다.
      권리 행사는 정보주체의 법정대리인이나 위임을 받은 자 등 대리인을 통하여 하실 수 있습니다. 이 경우 개인정보 보호법 시행규칙 별지 제11호 서식에 따른 위임장을 제출하셔야 합니다.
      
      7. 개인정보 자동 수집장치의 설치,운영 및 그 거부에 관한 사항
      당사는 쿠키를 사용하지 않습니다. 
      
      8. 개인정보 보호책임자 및 담당부서 안내  
      회사는 고객의 개인정보를 보호하고 개인정보와 관련한 불만을 처리하기 위하여 아래와 같이 관련 부서 및 개인정보관리책임자를 지정하고 있습니다. 
      - 개인정보담당부서 
        : 부서명 : 마케팅팀
        : 전화번호 : 080-022-0153 / 031-216-0153 
        : 이메일 : help2@monami.com 
      - 개인정보보호책임자
        : 성명 : 신동호 팀장
        : 전화번호 : 080-022-0153
        : 이메일 : dhshin@monami.com 
      
      귀하께서는 회사의 서비스를 이용하시며 발생하는 모든 개인정보보호 관련 민원을 개인정보관리책임자 혹은 담당부서로 신고하실 수 있습니다. 회사는 정보주체들의 신고사항에 대해 신속하게 충분한 답변을 드릴 것입니다. 기타 개인정보침해에 대한 신고나 상담이 필요하신 경우에는 아래 기관에 문의하시기 바랍니다. 
      개인분쟁조정위원회 (http://www.1336.or.kr)
      정보보호마크인증위원회 (http://www.eprivacy.or.kr)
      대검찰청 인터넷범죄수사센터 (http://icic.sppo.go.kr)
      경찰청 사이버테러대응센터 (http://www.ctrc.go.kr) 
      
      9. 고지의 의무
      현 개인정보 처리방침 내용 추가, 삭제 및 수정이 있을 시에는 개정 최소 7일전부터 홈페이지의 ‘공지사항’을 통해 고지할 것입니다. 
      개인정보취급방침 시행일자 : 2018년 08월 02일 
       </textarea>
            </div>
            <div class="btn_close"><a>CLOSE</a></div>
          </div>
          <div class="email" style="display: none;">
            <div class="title">이메일무단수집거부</div>
            <div class="textarea">
              본 웹사이트에 게시된 이메일 주소가 전자우편 수집 프로그램이나 그 밖의 기술적 장치를 이용하여 무단으로 수집되는 것을 거부하며, 이를 위반시정 보통신망법에 의해 형사 처벌됨을 유념하시기 바랍니다.
      <br><br>
      <div class="tit">시행일</div>
      
      본 이메일 무단 수집 거부 정책은 2017년 11월부터 시행합니다.
            </div>
            <div class="btn_close"><a>CLOSE</a></div>
          </div>
        </div>
        <div class="foot_top">
          <h1><img src="${cp}/images/foot_logo.jpeg" alt="로고"></img></h1>
          <ul class="fm">
            <li>
              <a href="${cp}/about/ceo.html">회사소개</a>
            </li>
            <li>
              <a class="privacy_pop">개인정보처리방식</a>
            </li>
            <li>
              <a class="email_pop">이메일무단수집거부</a>
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
  </div>
  </body>
</html>
