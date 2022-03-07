<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib uri="http://java.sun.com/jsp/jstl/core"
prefix="c"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <c:set var="cp" value="${pageContext.request.contextPath}" />
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>MONAMI</title>
    <link
      rel="shortcut icon"
      href="${cp}/images/favicon.ico"
      type="image/x-icon"
    />
    <link rel="stylesheet" href="${cp}/css/stylebasket.css" />
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.js"></script>
    <script type="text/javascript" src="${cp}/js/common.js"></script>
    <script type="text/javascript" src="${cp}/js/prodiqr.js"></script>
  </head>
  <body>
    <div id="wrap">
      <%@ include file="/doyoon/header.jsp"%>
      <!-- 헤더 끝 -->
      <!-- 바디 상단 이미지 시작-->
      <div id="visaul">메인화면 상단에 이미지 들어갈 곳</div>
      <!-- 바디 상단 이미지 끝  -->
      <!-- 본문 시작  -->
      <div id="container">
        <div id="contents">
          <div class="pagetitle pn4">
            <h2>고객지원</h2>
            <p>모나미는 언제나 소중한 의견에 귀 기울이겠습니다.</p>
          </div>
          <div class="pagetabs">
            <ul class="m4">
              <li><a href="#">자주하는질문</a></li>
              <li><a href="#">문의하기</a></li>
              <li class="on"><a href="./board_event.html">이벤트</a></li>
              <li><a class="find_f">모나미 패밀리샵 찾기</a></li>
              <!--<li ><a href="http://mpms.monami.com" target="_blank">기업 및 단체 구매 문의</a></li>-->
            </ul>
          </div>

          <h3 class="title1">MONAMI <span>EVENT</span></h3>
          <div class="event">
            <table cellpadding="0" cellspacing="0">
              <tbody>
                <tr>
                  <td class="thum">
                    <a href="./board_event_01.html"
                      ><img
                        src="https://dfrkkcv2hg1jc.cloudfront.net/data/board/event/b_file_16297045851ix0svszg8.jpg"
                        alt=""
                        width="640"
                        height="325"
                    /></a>
                  </td>
                  <td>
                    <div class="sbj">[종료] [모나미 펜클럽 4기 발표]</div>
                    <div class="evt_type"></div>
                    <p>
                      ★ 모나미 펜(PEN)클럽 4기 발표 ★모나미 펜클럽 4기에 선발된
                      명예의 153명..
                    </p>
                    <p class="date">2021.08.23 ~ 2021.09.05</p>
                    <a href="./board_event_01.html" class="btn"
                      ><span>자세히보기</span>
                      <div></div
                    ></a>
                  </td>
                </tr>

                <tr>
                  <td class="thum">
                    <a href="#"
                      ><img
                        src="https://dfrkkcv2hg1jc.cloudfront.net/data/board/event/b_file_162702331217c7eq2fmn.jpg"
                        alt=""
                        width="640"
                        height="325"
                    /></a>
                  </td>
                  <td>
                    <div class="sbj">[종료] [모나미 펜클럽 4기 모집]</div>
                    <div class="evt_type"></div>
                    <p>
                      ★ 모나미 펜(PEN)클럽 4기 모집★모나미에 진심인 사람들
                      #모나미펜클럽4기..
                    </p>
                    <p class="date">2021.07.26 ~ 2021.08.15</p>
                    <a href="#" class="btn"
                      ><span>자세히보기</span>
                      <div></div
                    ></a>
                  </td>
                </tr>
              </tbody>
            </table>
          </div>
          <div class="paging">
            <a class="page_prev"
              ><img src="${cp}/images/page_prev.gif" alt=""
            /></a>
            <strong>1</strong>
            <a class="page_next"><img src="./images/page_next.gif" alt="" /></a>
          </div>

          <div class="btn_top">
            <a><img src="${cp}/images/btn_top.gif" alt="페이지 상단으로" /></a>
          </div>
        </div>
        <!--/contents-->
      </div>
      <!-- 본문 끝 -->
      <!-- 푸터 시작 -->
      <%@ include file="/doyoon/footer.jsp"%>
      <!-- 푸터 끝 -->
    </div>
  </body>
</html>
