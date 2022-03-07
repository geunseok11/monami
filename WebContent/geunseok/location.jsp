<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib uri="http://java.sun.com/jsp/jstl/core"
prefix="c"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>MONAMI</title>
    <link
      rel="shortcut icon"
      href="${cp}/images/favicon.ico"
      type="image/x-icon"
    />
    <link rel="stylesheet" href="${cp}/css/style_another.css" />
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.js"></script>
    <script type="text/javascript" src="${cp}/js/common.js"></script>
    <script type="text/javascript" src="${cp}/js/prodiqr.js"></script>
  </head>
  <body>
    <div id="wrap">
      <%@ include file="/doyoon/header.jsp"%>
      <!-- 헤더 끝 SECTION-->
      <!-- 바디 상단 이미지 시작 SECTION-->
      <div id="visaul">메인화면 상단에 이미지 들어갈 곳</div>
      <!-- 바디 상단 이미지 끝  SECTION-->
      <!-- 본문 시작  SECTION-->
      <div id="container">
        <div id="contents">
          <div class="pagetitle pn1">
            <h2>모나미소개</h2>
            <p>언제 어디서나 모나미는 당신 곁에 있습니다.</p>
          </div>
          <div class="pagetabs">
            <ul class="m1">
              <li><a href="/about/ceo.html">CEO 메시지</a></li>
              <li><a href="/about/company.html">회사정보</a></li>
              <li><a href="/about/history.html">회사연혁</a></li>
              <li><a href="./investment.html">투자정보</a></li>
              <li><a href="./ci.html">CI</a></li>
              <li>
                <a href="http://recruit.monami.co.kr/" target="_blank"
                  >채용정보</a
                >
              </li>
              <li class="on"><a href="./location.html">찾아오시는 길</a></li>
            </ul>
          </div>

          <h3 class="title1">MONAMI <span>CONTACT</span></h3>
          <div class="location">
            <div class="mapinfo">
              <div
                class="map"
                id="map"
                style="
                  position: relative;
                  overflow: hidden;
                  background: url('http://t1.daumcdn.net/mapjsapi/images/2x/bg_tile.png');
                "
              >
                <script
                  type="text/javascript"
                  src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d32e75f90907e855439232949f95a9f8"
                ></script>
                <script
                  charset="UTF-8"
                  src="http://t1.daumcdn.net/mapjsapi/js/main/4.4.3/kakao.js"
                ></script>
                <script>
                  var mapContainer = document.getElementById("map"), // 지도를 표시할 div
                    mapOption = {
                      center: new daum.maps.LatLng(37.335565, 127.100658), // 지도의 중심좌표
                      level: 3, // 지도의 확대 레벨
                    };

                  var map = new daum.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

                  // 마커가 표시될 위치입니다
                  var markerPosition = new daum.maps.LatLng(
                    37.335565,
                    127.100658
                  );

                  // 마커를 생성합니다
                  var marker = new daum.maps.Marker({
                    position: markerPosition,
                  });

                  // 마커가 지도 위에 표시되도록 설정합니다
                  marker.setMap(map);

                  // 아래 코드는 지도 위의 마커를 제거하는 코드입니다
                  // marker.setMap(null);

                  daum.maps.event.addListener(marker, "click", function () {
                    // 마커 위에 인포윈도우를 표시합니다
                    window.open(
                      "http://map.daum.net/?q=%EA%B2%BD%EA%B8%B0%20%EC%9A%A9%EC%9D%B8%EC%8B%9C%20%EC%88%98%EC%A7%80%EA%B5%AC%20%EB%8F%99%EC%B2%9C%EB%8F%99%20854-2&map_type=DEFAULT&map_hybrid=false"
                    );
                  });
                </script>
                <div
                  style="
                    position: absolute;
                    left: 0px;
                    top: 0px;
                    width: 100%;
                    height: 100%;
                    touch-action: none;
                    cursor: url('http://t1.daumcdn.net/mapjsapi/images/2x/cursor/openhand.cur.ico')
                        7 5,
                      url('http://t1.daumcdn.net/mapjsapi/images/2x/cursor/openhand.cur.ico'),
                      default;
                  "
                >
                  <div style="position: absolute">
                    <div
                      style="
                        position: absolute;
                        z-index: 1;
                        left: 0px;
                        top: 0px;
                      "
                    >
                      <img
                        src="http://map3.daumcdn.net/map_2d_hd/2111ydg/L5/473/231.png"
                        alt=""
                        draggable="false"
                        style="
                          position: absolute;
                          user-select: none;
                          -webkit-user-drag: none;
                          min-width: 0px;
                          min-height: 0px;
                          max-width: none;
                          max-height: none;
                          left: -244px;
                          top: 462px;
                          opacity: 1;
                          transition-property: opacity;
                          transition-duration: 0.2s;
                          transition-timing-function: ease;
                          width: 256px;
                          height: 256px;
                        "
                      /><img
                        src="http://map0.daumcdn.net/map_2d_hd/2111ydg/L5/473/232.png"
                        alt=""
                        draggable="false"
                        style="
                          position: absolute;
                          user-select: none;
                          -webkit-user-drag: none;
                          min-width: 0px;
                          min-height: 0px;
                          max-width: none;
                          max-height: none;
                          left: 12px;
                          top: 462px;
                          opacity: 1;
                          transition-property: opacity;
                          transition-duration: 0.2s;
                          transition-timing-function: ease;
                          width: 256px;
                          height: 256px;
                        "
                      /><img
                        src="http://map1.daumcdn.net/map_2d_hd/2111ydg/L5/473/233.png"
                        alt=""
                        draggable="false"
                        style="
                          position: absolute;
                          user-select: none;
                          -webkit-user-drag: none;
                          min-width: 0px;
                          min-height: 0px;
                          max-width: none;
                          max-height: none;
                          left: 268px;
                          top: 462px;
                          opacity: 1;
                          transition-property: opacity;
                          transition-duration: 0.2s;
                          transition-timing-function: ease;
                          width: 256px;
                          height: 256px;
                        "
                      /><img
                        src="http://map2.daumcdn.net/map_2d_hd/2111ydg/L5/473/234.png"
                        alt=""
                        draggable="false"
                        style="
                          position: absolute;
                          user-select: none;
                          -webkit-user-drag: none;
                          min-width: 0px;
                          min-height: 0px;
                          max-width: none;
                          max-height: none;
                          left: 524px;
                          top: 462px;
                          opacity: 1;
                          transition-property: opacity;
                          transition-duration: 0.2s;
                          transition-timing-function: ease;
                          width: 256px;
                          height: 256px;
                        "
                      /><img
                        src="http://map3.daumcdn.net/map_2d_hd/2111ydg/L5/474/231.png"
                        alt=""
                        draggable="false"
                        style="
                          position: absolute;
                          user-select: none;
                          -webkit-user-drag: none;
                          min-width: 0px;
                          min-height: 0px;
                          max-width: none;
                          max-height: none;
                          left: -244px;
                          top: 206px;
                          opacity: 1;
                          transition-property: opacity;
                          transition-duration: 0.2s;
                          transition-timing-function: ease;
                          width: 256px;
                          height: 256px;
                        "
                      /><img
                        src="http://map0.daumcdn.net/map_2d_hd/2111ydg/L5/474/232.png"
                        alt=""
                        draggable="false"
                        style="
                          position: absolute;
                          user-select: none;
                          -webkit-user-drag: none;
                          min-width: 0px;
                          min-height: 0px;
                          max-width: none;
                          max-height: none;
                          left: 12px;
                          top: 206px;
                          opacity: 1;
                          transition-property: opacity;
                          transition-duration: 0.2s;
                          transition-timing-function: ease;
                          width: 256px;
                          height: 256px;
                        "
                      /><img
                        src="http://map1.daumcdn.net/map_2d_hd/2111ydg/L5/474/233.png"
                        alt=""
                        draggable="false"
                        style="
                          position: absolute;
                          user-select: none;
                          -webkit-user-drag: none;
                          min-width: 0px;
                          min-height: 0px;
                          max-width: none;
                          max-height: none;
                          left: 268px;
                          top: 206px;
                          opacity: 1;
                          transition-property: opacity;
                          transition-duration: 0.2s;
                          transition-timing-function: ease;
                          width: 256px;
                          height: 256px;
                        "
                      /><img
                        src="http://map2.daumcdn.net/map_2d_hd/2111ydg/L5/474/234.png"
                        alt=""
                        draggable="false"
                        style="
                          position: absolute;
                          user-select: none;
                          -webkit-user-drag: none;
                          min-width: 0px;
                          min-height: 0px;
                          max-width: none;
                          max-height: none;
                          left: 524px;
                          top: 206px;
                          opacity: 1;
                          transition-property: opacity;
                          transition-duration: 0.2s;
                          transition-timing-function: ease;
                          width: 256px;
                          height: 256px;
                        "
                      /><img
                        src="http://map3.daumcdn.net/map_2d_hd/2111ydg/L5/475/231.png"
                        alt=""
                        draggable="false"
                        style="
                          position: absolute;
                          user-select: none;
                          -webkit-user-drag: none;
                          min-width: 0px;
                          min-height: 0px;
                          max-width: none;
                          max-height: none;
                          left: -244px;
                          top: -50px;
                          opacity: 1;
                          transition-property: opacity;
                          transition-duration: 0.2s;
                          transition-timing-function: ease;
                          width: 256px;
                          height: 256px;
                        "
                      /><img
                        src="http://map0.daumcdn.net/map_2d_hd/2111ydg/L5/475/232.png"
                        alt=""
                        draggable="false"
                        style="
                          position: absolute;
                          user-select: none;
                          -webkit-user-drag: none;
                          min-width: 0px;
                          min-height: 0px;
                          max-width: none;
                          max-height: none;
                          left: 12px;
                          top: -50px;
                          opacity: 1;
                          transition-property: opacity;
                          transition-duration: 0.2s;
                          transition-timing-function: ease;
                          width: 256px;
                          height: 256px;
                        "
                      /><img
                        src="http://map1.daumcdn.net/map_2d_hd/2111ydg/L5/475/233.png"
                        alt=""
                        draggable="false"
                        style="
                          position: absolute;
                          user-select: none;
                          -webkit-user-drag: none;
                          min-width: 0px;
                          min-height: 0px;
                          max-width: none;
                          max-height: none;
                          left: 268px;
                          top: -50px;
                          opacity: 1;
                          transition-property: opacity;
                          transition-duration: 0.2s;
                          transition-timing-function: ease;
                          width: 256px;
                          height: 256px;
                        "
                      /><img
                        src="http://map2.daumcdn.net/map_2d_hd/2111ydg/L5/475/234.png"
                        alt=""
                        draggable="false"
                        style="
                          position: absolute;
                          user-select: none;
                          -webkit-user-drag: none;
                          min-width: 0px;
                          min-height: 0px;
                          max-width: none;
                          max-height: none;
                          left: 524px;
                          top: -50px;
                          opacity: 1;
                          transition-property: opacity;
                          transition-duration: 0.2s;
                          transition-timing-function: ease;
                          width: 256px;
                          height: 256px;
                        "
                      /><img
                        src="http://map3.daumcdn.net/map_2d_hd/2111ydg/L5/476/231.png"
                        alt=""
                        draggable="false"
                        style="
                          position: absolute;
                          user-select: none;
                          -webkit-user-drag: none;
                          min-width: 0px;
                          min-height: 0px;
                          max-width: none;
                          max-height: none;
                          left: -244px;
                          top: -306px;
                          opacity: 1;
                          transition-property: opacity;
                          transition-duration: 0.2s;
                          transition-timing-function: ease;
                          width: 256px;
                          height: 256px;
                        "
                      /><img
                        src="http://map0.daumcdn.net/map_2d_hd/2111ydg/L5/476/232.png"
                        alt=""
                        draggable="false"
                        style="
                          position: absolute;
                          user-select: none;
                          -webkit-user-drag: none;
                          min-width: 0px;
                          min-height: 0px;
                          max-width: none;
                          max-height: none;
                          left: 12px;
                          top: -306px;
                          opacity: 1;
                          transition-property: opacity;
                          transition-duration: 0.2s;
                          transition-timing-function: ease;
                          width: 256px;
                          height: 256px;
                        "
                      /><img
                        src="http://map1.daumcdn.net/map_2d_hd/2111ydg/L5/476/233.png"
                        alt=""
                        draggable="false"
                        style="
                          position: absolute;
                          user-select: none;
                          -webkit-user-drag: none;
                          min-width: 0px;
                          min-height: 0px;
                          max-width: none;
                          max-height: none;
                          left: 268px;
                          top: -306px;
                          opacity: 1;
                          transition-property: opacity;
                          transition-duration: 0.2s;
                          transition-timing-function: ease;
                          width: 256px;
                          height: 256px;
                        "
                      /><img
                        src="http://map2.daumcdn.net/map_2d_hd/2111ydg/L5/476/234.png"
                        alt=""
                        draggable="false"
                        style="
                          position: absolute;
                          user-select: none;
                          -webkit-user-drag: none;
                          min-width: 0px;
                          min-height: 0px;
                          max-width: none;
                          max-height: none;
                          left: 524px;
                          top: -306px;
                          opacity: 1;
                          transition-property: opacity;
                          transition-duration: 0.2s;
                          transition-timing-function: ease;
                          width: 256px;
                          height: 256px;
                        "
                      />
                    </div>
                    <div
                      style="
                        position: absolute;
                        z-index: 0;
                        left: 0px;
                        top: 0px;
                      "
                    >
                      <img
                        src="http://map3.daumcdn.net/map_2d_hd/2111ydg/L3/1898/931.png"
                        alt=""
                        draggable="false"
                        style="
                          position: absolute;
                          user-select: none;
                          -webkit-user-drag: none;
                          min-width: 0px;
                          min-height: 0px;
                          max-width: none;
                          max-height: none;
                          left: 203.25px;
                          top: 270.5px;
                          opacity: 1;
                          transition-property: opacity;
                          transition-duration: 0.2s;
                          transition-timing-function: ease;
                          width: 64px;
                          height: 64px;
                        "
                      /><img
                        src="http://map0.daumcdn.net/map_2d_hd/2111ydg/L3/1898/932.png"
                        alt=""
                        draggable="false"
                        style="
                          position: absolute;
                          user-select: none;
                          -webkit-user-drag: none;
                          min-width: 0px;
                          min-height: 0px;
                          max-width: none;
                          max-height: none;
                          left: 267.25px;
                          top: 270.5px;
                          opacity: 1;
                          transition-property: opacity;
                          transition-duration: 0.2s;
                          transition-timing-function: ease;
                          width: 64px;
                          height: 64px;
                        "
                      /><img
                        src="http://map1.daumcdn.net/map_2d_hd/2111ydg/L3/1898/933.png"
                        alt=""
                        draggable="false"
                        style="
                          position: absolute;
                          user-select: none;
                          -webkit-user-drag: none;
                          min-width: 0px;
                          min-height: 0px;
                          max-width: none;
                          max-height: none;
                          left: 331.25px;
                          top: 270.5px;
                          opacity: 1;
                          transition-property: opacity;
                          transition-duration: 0.2s;
                          transition-timing-function: ease;
                          width: 64px;
                          height: 64px;
                        "
                      /><img
                        src="http://map2.daumcdn.net/map_2d_hd/2111ydg/L3/1898/934.png"
                        alt=""
                        draggable="false"
                        style="
                          position: absolute;
                          user-select: none;
                          -webkit-user-drag: none;
                          min-width: 0px;
                          min-height: 0px;
                          max-width: none;
                          max-height: none;
                          left: 395.25px;
                          top: 270.5px;
                          opacity: 1;
                          transition-property: opacity;
                          transition-duration: 0.2s;
                          transition-timing-function: ease;
                          width: 64px;
                          height: 64px;
                        "
                      /><img
                        src="http://map3.daumcdn.net/map_2d_hd/2111ydg/L3/1899/931.png"
                        alt=""
                        draggable="false"
                        style="
                          position: absolute;
                          user-select: none;
                          -webkit-user-drag: none;
                          min-width: 0px;
                          min-height: 0px;
                          max-width: none;
                          max-height: none;
                          left: 203.25px;
                          top: 206.5px;
                          opacity: 1;
                          transition-property: opacity;
                          transition-duration: 0.2s;
                          transition-timing-function: ease;
                          width: 64px;
                          height: 64px;
                        "
                      /><img
                        src="http://map0.daumcdn.net/map_2d_hd/2111ydg/L3/1899/932.png"
                        alt=""
                        draggable="false"
                        style="
                          position: absolute;
                          user-select: none;
                          -webkit-user-drag: none;
                          min-width: 0px;
                          min-height: 0px;
                          max-width: none;
                          max-height: none;
                          left: 267.25px;
                          top: 206.5px;
                          opacity: 1;
                          transition-property: opacity;
                          transition-duration: 0.2s;
                          transition-timing-function: ease;
                          width: 64px;
                          height: 64px;
                        "
                      /><img
                        src="http://map1.daumcdn.net/map_2d_hd/2111ydg/L3/1899/933.png"
                        alt=""
                        draggable="false"
                        style="
                          position: absolute;
                          user-select: none;
                          -webkit-user-drag: none;
                          min-width: 0px;
                          min-height: 0px;
                          max-width: none;
                          max-height: none;
                          left: 331.25px;
                          top: 206.5px;
                          opacity: 1;
                          transition-property: opacity;
                          transition-duration: 0.2s;
                          transition-timing-function: ease;
                          width: 64px;
                          height: 64px;
                        "
                      /><img
                        src="http://map2.daumcdn.net/map_2d_hd/2111ydg/L3/1899/934.png"
                        alt=""
                        draggable="false"
                        style="
                          position: absolute;
                          user-select: none;
                          -webkit-user-drag: none;
                          min-width: 0px;
                          min-height: 0px;
                          max-width: none;
                          max-height: none;
                          left: 395.25px;
                          top: 206.5px;
                          opacity: 1;
                          transition-property: opacity;
                          transition-duration: 0.2s;
                          transition-timing-function: ease;
                          width: 64px;
                          height: 64px;
                        "
                      /><img
                        src="http://map3.daumcdn.net/map_2d_hd/2111ydg/L3/1900/931.png"
                        alt=""
                        draggable="false"
                        style="
                          position: absolute;
                          user-select: none;
                          -webkit-user-drag: none;
                          min-width: 0px;
                          min-height: 0px;
                          max-width: none;
                          max-height: none;
                          left: 203.25px;
                          top: 142.5px;
                          opacity: 1;
                          transition-property: opacity;
                          transition-duration: 0.2s;
                          transition-timing-function: ease;
                          width: 64px;
                          height: 64px;
                        "
                      /><img
                        src="http://map0.daumcdn.net/map_2d_hd/2111ydg/L3/1900/932.png"
                        alt=""
                        draggable="false"
                        style="
                          position: absolute;
                          user-select: none;
                          -webkit-user-drag: none;
                          min-width: 0px;
                          min-height: 0px;
                          max-width: none;
                          max-height: none;
                          left: 267.25px;
                          top: 142.5px;
                          opacity: 1;
                          transition-property: opacity;
                          transition-duration: 0.2s;
                          transition-timing-function: ease;
                          width: 64px;
                          height: 64px;
                        "
                      /><img
                        src="http://map1.daumcdn.net/map_2d_hd/2111ydg/L3/1900/933.png"
                        alt=""
                        draggable="false"
                        style="
                          position: absolute;
                          user-select: none;
                          -webkit-user-drag: none;
                          min-width: 0px;
                          min-height: 0px;
                          max-width: none;
                          max-height: none;
                          left: 331.25px;
                          top: 142.5px;
                          opacity: 1;
                          transition-property: opacity;
                          transition-duration: 0.2s;
                          transition-timing-function: ease;
                          width: 64px;
                          height: 64px;
                        "
                      /><img
                        src="http://map2.daumcdn.net/map_2d_hd/2111ydg/L3/1900/934.png"
                        alt=""
                        draggable="false"
                        style="
                          position: absolute;
                          user-select: none;
                          -webkit-user-drag: none;
                          min-width: 0px;
                          min-height: 0px;
                          max-width: none;
                          max-height: none;
                          left: 395.25px;
                          top: 142.5px;
                          opacity: 1;
                          transition-property: opacity;
                          transition-duration: 0.2s;
                          transition-timing-function: ease;
                          width: 64px;
                          height: 64px;
                        "
                      /><img
                        src="http://map3.daumcdn.net/map_2d_hd/2111ydg/L3/1901/931.png"
                        alt=""
                        draggable="false"
                        style="
                          position: absolute;
                          user-select: none;
                          -webkit-user-drag: none;
                          min-width: 0px;
                          min-height: 0px;
                          max-width: none;
                          max-height: none;
                          left: 203.25px;
                          top: 78.5px;
                          opacity: 1;
                          transition-property: opacity;
                          transition-duration: 0.2s;
                          transition-timing-function: ease;
                          width: 64px;
                          height: 64px;
                        "
                      /><img
                        src="http://map0.daumcdn.net/map_2d_hd/2111ydg/L3/1901/932.png"
                        alt=""
                        draggable="false"
                        style="
                          position: absolute;
                          user-select: none;
                          -webkit-user-drag: none;
                          min-width: 0px;
                          min-height: 0px;
                          max-width: none;
                          max-height: none;
                          left: 267.25px;
                          top: 78.5px;
                          opacity: 1;
                          transition-property: opacity;
                          transition-duration: 0.2s;
                          transition-timing-function: ease;
                          width: 64px;
                          height: 64px;
                        "
                      /><img
                        src="http://map1.daumcdn.net/map_2d_hd/2111ydg/L3/1901/933.png"
                        alt=""
                        draggable="false"
                        style="
                          position: absolute;
                          user-select: none;
                          -webkit-user-drag: none;
                          min-width: 0px;
                          min-height: 0px;
                          max-width: none;
                          max-height: none;
                          left: 331.25px;
                          top: 78.5px;
                          opacity: 1;
                          transition-property: opacity;
                          transition-duration: 0.2s;
                          transition-timing-function: ease;
                          width: 64px;
                          height: 64px;
                        "
                      /><img
                        src="http://map2.daumcdn.net/map_2d_hd/2111ydg/L3/1901/934.png"
                        alt=""
                        draggable="false"
                        style="
                          position: absolute;
                          user-select: none;
                          -webkit-user-drag: none;
                          min-width: 0px;
                          min-height: 0px;
                          max-width: none;
                          max-height: none;
                          left: 395.25px;
                          top: 78.5px;
                          opacity: 1;
                          transition-property: opacity;
                          transition-duration: 0.2s;
                          transition-timing-function: ease;
                          width: 64px;
                          height: 64px;
                        "
                      />
                    </div>
                    <div style="position: absolute; z-index: 1"></div>
                    <div
                      style="
                        width: 712px;
                        height: 598px;
                        position: absolute;
                        z-index: 1;
                      "
                    ></div>
                    <div style="position: absolute; z-index: 1">
                      <svg
                        version="1.1"
                        style="
                          stroke: none;
                          stroke-dashoffset: 0.5;
                          stroke-linejoin: round;
                          fill: none;
                          transform: translateZ(0px);
                          position: absolute;
                          left: -1424px;
                          top: -1196px;
                          width: 3560px;
                          height: 2990px;
                        "
                        viewBox="0 0 3560 2990"
                      >
                        <defs></defs>
                      </svg>
                    </div>
                    <div
                      style="
                        position: absolute;
                        z-index: 1;
                        width: 100%;
                        height: 0px;
                        transform: translateZ(0px);
                      "
                    >
                      <div
                        style="
                          position: absolute;
                          margin: -39px 0px 0px -14px;
                          z-index: 0;
                          left: 350px;
                          top: 242px;
                        "
                      >
                        <img
                          draggable="false"
                          src="http://t1.daumcdn.net/mapjsapi/images/2x/marker.png"
                          alt=""
                          title=""
                          style="
                            min-width: 0px;
                            min-height: 0px;
                            max-width: 99999px;
                            max-height: none;
                            border: 0px;
                            display: block;
                            position: absolute;
                            user-select: none;
                            -webkit-user-drag: none;
                            clip: rect(0px, 29px, 42px, 0px);
                            top: 0px;
                            left: 0px;
                            width: 29px;
                            height: 42px;
                          "
                        /><img
                          src="http://t1.daumcdn.net/mapjsapi/images/2x/transparent.gif"
                          alt=""
                          draggable="false"
                          usemap="#daum.maps.Marker.Area:1"
                          style="
                            min-width: 0px;
                            min-height: 0px;
                            max-width: 99999px;
                            max-height: none;
                            border: 0px;
                            display: block;
                            position: absolute;
                            user-select: none;
                            -webkit-user-drag: none;
                            width: 29px;
                            height: 42px;
                          "
                        /><map
                          id="daum.maps.Marker.Area:1"
                          name="daum.maps.Marker.Area:1"
                          ><area
                            href="javascript:void(0)"
                            alt=""
                            shape="poly"
                            coords="14,39,9,27,4,21,1,16,1,10,4,4,11,0,18,0,25,4,28,10,28,16,25,21,20,27"
                            title=""
                            style="-webkit-tap-highlight-color: transparent"
                        /></map>
                      </div>
                    </div>
                  </div>
                </div>
                <div
                  style="
                    position: absolute;
                    cursor: default;
                    z-index: 1;
                    margin: 0px 6px;
                    height: 19px;
                    line-height: 14px;
                    left: 0px;
                    bottom: 0px;
                    color: rgb(0, 0, 0);
                  "
                >
                  <div
                    style="
                      color: rgb(0, 0, 0);
                      text-align: center;
                      font-size: 10px;
                      float: left;
                    "
                  >
                    <div
                      style="
                        float: left;
                        margin: 2px 3px 0px 4px;
                        height: 6px;
                        transition: width 0.1s ease 0s;
                        border-top: none rgb(0, 0, 0);
                        border-right: 2px solid rgb(0, 0, 0);
                        border-bottom: 2px solid rgb(0, 0, 0);
                        border-left: 2px solid rgb(0, 0, 0);
                        border-image: initial;
                        width: 58px;
                      "
                    ></div>
                    <div
                      style="
                        float: left;
                        margin: 0px 4px 0px 0px;
                        font-family: AppleSDGothicNeo-Regular, 돋움, dotum,
                          sans-serif;
                        font-weight: bold;
                        color: rgb(0, 0, 0);
                      "
                    >
                      250m
                    </div>
                  </div>
                  <div style="margin: 0px 4px; float: left">
                    <a
                      target="_blank"
                      href="http://map.kakao.com/"
                      title="Kakao 지도로 보시려면 클릭하세요."
                      style="float: left; width: 32px; height: 10px"
                      ><img
                        src="http://t1.daumcdn.net/mapjsapi/images/2x/m_bi_b.png"
                        alt="Kakao 지도로 이동"
                        style="
                          float: left;
                          width: 32px;
                          height: 10px;
                          border: none;
                        "
                    /></a>
                    <div
                      style="
                        font: 11px / 11px Arial, Tahoma, Dotum, sans-serif;
                        float: left;
                      "
                    ></div>
                  </div>
                </div>
                <div
                  style="
                    cursor: auto;
                    position: absolute;
                    z-index: 2;
                    left: 0px;
                    top: 0px;
                  "
                ></div>
              </div>
              <div class="txtarea">
                <div class="tit">
                  <img
                    src="${cp}/images/location_logo.jpeg"
                    alt="모나미 로고"
                  />
                  <h4>모나미 본사 오시는길</h4>
                </div>
                <dl>
                  <dt>ADDRESS</dt>
                  <dd>
                    경기도 용인시 수지구 손곡로 17<br />
                    (구)경기도 용인시 수지구 동천동 854-2
                  </dd>
                </dl>
                <dl>
                  <dt>TEL</dt>
                  <dd>031-216-0153 / 080-022-0153</dd>
                </dl>
                <img
                  src="${cp}/images/location_img1.jpeg"
                  alt="본사 사진"
                  class="bd_img"
                />
              </div>
            </div>
            <div class="traffic">
              <div class="car">
                <div class="tit">자가용 이용 시</div>
                <div class="info">
                  <div class="align">
                    <ul>
                      <li>
                        판교IC를 빠져 나와 '수지/신갈' 방향으로 오시면 됩니다.
                      </li>
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
                      <li>
                        일반버스 :<br />분당선 미금역 7번 출구에서 버스 11번을
                        이용, 프레시원 정거장 하차<br />또는 700-2번, 5번을
                        이용, KT 수지지사.물류센터 정거장 하차
                      </li>
                      <li>
                        광역버스 :<br />M4101번 (종로,을지로,남대문→동천동
                        현대홈타운2차아파트 정거장 하차)<br />6900번(잠실→동천동
                        현대홈타운2차아파트 정거장 하차)
                      </li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <div class="btn_top">
            <a href="#"
              ><img src="${cp}/images/btn_top.gif" alt="페이지 상단으로"
            /></a>
          </div>
        </div>
        <!--/contents-->
      </div>
      <!-- 본문 끝 SECTION-->
      <!-- 푸터 시작 SECTION-->
      <%@ include file="/doyoon/footer.jsp"%>
      <!-- 푸터 끝 -->
    </div>
  </body>
</html>
