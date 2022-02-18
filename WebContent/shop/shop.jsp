<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
  <head>
  	<c:set var="cp" value="${pageContext.request.contextPath}"/>
    <meta http-equiv="Content-Type" content="text/html; charset=euc-kr" />
    <title>모나미 패밀리샵 찾기</title>
    <link href="${cp}/css/shop.css" rel="stylesheet" type="text/css" />
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="${cp}/js/shop.js"></script>
  </head>
  <body>
    <div id="wrap_popup">
      <!-- Header 시작 -->
      <div class="header">
        <a href="javascript:window.open('', '_self').close();" class="btn_close"
          ><img src="${cp}/images/close.png" width="50" height="50" alt="닫기"
        /></a>
      </div>
      <!--// Header 끝 -->
      <!-- Contents 시작 -->
      <div class="contents">
        <div class="tit_sub">
          <img
            src="${cp}/images/tit_sub.jpg"
            width="783"
            height="55"
            alt="패밀리샵은 무엇인가요? 패밀리샵은 모나미와 함께 협력하는 문구 소매 매장입니다. 우리 동네 패밀리샵에서 더욱 가까워진 모나미를 만나 보세요!"
          />
        </div>
        <!-- Map 시작 -->
        <div class="wrap_map">
          <!-- 광역지도 시작 -->
          <div class="map">
            <span class="map_tit">원하시는 지역을 선택해 주세요.</span>
            <a href="#" id="b_map1" class="b_map1" onclick="dis1()"
              >서울특별시</a
            >
            <a href="#" id="b_map2" class="b_map2" onclick="dis2()">경기도</a>
            <a href="#" id="b_map3" class="b_map3" onclick="dis3()"
              >인천광역시</a
            >
          </div>
          <!--// 광역지도 끝 -->
          <!-- 세부지도 시작 -->
          <div class="map_sub">
            <!-- 서울시 -->
            <div id="map1">
              <a id="b_map1_1" class="b_map1_1" href="#" onclick="subadd0()"
                >도봉구</a
              >
              <a id="b_map1_2" class="b_map1_2" href="#" onclick="subadd0()"
                >강북구</a
              >
              <a id="b_map1_3" class="b_map1_3" href="#" onclick="subadd1()"
                >노원구</a
              >
              <a id="b_map1_4" class="b_map1_4" href="#" onclick="subadd10()"
                >은평구</a
              >
              <a id="b_map1_5" class="b_map1_5" href="#" onclick="subadd0()"
                >성북구</a
              >
              <a id="b_map1_6" class="b_map1_6" href="#" onclick="subadd11()"
                >서대문구</a
              >
              <a id="b_map1_7" class="b_map1_7" href="#" onclick="subadd7()"
                >종로구</a
              >
              <a id="b_map1_8" class="b_map1_8" href="#" onclick="subadd8()"
                >동대문구</a
              >
              <a id="b_map1_9" class="b_map1_9" href="#" onclick="subadd0()"
                >중랑구</a
              >
              <a id="b_map1_10" class="b_map1_10" href="#" onclick="subadd0()"
                >강서구</a
              >
              <a id="b_map1_11" class="b_map1_11" href="#" onclick="subadd9()"
                >마포구</a
              >
              <a id="b_map1_12" class="b_map1_12" href="#" onclick="subadd0()"
                >중구</a
              >
              <a id="b_map1_13" class="b_map1_13" href="#" onclick="subadd12()"
                >성동구</a
              >
              <a id="b_map1_14" class="b_map1_14" href="#" onclick="subadd0()"
                >광진구</a
              >
              <a id="b_map1_15" class="b_map1_15" href="#" onclick="subadd2()"
                >강동구</a
              >
              <a id="b_map1_16" class="b_map1_16" href="#" onclick="subadd0()"
                >양천구</a
              >
              <a id="b_map1_17" class="b_map1_17" href="#" onclick="subadd0()"
                >영등포구</a
              >
              <a id="b_map1_18" class="b_map1_18" href="#" onclick="subadd0()"
                >동작구</a
              >
              <a id="b_map1_19" class="b_map1_19" href="#" onclick="subadd0()"
                >용산구</a
              >
              <a id="b_map1_20" class="b_map1_20" href="#" onclick="subadd3()"
                >구로구</a
              >
              <a id="b_map1_21" class="b_map1_21" href="#" onclick="subadd0()"
                >금천구</a
              >
              <a id="b_map1_22" class="b_map1_22" href="#" onclick="subadd0()"
                >관악구</a
              >
              <a id="b_map1_23" class="b_map1_23" href="#" onclick="subadd5()"
                >서초구</a
              >
              <a id="b_map1_24" class="b_map1_24" href="#" onclick="subadd4()"
                >강남구</a
              >
              <a id="b_map1_25" class="b_map1_25" href="#" onclick="subadd6()"
                >송파구</a
              >
            </div>
            <!-- 경기도 -->
            <div id="map2">
              <a id="b_map2_1" class="b_map2_1" href="#" onclick="subadd01()"
                >연천군</a
              >
              <a id="b_map2_2" class="b_map2_2" href="#" onclick="subadd01()"
                >포천시</a
              >
              <a id="b_map2_3" class="b_map2_3" href="#" onclick="subadd01()"
                >동두천시</a
              >
              <a id="b_map2_4" class="b_map2_4" href="#" onclick="subadd01()"
                >파주시</a
              >
              <a id="b_map2_5" class="b_map2_5" href="#" onclick="subadd01()"
                >양주시</a
              >
              <a id="b_map2_6" class="b_map2_6" href="#" onclick="subadd01()"
                >의정부시</a
              >
              <a id="b_map2_7" class="b_map2_7" href="#" onclick="subadd01()"
                >가평군</a
              >
              <a id="b_map2_8" class="b_map2_8" href="#" onclick="subadd01()"
                >남양주시</a
              >
              <a id="b_map2_9" class="b_map2_9" href="#" onclick="subadd01()"
                >김포시</a
              >
              <a id="b_map2_10" class="b_map2_10" href="#" onclick="subadd01()"
                >고양시</a
              >
              <a id="b_map2_11" class="b_map2_11" href="#" onclick="subadd01()"
                >구리시</a
              >
              <a id="b_map2_12" class="b_map2_12" href="#" onclick="subadd01()"
                >하남시</a
              >
              <a id="b_map2_13" class="b_map2_13" href="#" onclick="subadd0()"
                >양평군</a
              >
              <a id="b_map2_14" class="b_map2_14" href="#" onclick="subadd01()"
                >부천시</a
              >
              <a id="b_map2_15" class="b_map2_15" href="#" onclick="subadd01()"
                >광명시</a
              >
              <a id="b_map2_16" class="b_map2_16" href="#" onclick="subadd14()"
                >과천시</a
              >
              <a id="b_map2_17" class="b_map2_17" href="#" onclick="subadd15()"
                >성남시</a
              >
              <a id="b_map2_18" class="b_map2_18" href="#" onclick="subadd01()"
                >안양시</a
              >
              <a id="b_map2_19" class="b_map2_19" href="#" onclick="subadd01()"
                >시흥시</a
              >
              <a id="b_map2_20" class="b_map2_20" href="#" onclick="subadd01()"
                >의왕시</a
              >
              <a id="b_map2_21" class="b_map2_21" href="#" onclick="subadd01()"
                >광주시</a
              >
              <a id="b_map2_22" class="b_map2_22" href="#" onclick="subadd01()"
                >여주시</a
              >
              <a id="b_map2_23" class="b_map2_23" href="#" onclick="subadd01()"
                >군포시</a
              >
              <a id="b_map2_24" class="b_map2_24" href="#" onclick="subadd01()"
                >안산시</a
              >
              <a id="b_map2_25" class="b_map2_25" href="#" onclick="subadd16()"
                >수원시</a
              >
              <a id="b_map2_26" class="b_map2_26" href="#" onclick="subadd13()"
                >용인시</a
              >
              <a id="b_map2_27" class="b_map2_27" href="#" onclick="subadd01()"
                >이천시</a
              >
              <a id="b_map2_28" class="b_map2_28" href="#" onclick="subadd01()"
                >오산시</a
              >
              <a id="b_map2_29" class="b_map2_29" href="#" onclick="subadd18()"
                >화성시</a
              >
              <a id="b_map2_30" class="b_map2_30" href="#" onclick="subadd17()"
                >평택시</a
              >
              <a id="b_map2_31" class="b_map2_31" href="#" onclick="subadd01()"
                >안성시</a
              >
            </div>
            <!-- 인천광역시 -->
            <div id="map3">
              <a id="b_map3_1" class="b_map3_1" href="#" onclick="subadd02()"
                >강화군</a
              >
              <a id="b_map3_2" class="b_map3_2" href="#" onclick="subadd02()"
                >중구</a
              >
              <a id="b_map3_3" class="b_map3_3" href="#" onclick="subadd21()"
                >서구</a
              >
              <a id="b_map3_4" class="b_map3_4" href="#" onclick="subadd02()"
                >동구</a
              >
              <a id="b_map3_5" class="b_map3_5" href="#" onclick="subadd02()"
                >남구</a
              >
              <a id="b_map3_6" class="b_map3_6" href="#" onclick="subadd20()"
                >연수구</a
              >
              <a id="b_map3_7" class="b_map3_7" href="#" onclick="subadd02()"
                >계양구</a
              >
              <a id="b_map3_8" class="b_map3_8" href="#" onclick="subadd02()"
                >부평구</a
              >
              <a id="b_map3_9" class="b_map3_9" href="#" onclick="subadd19()"
                >남동구</a
              >
              <a id="b_map3_10" class="b_map3_10" href="#" onclick="subadd02()"
                >옹진군</a
              >
            </div>
          </div>
          <!--// 세부지도 끝 -->
        </div>
        <!--// Map 끝 -->
        <!-- 검색결과영역 시작 -->
        <div class="wrap_tb">
          <div class="tb_tit">
            <img
              src="${cp}/images/tb_tit.gif"
              width="329"
              height="22"
              alt="검색하신 지역에서 가까운 모나미 패밀리샵"
            />
          </div>
          <table
            id="addressTable"
            name="addressTable"
            cellpadding="0"
            cellspacing="0"
            border="0"
            class="tb_result"
          >
            <colgroup>
              <col width="60%" />
              <col width="30%" />
              <col width="10%" />
            </colgroup>
            <thead>
              <tr>
                <th width="60%" class="first">패밀리샵</th>
                <th width="30%">매장번호</th>
                <th width="10%">지도보기</th>
              </tr>
              <!-- 서울 시작  -->
              <tr class="seoul nowon" style="display: none">
                <td class="first">
                  <span class="shop_tit">노원문구 제 2매장</span
                  ><span class="shop_adr"
                    >서울 노원구 동일로 1402 (상계동)</span
                  >
                </td>
                <td>02-932-9998</td>
                <td>
                  <a
                    href="https://map.kakao.com/?urlX=513477&urlY=1153918&urlLevel=3&itemId=27278075&q=%EB%85%B8%EC%9B%90%EB%AC%B8%EA%B3%A0%20%EC%A0%9C2%EB%A7%A4%EC%9E%A5&srcid=27278075&map_type=TYPE_MAP"
                    style="color: rgb(54, 54, 54)"
                    onclick="window.open(this.href, '_blank', 'width=615, height=615'); return false;"
                    ><img
                      src="${cp}/images/btn_map.gif"
                      width="20"
                      height="19"
                      alt="지도보기"
                  /></a>
                </td>
              </tr>
              <tr class="seoul nowon" style="display: none">
                <td class="first">
                  <span class="shop_tit">노원문구 제 5매장</span
                  ><span class="shop_adr">서울 노원구 상계로 59 (상계동)</span>
                </td>
                <td>02-932-3822</td>
                <td>
                  <a
                    href="https://map.kakao.com/?urlX=513583&urlY=1154577&urlLevel=3&itemId=11443697&q=%EB%85%B8%EC%9B%90%EB%AC%B8%EA%B3%A0%20%EC%A0%9C5%EB%A7%A4%EC%9E%A5&srcid=11443697&map_type=TYPE_MAP"
                    style="color: rgb(54, 54, 54)"
                    onclick="window.open(this.href, '_blank', 'width=615, height=615'); return false;"
                    ><img
                      src="${cp}/images/btn_map.gif"
                      width="20"
                      height="19"
                      alt="지도보기"
                  /></a>
                </td>
              </tr>
              <tr class="seoul gangdong" style="display: none">
                <td class="first">
                  <span class="shop_tit">드림디포 강동점</span
                  ><span class="shop_adr"
                    >서울 강동구 양재대로 1343 지하1층</span
                  >
                </td>
                <td>02-428-2020</td>
                <td>
                  <a
                    href="https://map.kakao.com/?urlX=529619&urlY=1117704&urlLevel=3&itemId=698640305&q=%EB%93%9C%EB%A6%BC%EB%94%94%ED%8F%AC%20%EB%91%94%EC%B4%8C%EC%97%AD%EC%A0%90&srcid=698640305&map_type=TYPE_MAP"
                    style="color: rgb(54, 54, 54)"
                    onclick="window.open(this.href, '_blank', 'width=615, height=615'); return false;"
                    ><img
                      src="${cp}/images/btn_map.gif"
                      width="20"
                      height="19"
                      alt="지도보기"
                  /></a>
                </td>
              </tr>
              <tr class="seoul guro" style="display: none">
                <td class="first">
                  <span class="shop_tit">드림디포 서서울점</span
                  ><span class="shop_adr"
                    >서울 구로구 경인로 393-7 2동 1층</span
                  >
                </td>
                <td>02-2614-1129</td>
                <td>
                  <a
                    href="https://map.kakao.com/?q=%EB%93%9C%EB%A6%BC%EB%94%94%ED%8F%AC%20%EC%84%9C%EC%84%9C%EC%9A%B8%EC%A0%90"
                    style="color: rgb(54, 54, 54)"
                    onclick="window.open(this.href, '_blank', 'width=615, height=615'); return false;"
                    ><img
                      src="${cp}/images/btn_map.gif"
                      width="20"
                      height="19"
                      alt="지도보기"
                  /></a>
                </td>
              </tr>
              <tr class="seoul gangnam" style="display: none">
                <td class="first">
                  <span class="shop_tit">모닝글로리 강남역점</span
                  ><span class="shop_adr"
                    >서울 강남구 강남대로84길 23 (역삼동)</span
                  >
                </td>
                <td>02-539-9976</td>
                <td>
                  <a
                    href="https://map.kakao.com/?urlX=506453&urlY=1110268&urlLevel=3&itemId=13047101&q=%EB%AA%A8%EB%8B%9D%EA%B8%80%EB%A1%9C%EB%A6%AC%20%EA%B0%95%EB%82%A8%EC%97%AD%EC%A0%90&srcid=13047101&map_type=TYPE_MAP"
                    style="color: rgb(54, 54, 54)"
                    onclick="window.open(this.href, '_blank', 'width=615, height=615'); return false;"
                    ><img
                      src="${cp}/images/btn_map.gif"
                      width="20"
                      height="19"
                      alt="지도보기"
                  /></a>
                </td>
              </tr>
              <tr class="seoul seocho" style="display: none">
                <td class="first">
                  <span class="shop_tit">모닝글로리 교대점</span
                  ><span class="shop_adr"
                    >서울 서초구 서초대로 305 재영빌딩</span
                  >
                </td>
                <td>02-595-7477</td>
                <td>
                  <a
                    href="https://map.kakao.com/?q=%EC%84%9C%EC%9A%B8%20%EC%84%9C%EC%B4%88%EA%B5%AC%20%EC%84%9C%EC%B4%884%EB%8F%99%201692-3%20%EC%9E%AC%EC%98%81%EB%B9%8C%EB%94%A91%EC%B8%B5"
                    style="color: rgb(54, 54, 54)"
                    onclick="window.open(this.href, '_blank', 'width=615, height=615'); return false;"
                    ><img
                      src="${cp}/images/btn_map.gif"
                      width="20"
                      height="19"
                      alt="지도보기"
                  /></a>
                </td>
              </tr>
              <tr class="seoul songpa" style="display: none">
                <td class="first">
                  <span class="shop_tit">아이비스 가락점</span
                  ><span class="shop_adr">서울 송파구 오금로 400</span>
                </td>
                <td>02-409-3711</td>
                <td>
                  <a
                    href="https://map.kakao.com/link/search/아이비스문구센터가락점"
                    style="color: rgb(54, 54, 54)"
                    onclick="window.open(this.href, '_blank', 'width=615, height=615'); return false;"
                    ><img
                      src="${cp}/images/btn_map.gif"
                      width="20"
                      height="19"
                      alt="지도보기"
                  /></a>
                </td>
              </tr>
              <tr class="seoul gangnam" style="display: none">
                <td class="first">
                  <span class="shop_tit">알파 강남역삼역점</span
                  ><span class="shop_adr">서울 강남구 테헤란로 146</span>
                </td>
                <td>02-538-0091</td>
                <td>
                  <a
                    href="https://map.kakao.com/link/search/알파강남역삼역점"
                    style="color: rgb(54, 54, 54)"
                    onclick="window.open(this.href, '_blank', 'width=615, height=615'); return false;"
                    ><img
                      src="${cp}/images/btn_map.gif"
                      width="20"
                      height="19"
                      alt="지도보기"
                  /></a>
                </td>
              </tr>
              <tr class="seoul jongro" style="display: none">
                <td class="first">
                  <span class="shop_tit">알파 낙원점</span
                  ><span class="shop_adr">서울 종로구 돈화문로11길 38</span>
                </td>
                <td>02-765-2137</td>
                <td>
                  <a
                    href="https://map.kakao.com/link/search/알파낙원점"
                    style="color: rgb(54, 54, 54)"
                    onclick="window.open(this.href, '_blank', 'width=615, height=615'); return false;"
                    ><img
                      src="${cp}/images/btn_map.gif"
                      width="20"
                      height="19"
                      alt="지도보기"
                  /></a>
                </td>
              </tr>
              <tr class="seoul seocho" style="display: none">
                <td class="first">
                  <span class="shop_tit">알파 서초방배점</span
                  ><span class="shop_adr"
                    >서울 서초구 효령로 34길 4(방배동) 효령빌딩</span
                  >
                </td>
                <td>02-584-4412</td>
                <td>
                  <a
                    href="https://map.kakao.com/link/search/오피스알파서초방배점"
                    style="color: rgb(54, 54, 54)"
                    onclick="window.open(this.href, '_blank', 'width=615, height=615'); return false;"
                    ><img
                      src="${cp}/images/btn_map.gif"
                      width="20"
                      height="19"
                      alt="지도보기"
                  /></a>
                </td>
              </tr>
              <tr class="seoul dongdaemoon" style="display: none">
                <td class="first">
                  <span class="shop_tit">알파 장안점</span
                  ><span class="shop_adr">서울 동대문구 천호대로 425</span>
                </td>
                <td>02-2243-0096</td>
                <td>
                  <a
                    href="https://map.kakao.com/?urlX=514673&urlY=1128335&urlLevel=3&itemId=11719013&q=%EC%95%8C%ED%8C%8C%20%EC%9E%A5%EC%95%88%EC%A0%90&srcid=11719013&map_type=TYPE_MAP"
                    style="color: rgb(54, 54, 54)"
                    onclick="window.open(this.href, '_blank', 'width=615, height=615'); return false;"
                    ><img
                      src="${cp}/images/btn_map.gif"
                      width="20"
                      height="19"
                      alt="지도보기"
                  /></a>
                </td>
              </tr>
              <tr class="seoul mapo" style="display: none">
                <td class="first">
                  <span class="shop_tit">알파 합정점</span
                  ><span class="shop_adr">서울 마포구 양화로 59 지하1층</span>
                </td>
                <td>02-337-6730</td>
                <td>
                  <a
                    href="https://map.kakao.com/link/search/알파합정점"
                    style="color: rgb(54, 54, 54)"
                    onclick="window.open(this.href, '_blank', 'width=615, height=615'); return false;"
                    ><img
                      src="${cp}/images/btn_map.gif"
                      width="20"
                      height="19"
                      alt="지도보기"
                  /></a>
                </td>
              </tr>
              <tr class="seoul eunpyeong" style="display: none">
                <td class="first">
                  <span class="shop_tit">연신내문고</span
                  ><span class="shop_adr">서울 은평구 통일로 861</span>
                </td>
                <td>02-363-7770</td>
                <td>
                  <a
                    href="http://kko.to/CsgDZ98fT"
                    style="color: rgb(54, 54, 54)"
                    onclick="window.open(this.href, '_blank', 'width=615, height=615'); return false;"
                    ><img
                      src="${cp}/images/btn_map.gif"
                      width="20"
                      height="19"
                      alt="지도보기"
                  /></a>
                </td>
              </tr>
              <tr class="seoul seodaemun" style="display: none">
                <td class="first">
                  <span class="shop_tit">펜피아 신촌점</span
                  ><span class="shop_adr"
                    >서울 서대문구 신촌로 109 신촌 르메이에르타운5</span
                  >
                </td>
                <td>02-363-7770</td>
                <td>
                  <a
                    href="http://kko.to/rsV2VhQ49"
                    style="color: rgb(54, 54, 54)"
                    onclick="window.open(this.href, '_blank', 'width=615, height=615'); return false;"
                    ><img
                      src="${cp}/images/btn_map.gif"
                      width="20"
                      height="19"
                      alt="지도보기"
                  /></a>
                </td>
              </tr>
              <tr class="seoul seongdong" style="display: none">
                <td class="first">
                  <span class="shop_tit">하이베스트문구 성동점</span
                  ><span class="shop_adr"
                    >서울 성동구 광나루로6길 35 성수동 우림 이비즈센터</span
                  >
                </td>
                <td>02-2024-2666</td>
                <td>
                  <a
                    href="http://kko.to/Una6wpmX9"
                    style="color: rgb(54, 54, 54)"
                    onclick="window.open(this.href, '_blank', 'width=615, height=615'); return false;"
                    ><img
                      src="${cp}/images/btn_map.gif"
                      width="20"
                      height="19"
                      alt="지도보기"
                  /></a>
                </td>
              </tr>
              <!-- 서울 끝 -->
              <!-- 경기도 시작 -->
              <tr class="gyeonggi yongin" style="display: none">
                <td class="first">
                  <span class="shop_tit">드림디포 보정점</span
                  ><span class="shop_adr">경기 용인시 기흥구 보정로 115</span>
                </td>
                <td>031-889-1989</td>
                <td>
                  <a
                    href="http://kko.to/EXnnZr540"
                    style="color: rgb(54, 54, 54)"
                    onclick="window.open(this.href, '_blank', 'width=615, height=615'); return false;"
                    ><img
                      src="${cp}/images/btn_map.gif"
                      width="20"
                      height="19"
                      alt="지도보기"
                  /></a>
                </td>
              </tr>
              <tr class="gyeonggi gwacheon" style="display: none">
                <td class="first">
                  <span class="shop_tit">링코 과천점</span
                  ><span class="shop_adr"
                    >경기 과천시 별양로 184-1(부림동) 2층</span
                  >
                </td>
                <td>02-502-7771</td>
                <td>
                  <a
                    href="http://kko.to/VpSZZr8fH"
                    style="color: rgb(54, 54, 54)"
                    onclick="window.open(this.href, '_blank', 'width=615, height=615'); return false;"
                    ><img
                      src="${cp}/images/btn_map.gif"
                      width="20"
                      height="19"
                      alt="지도보기"
                  /></a>
                </td>
              </tr>
              <tr class="gyeonggi seongnam" style="display: none">
                <td class="first">
                  <span class="shop_tit">알파 불정점(에이와이 컴퍼니)</span
                  ><span class="shop_adr"
                    >경기 성남시 분당구 불정로 381(서현동) 지하 1층</span
                  >
                </td>
                <td>031-702-2266</td>
                <td>
                  <a
                    href="http://kko.to/b8lPSr8fj"
                    style="color: rgb(54, 54, 54)"
                    onclick="window.open(this.href, '_blank', 'width=615, height=615'); return false;"
                    ><img
                      src="${cp}/images/btn_map.gif"
                      width="20"
                      height="19"
                      alt="지도보기"
                  /></a>
                </td>
              </tr>
              <tr class="gyeonggi suwon" style="display: none">
                <td class="first">
                  <span class="shop_tit">알파 수원망포역점</span
                  ><span class="shop_adr"
                    >경기 수원시 영통구 영통로 135 1,2층</span
                  >
                </td>
                <td>031-278-0577</td>
                <td>
                  <a
                    href="http://kko.to/BFRJvYKjg"
                    style="color: rgb(54, 54, 54)"
                    onclick="window.open(this.href, '_blank', 'width=615, height=615'); return false;"
                    ><img
                      src="${cp}/images/btn_map.gif"
                      width="20"
                      height="19"
                      alt="지도보기"
                  /></a>
                </td>
              </tr>
              <tr class="gyeonggi pyeongtaek" style="display: none">
                <td class="first">
                  <span class="shop_tit">알파 안중점</span
                  ><span class="shop_adr">경기 평택시 안중읍 안현로 424</span>
                </td>
                <td>031-684-9274</td>
                <td>
                  <a
                    href="http://kko.to/ZpUjOwId1"
                    style="color: rgb(54, 54, 54)"
                    onclick="window.open(this.href, '_blank', 'width=615, height=615'); return false;"
                    ><img
                      src="${cp}/images/btn_map.gif"
                      width="20"
                      height="19"
                      alt="지도보기"
                  /></a>
                </td>
              </tr>
              <tr class="gyeonggi hwaseong" style="display: none">
                <td class="first">
                  <span class="shop_tit">알파 정남점</span
                  ><span class="shop_adr">경기 화성시 향남읍 발안로 440-3</span>
                </td>
                <td>031-352-8721</td>
                <td>
                  <a
                    href="http://kko.to/XR6ybQU0e"
                    style="color: rgb(54, 54, 54)"
                    onclick="window.open(this.href, '_blank', 'width=615, height=615'); return false;"
                    ><img
                      src="${cp}/images/btn_map.gif"
                      width="20"
                      height="19"
                      alt="지도보기"
                  /></a>
                </td>
              </tr>
              <tr class="gyeonggi" style="display: none">
                <td class="first">
                  <span class="shop_tit">알파 주엽역점</span
                  ><span class="shop_adr"
                    >경기 일산서구 중앙로 1455 대우시티프라자 지하상가
                    B133</span
                  >
                </td>
                <td>031-913-8303</td>
                <td>
                  <a
                    href="http://kko.to/RutlS98f0"
                    style="color: rgb(54, 54, 54)"
                    onclick="window.open(this.href, '_blank', 'width=615, height=615'); return false;"
                    ><img
                      src="${cp}/images/btn_map.gif"
                      width="20"
                      height="19"
                      alt="지도보기"
                  /></a>
                </td>
              </tr>
              <!-- 경기도 끝 -->
              <!-- 인천 시작 -->
              <tr class="incheon namdong" style="display: none">
                <td class="first">
                  <span class="shop_tit">드림디포 구월점</span
                  ><span class="shop_adr"
                    >인천 남동구 용천로 68 (구월동) 지하 1층</span
                  >
                </td>
                <td>032-472-0009</td>
                <td>
                  <a
                    href="http://kko.to/YkXp0idsS"
                    style="color: rgb(54, 54, 54)"
                    onclick="window.open(this.href, '_blank', 'width=615, height=615'); return false;"
                    ><img
                      src="${cp}/images/btn_map.gif"
                      width="20"
                      height="19"
                      alt="지도보기"
                  /></a>
                </td>
              </tr>
              <tr class="incheon yeonsu" style="display: none">
                <td class="first">
                  <span class="shop_tit">드림디포 송도신도시점</span
                  ><span class="shop_adr"
                    >인천 연수구 해돋이로 106 (송도동) 제일은행 1층</span
                  >
                </td>
                <td>032-715-5070</td>
                <td>
                  <a
                    href="http://kko.to/z0PNS95fT"
                    style="color: rgb(54, 54, 54)"
                    onclick="window.open(this.href, '_blank', 'width=615, height=615'); return false;"
                    ><img
                      src="${cp}/images/btn_map.gif"
                      width="20"
                      height="19"
                      alt="지도보기"
                  /></a>
                </td>
              </tr>
              <tr class="incheon seogu" style="display: none">
                <td class="first">
                  <span class="shop_tit">드림디포 청라점</span
                  ><span class="shop_adr"
                    >인천 서구 청라라임로 85 (연희동, 청라린스트라우스) 지하
                    1층</span
                  >
                </td>
                <td>032-569-7950</td>
                <td>
                  <a
                    href="http://kko.to/DdbKSr84T"
                    style="color: rgb(54, 54, 54)"
                    onclick="window.open(this.href, '_blank', 'width=615, height=615'); return false;"
                    ><img
                      src="${cp}/images/btn_map.gif"
                      width="20"
                      height="19"
                      alt="지도보기"
                  /></a>
                </td>
              </tr>
              <tr class="incheon yeonsu" style="display: none">
                <td class="first">
                  <span class="shop_tit">알파 송도점</span
                  ><span class="shop_adr"
                    >인천 연수구 컨벤시아대로 81 드림시티 130호~131호</span
                  >
                </td>
                <td>032-858-1512</td>
                <td>
                  <a
                    href="http://kko.to/Vy0AZ954H"
                    style="color: rgb(54, 54, 54)"
                    onclick="window.open(this.href, '_blank', 'width=615, height=615'); return false;"
                    ><img
                      src="${cp}/images/btn_map.gif"
                      width="20"
                      height="19"
                      alt="지도보기"
                  /></a>
                </td>
              </tr>
              <!-- 인천 끝  -->
              <!-- 검색결과가 없을때 시작 -->
              <tr class="nosearch" style="display: none">
                <td colspan="3">검색하신 결과가 없습니다.</td>
                <td></td>
                <td></td>
              </tr>
              <!-- 검색결과가 없을때 끝 -->
            </thead>
            <!-- 지역선택을 하지 않았을 때 -->
            <tbody>
              <tr id="msg2">
                <td colspan="3" class="msg">원하시는 지역을 선택해 주세요.</td>
              </tr>
            </tbody>
          </table>
        </div>
        <!--// 검색결과영역 끝 -->
      </div>
    </div>
  </body>
</html>
