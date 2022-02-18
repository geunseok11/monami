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
                <a href="./search.html">
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
    <!-- <div id="container">본문 내용</div> -->
    <div id="container">
      <div id="contents">
        <div class="pagetitle pn1">
          <h2>
            모나미소개																				
          </h2>
          <p>
            언제 어디서나 모나미는 당신 곁에 있습니다.														
          </p>
        </div>
          <div class="pagetabs">
            <ul class="m1">
              <li><a href="/about/ceo.html">CEO 메시지</a></li>
              <li><a href="/about/company.html">회사정보</a></li>
              <li><a href="/about/history.html">회사연혁</a></li>
              <li class="on"><a href="./investment.html">투자정보</a></li>
              <li><a href="./ci.html">CI</a></li>
              <li><a href="http://recruit.monami.co.kr/" target="_blank">채용정보</a></li>
              <li><a href="./location.html">찾아오시는 길</a></li>
            </ul>
          </div>
          <h3 class="title1">INVESTMENT <span>INFO</span></h3>
      <div class="investment">
      
        <div class="invest_company_info">
          <ul>
            <li>
              <dl>
                <dt>회사명</dt>
                <dd>(주)모나미</dd>
              </dl>
            </li>
            <li>
              <dl>
                <dt>자본금</dt>
                <dd>18,897백만원</dd>
              </dl>
            </li>
            <li>
              <dl>
                <dt>설립일</dt>
                <dd>1967년 12월 28일</dd>
              </dl>
            </li>
            <li>
              <dl>
                <dt>결산기</dt>
                <dd>12월</dd>
              </dl>
            </li>
            <li>
              <dl>
                <dt>상장일</dt>
                <dd>1974년 6월 26일</dd>
              </dl>
            </li>
            <li>
              <dl>
                <dt>대표이사</dt>
                <dd>송하경</dd>
              </dl>
            </li>
            <li>
              <dl>
                <dt>본사주소</dt>
                <dd>경기도 용인</dd>
              </dl>
            </li>
            <li>
              <dl>
                <dt>대표업종</dt>
                <dd>문구 도소매</dd>
              </dl>
            </li>
          </ul>
        </div>
      
        <div class="invest_tabs">
          <ul>
            <li id="btn1" class="on" ><a>주주에 관한 사항</a></li>
            <li id="btn2"><a>이사회에 관한 사항</a></li>
            <li id="btn3"><a>감사기구에 관한 사항</a></li>
            <li id="btn4"><a>주주총회정보</a></li>
            <li id="btn5"><a>재무에 관한 사항</a></li>
            <li id="btn6"><a>공고</a></li>
          </ul>
        </div>
      
      
        <!-- 주주에 관한 사항 -->
        <div id="btn1compo" class="invest_tabcon">
          <div class="num_title">
            <span class="num">01</span> 주주에 관한 사항
          </div>
          <table cellpadding="0" cellspacing="0">
            <tbody><tr>
              <th><span class="tit t1">정관</span></th>
              <td>회사정관을 DOC문서 화일로 제공하고 있습니다. <a href="/data/down/monami_statute.doc"><span class="btn_download">다운로드</span></a></td>
            </tr>
            <tr>
              <th><span class="tit t1">공시정보관리규정</span></th>
              <td>공시정보관리규정을 HWP문서 화일로 제공하고 있습니다. <a href="/include/common/download.php?file=%28%EC%A3%BC%29%EB%AA%A8%EB%82%98%EB%AF%B8_%EA%B3%B5%EC%8B%9C%EC%A0%95%EB%B3%B4%EA%B4%80%EB%A6%AC%EA%B7%9C%EC%A0%95.hwp"><span class="btn_download">다운로드</span></a></td>
            </tr>
            <tr>
              <th><span class="tit t1">주식에 관한 사항</span></th>
              <td>
                <span class="tit t2">주식발행 내역(1주의 액면금액 : 1,000원)</span>
                <table cellpadding="0" cellspacing="0" class="subtable">
                  <colgroup>
                    <col width="25%">
                    <col width="25%">
                    <col width="25%">
                    <col width="25%">
                  </colgroup><colgroup>
                  </colgroup><tbody><tr>
                    <th>주식의종류</th>
                    <th>발행주식총수</th>
                    <th>액면총액</th>
                    <th>비고</th>
                  </tr>
                  <tr>
                    <th>보통주식</th>
                    <td>18,897,307주</td>
                    <td>18,897,307천원</td>
                    <td></td>
                  </tr>
                  <tr>
                    <th>우선주식</th>
                    <td>-</td>
                    <td>-</td>
                    <td></td>
                  </tr>
                  <tr>
                    <th>합계</th>
                    <td>18,897,307주</td>
                    <td>18,897,307천원</td>
                    <td></td>
                  </tr>
                </tbody></table>
                <br><br>
                <span class="tit t2">자기주식 보유 현황(최근 결산기말 현재)</span>
                <table cellpadding="0" cellspacing="0" class="subtable">
                  <colgroup>
                    <col width="25%">
                    <col width="37.5%">
                    <col width="37.5%">
                  </colgroup><colgroup>
                  </colgroup><tbody><tr>
                    <th>주식의종류</th>
                    <th>주식수량</th>
                    <th>비고</th>
                  </tr>
                  <tr>
                    <th>보통주식</th>
                    <td>-</td>
                    <td>-</td>
                  </tr>
                  <tr>
                    <th>우선주식</th>
                    <td>-</td>
                    <td>-</td>
                  </tr>
                  <tr>
                    <th>합계</th>
                    <td>-</td>
                    <td>-</td>
                  </tr>
                </tbody></table>
              </td>
            </tr>
            <tr>
              <th><span class="tit t1">주식분포상황<br>(단위:주)</span></th>
              <td>
                <table cellpadding="0" cellspacing="0" class="subtable">
                  <colgroup>
                    <col width="25%">
                    <col width="19%">
                    <col width="19%">
                    <col width="19%">
                    <col width="19%">
                  </colgroup><colgroup>
                  </colgroup><tbody><tr>
                    <th>구분</th>
                    <th>성명</th>
                    <th>주식의종류</th>
                    <th>소유주식수</th>
                    <th>비고</th>
                  </tr>
                  <tr>
                    <th>최대주주</th>
                    <td>송하경 외</td>
                    <td>보통주</td>
                    <td>5,329,661</td>
                    <td>특수관계인 포함</td>
                  </tr>
                  <tr>
                    <th>주요주주</th>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                    <td></td>
                  </tr>
                  <tr>
                    <th></th>
                    <td>소계</td>
                    <td></td>
                    <td>5,329,661</td>
                    <td></td>
                  </tr>
                </tbody></table>
              </td>
            </tr>
            <tr>
              <th><span class="tit t1">집중 투표제 및 서면<br>투표제 도입</span></th>
              <td>
                <table cellpadding="0" cellspacing="0" class="subtable">
                  <colgroup>
                    <col width="25%">
                    <col width="37.5%">
                    <col width="37.5%">
                  </colgroup><colgroup>
                  </colgroup><tbody><tr>
                    <th>구분</th>
                    <th>도입일자</th>
                    <th>비고</th>
                  </tr>
                  <tr>
                    <th>집중투표제</th>
                    <td>-</td>
                    <td></td>
                  </tr>
                  <tr>
                    <th>서면투표제</th>
                    <td>-</td>
                    <td></td>
                  </tr>
                </tbody></table>
              </td>
            </tr>
            <tr>
              <th><span class="tit t1">배당에 관한 사항(최근 3년)<br>(단위:원, 주)</span></th>
              <td>
                <table cellpadding="0" cellspacing="0" class="subtable valign">
                  <colgroup>
                    <col width="9%">
                    <col width="9%">
                    <col width="9%">
                    <col width="13%">
                    <col width="20%">
                    <col width="20%">
                    <col width="20%">
                  </colgroup><colgroup>
                  </colgroup><tbody><tr>
                    <th colspan="4">구분</th>
                    <th>2020년</th>
                    <th>2019년</th>
                    <th>2018년</th>
                  </tr>
                  <tr>
                    <th rowspan="6">현금</th>
                    <td colspan="2">배당총액</td>
                    <td>보통주</td>
                    <td>1,322,811</td>
                    <td>1,322,811</td>
                    <td>1,278,011</td>
                  </tr>
                  <tr>
                    <td colspan="2"></td>
                    <td>우선주</td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                  </tr>
                  <tr>
                    <td rowspan="4">1주당 배당금</td>
                    <td rowspan="2">최대주주</td>
                    <td>보통주</td>
                    <td>70</td>
                    <td>70</td>
                    <td>70</td>
                  </tr>
                  <tr>
                    <td>우선주</td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                  </tr>
                  <tr>
                    <td rowspan="2">소액/<br>기타주주</td>
                    <td>보통주</td>
                    <td>70</td>
                    <td>70</td>
                    <td>70</td>
                  </tr>
                  <tr>
                    <td>우선주</td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                  </tr>
                  <tr>
                    <th rowspan="4">주식</th>
                    <td rowspan="2" colspan="2">배당주식총수</td>
                    <td>보통주</td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                  </tr>
                  <tr>
                    <td>우선주</td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                  </tr>
                  <tr>
                    <td rowspan="2" colspan="2">1주당배당주식수</td>
                    <td>보통주</td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                  </tr>
                  <tr>
                    <td>우선주</td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                  </tr>
                </tbody></table>
              </td>
            </tr>
          </tbody></table>
        </div>
        <!-- //주주에 관한 사항 -->
      
      
      
        <!-- 이사회에 관한 사항 -->
        <div id="btn2compo" class="invest_tabcon dn">
          <div class="num_title">
            <span class="num">02</span> 이사회에 관한 사항
          </div>
          <table cellpadding="0" cellspacing="0">
            <tbody><tr>
              <th><span class="tit t1">이사회구성 (등기이사)현황<br><span style="font-size:14px;">*의장성명:송하경 / 이사총수:4명</span></span></th>
              <td>
                <table cellpadding="0" cellspacing="0" class="subtable valign">
                  <colgroup>
                    <col width="14.285%">
                    <col width="14.285%">
                    <col width="14.285%">
                    <col width="14.285%">
                    <col width="14.285%">
                    <col width="14.285%">
                    <col width="14.285%">
                  </colgroup><colgroup>
                  </colgroup><tbody><tr>
                    <th>구분</th>
                    <th>직위(상근여부)</th>
                    <th>성명</th>
                    <th>선임일</th>
                    <th>임기</th>
                    <th>소관업무</th>
                    <th>책임보험<br>가입여부</th>
                  </tr>
                  <tr>
                    <th rowspan="3">사내이사</th>
                    <td>대표이사(상근)</td>
                    <td>송하경</td>
                    <td>2019.03.29</td>
                    <td>3년</td>
                    <td>총괄</td>
                    <td>-</td>
                  </tr>
                  <tr>
                    <td>사장(상근)</td>
                    <td>송하윤</td>
                    <td>2019.03.29</td>
                    <td>3년</td>
                    <td>총괄</td>
                    <td>-</td>
                  </tr>
                  <tr>
                    <td>부사장(상근)</td>
                    <td>김용국</td>
                    <td>2019.03.29</td>
                    <td>3년</td>
                    <td>영업총괄</td>
                    <td>-</td>
                  </tr>
                  <tr>
                    <th rowspan="2">사외이사</th>
                    <td>사외이사(비상근)</td>
                    <td>백성민</td>
                    <td>2021.03.25</td>
                    <td>3년</td>
                    <td>감사</td>
                    <td>-</td>
                  </tr>
                </tbody></table>
              </td>
            </tr>
            <tr>
              <th><span class="tit t1">이사회운영 현황<br>(최근사업연도)</span></th>
              <td>전자공시(<a href="http://dart.fss.or.kr" target="_blank">http://dart.fss.or.kr</a>) 자료를 참고하시기 바랍니다.</td>
            </tr>
          </tbody></table>
        </div>
        <!-- //이사회에 관한 사항 -->
      
      
      
      
        <!-- 감사기구에 관한 사항 -->
        <div id="btn3compo" class="invest_tabcon dn">
          <div class="num_title">
            <span class="num">03</span> 감사기구에 관한 사항
          </div>
          <table cellpadding="0" cellspacing="0">
            <tbody><tr>
              <th><span class="tit t1">감사기구 현황</span></th>
              <td>
                <span class="tit t2">감사현황</span>
                <table cellpadding="0" cellspacing="0" class="subtable valign">
                  <colgroup>
                    <col width="20%">
                    <col width="20%">
                    <col width="20%">
                    <col width="20%">
                    <col width="20%">
                  </colgroup><colgroup>
                  </colgroup><tbody><tr>
                    <th>구분</th>
                    <th>성명</th>
                    <th>선임일</th>
                    <th>임기</th>
                    <th>책임보험가입여부 </th>
                  </tr>
                  <tr>
                    <td>상근감사</td>
                    <td>조영찬</td>
                    <td>2021.03.25</td>
                    <td>3년</td>
                    <td></td>
                  </tr>
      
                </tbody></table>
                <br>
                <span class="tit t2">감사위원회 현황(위원장 성명 : /위원총수 : 명)</span>
                <table cellpadding="0" cellspacing="0" class="subtable valign">
                  <colgroup>
                    <col width="25%">
                    <col width="37.5%">
                    <col width="37.5%">
                  </colgroup><colgroup>
                  </colgroup><tbody><tr>
                    <th>구분</th>
                    <th>성명</th>
                    <th>비고</th>
                  </tr>
                  <tr>
                    <td>사내이사</td>
                    <td>-</td>
                    <td>-</td>
                  </tr>
                  <tr>
                    <td>사외이사</td>
                    <td>-</td>
                    <td>-</td>
                  </tr>
                </tbody></table>
                <p>: 위원회 설치되어 있지 않음</p>
              </td>
            </tr>
            <tr>
              <th><span class="tit t1">외부감사인 선임현황</span></th>
              <td>
                <table cellpadding="0" cellspacing="0" class="subtable valign">
                  <colgroup>
                    <col width="25%">
                    <col width="25%">
                    <col width="25%">
                    <col width="25%">
                  </colgroup><colgroup>
                  </colgroup><tbody><tr>
                    <th>법인명</th>
                    <th>선임일</th>
                    <th>계약기간</th>
                    <th>최근감사의견</th>
                  </tr>
                  <tr>
                    <td>성현회계법인</td>
                    <td>2019.02.14</td>
                    <td>2019.01.01~2021.12.31</td>
                    <td>적정</td>
                  </tr>
                </tbody></table>
              </td>
            </tr>
          </tbody></table>
        </div>
        <!-- //감사기구에 관한 사항 -->
      
      
      
      
      
        <!-- 주주총회정보 -->
        <div id="btn4compo" class="invest_tabcon dn">
          <div class="num_title">
            <span class="num">04</span> 주주총회정보
          </div>
          <table cellpadding="0" cellspacing="0">
            <tbody><tr>
              <th><span class="tit t1">주주총회의사록 요약 <br>(최근3사업연도)</span></th>
              <td>
                <!--<span class="tit t2">감사현황</span>-->
                <table cellpadding="0" cellspacing="0" class="subtable valign talign">
                  <colgroup>
                    <col width="25%">
                    <col width="37.5%">
                    <col width="37.5%">
                  </colgroup><colgroup>
                  </colgroup><tbody><tr>
                    <th>주총일자</th>
                    <th>안건</th>
                    <th>결의내용</th>
                  </tr>
                   <!-- 회차별 내용 -->
                                                      <tr class="tl">
                    <th rowspan="6">제 53기<br>정기주주총회<br>('21.03.25)</th>
                    <td>
                      제1호 의안 : 제 53기 재무제표<br>
                      (이익잉여금처분계산서 포함) 및 연결재무제표 승인의 건
                    </td>
                    <td>배당 : 현금배당 (주당 70원)</td>
                  </tr>
                  <tr class="tl">
                    <td>
                      제2호 의안 : 정관 일부 변경의 건<br>
                                                                      ※의결권 정족수 미달로 부결
                    </td>
                    <td>
                      사업목적 추가 등 정관일부변경
                    </td>
                  </tr>
                  <tr class="tl">
                    <td>
                      제3호 의안 : 사외이사 선임의 건
                    </td>
                    <td>
                      백성민 사외이사 선임의 건
                    </td>
                  </tr>
                                                      <tr class="tl">
                    <td>
                      제4호 의안 : 상근감사 선임의 건
                    </td>
                    <td>
                      조영찬 상근감사 재선임의 건
                    </td>
                  </tr>
      
                  <tr class="tl">
                    <td>
                      제5호 의안 : 이사 보수한도액 승인의 건
                    </td>
                    <td>
                      이사 보수한도 승인액(2,000,000,000원)
                    </td>
                  </tr>
                  <tr class="tl">
                    <td>
                      제6호 의안 : 감사 보수한도액 승인의 건
                    </td>
                    <td>
                      감사 보수한도 승인액(100,000,000원)
                    </td>
                  </tr>
                                                     <!--// 회차별 내용 -->
      
      
      
                                                      <!-- 회차별 내용 -->
                                                      <tr class="tl">
                    <th rowspan="5">제 52기<br>정기주주총회<br>('20.03.25)</th>
                    <td>
                      제1호 의안 : 제 52기 재무제표<br>
                      (이익잉여금처분계산서 포함)및 연결재무제표 승인의 건
                    </td>
                    <td>배당 : 현금배당 (주당 70원)</td>
                  </tr>
                  <tr class="tl">
                    <td>
                      제2호 의안 : 정관 일부 변경 승인의 건<br>
                                                                      ※의결권 정족수 미달로 부결
                    </td>
                    <td>
                      사업목적 추가<br>- 화장품 제조 및 판매<br>- 화장품 및 화장용품 도소매업
                    </td>
                  </tr>
                  <tr class="tl">
                    <td>
                      제3호 의안 : 감사 선임의 건<br>
                                                                      ※의결권 정족수 미달로 부결
                    </td>
                    <td>
                      조영찬 상근감사 재선임의 건<br>최석주 비상근감사 재선임의 건
                    </td>
                  </tr>
                                                                             <tr class="tl">
                    <td>
                      제4호 의안 : 이사 보수한도액 승인의 건
                    </td>
                    <td>
                      이사 보수한도 승인액(2,000,000,000원)
                    </td>
                  </tr>
      
                  <tr class="tl">
                    <td>
                      제5호 의안 : 감사 보수한도액 승인의 건
                    </td>
                    <td>
                      감사 보수한도 승인액(100,000,000원)
                    </td>
                  </tr>
                                                     <!--// 회차별 내용 -->
      
      
      
      
                                                      <!-- 회차별 내용 -->
                                                      <tr class="tl">
                    <th rowspan="5">제 51기<br>정기주주총회<br>('19.03.27)</th>
                    <td>
                      제1호 의안 : 제 51기 재무제표<br>
                      (이익잉여금처분계산서 포함)및 연결재무제표 승인의 건 
                    </td>
                    <td>배당 : 현금배당 (주당 70원)</td>
                  </tr>
                  <tr class="tl">
                    <td>
                      제2호 의안 : 정관 일부 변경 승인의 건 
                    </td>
                    <td>
                      제 8조, 제 9조, 제10조, 제11조, 제12조,<br>제13조의 2, 제14조, 제14조의2, 제15조,<br>제16조, 제31조, 제32조,<br>제33조, 제41조의2 원안대로 승인
                    </td>
                  </tr>
                  <tr class="tl">
                    <td>
                      제3호 의안 : 이사 선임 승인의 건
                    </td>
                    <td>
                      송하경, 송하윤, 김용국 사내이사 재선임
                    </td>
                  </tr>
                                                      <tr class="tl">
                    <td>
                      제4호 의안 : 이사 보수한도액 승인의 건
                    </td>
                    <td>
                      이사 보수한도 승인액(2,000,000,000원)
                    </td>
                  </tr>
      
                  <tr class="tl">
                    <td>
                      제5호 의안 : 감사 보수한도액 승인의 건
                    </td>
                    <td>
                      감사 보수한도 승인액(100,000,000원)
                    </td>
                  </tr>
                                                      <!--// 회차별 내용 -->
      
                                               </tbody></table>
              </td>
            </tr>
          </tbody></table>
        </div>
        <!-- //주주총회정보 -->
      
      
      
      
      
        <!-- 재무에 관한 사항 -->
        <div id="btn5compo" class="invest_tabcon dn">
          <div class="num_title">
            <span class="num">05</span> 재무에 관한 사항
          </div>
          <table cellpadding="0" cellspacing="0">
            <tbody><tr>
              <th><span class="tit t1">요약 재무정보(최근3사업연도)</span></th>
              <td>
                <span class="tit t2">요약 별도 재무상태표(단위:백만원)</span>
                <table cellpadding="0" cellspacing="0" class="subtable valign">
                  <colgroup>
                    <col width="25%">
                    <col width="25%">
                    <col width="25%">
                    <col width="25%">
                  </colgroup><colgroup>
                  </colgroup><tbody><tr>
                    <th>구분</th>
                    <th>2020년</th>
                    <th>2019년</th>
                    <th>2018년</th>
                  </tr>
                  <tr>
                    <td>유동자산</td>
                    <td>27,216</td>
                    <td>30,350</td>
                    <td>28,151</td>
                  </tr>
                  <tr>
                    <td>비유동자산</td>
                    <td>125,949</td>
                    <td>123,495</td>
                    <td>100,371</td>
                  </tr>
                  <tr>
                    <td>자산총계</td>
                    <td>153,165</td>
                    <td>153,845</td>
                    <td>128,522</td>
                  </tr>
                  <tr>
                    <td>유동부채</td>
                    <td>38,437</td>
                    <td>63,045</td>
                    <td>35,885</td>
                  </tr>
                  <tr>
                    <td>비유동부채</td>
                    <td>43,181</td>
                    <td>19,724</td>
                    <td>38,389</td>
                  </tr>
                  <tr>
                    <td>부채총계</td>
                    <td>81,618</td>
                    <td>82,769</td>
                    <td>74,274</td>
                  </tr>
                  <tr>
                    <td>자본총계</td>
                    <td>71,547</td>
                    <td>71,076</td>
                    <td>54,249</td>
                  </tr>
                </tbody></table>
                <br><br>
                <span class="tit t2">요약 별도 포괄손익계산서(단위:백만원)</span>
                <table cellpadding="0" cellspacing="0" class="subtable valign">
                  <colgroup>
                    <col width="25%">
                    <col width="25%">
                    <col width="25%">
                    <col width="25%">
                  </colgroup><colgroup>
                  </colgroup><tbody><tr>
                    <th>구분</th>
                    <th>2020년</th>
                    <th>2019년</th>
                    <th>2018년</th>
                  </tr>
                  <tr>
                    <td>매출액</td>
                    <td>93,093</td>
                    <td>97,334</td>
                    <td>100,851</td>
                  </tr>
                  <tr>
                    <td>영업이익</td>
                    <td>1,350</td>
                    <td>2,534</td>
                    <td>3,485</td>
                  </tr>
                  <tr>
                    <td>법인세차감전순이익</td>
                    <td>2,065</td>
                    <td>2,880</td>
                    <td>184</td>
                  </tr>
                  <tr>
                    <td>당기 순이익</td>
                    <td>1,408</td>
                    <td>2,224</td>
                    <td>-710</td>
                  </tr>
                </tbody></table>
                <br><br>
                <span class="tit t2">요약 연결 재무상태표(단위:백만원)</span>
                <table cellpadding="0" cellspacing="0" class="subtable valign">
                  <colgroup>
                    <col width="25%">
                    <col width="25%">
                    <col width="25%">
                    <col width="25%">
                  </colgroup><colgroup>
                  </colgroup><tbody><tr>
                    <th>구분</th>
                    <th>2020년</th>
                    <th>2019년</th>
                    <th>2018년</th>
                  </tr>
                  <tr>
                    <td>유동자산</td>
                    <td>74,296</td>
                    <td>81,274</td>
                    <td>77,726</td>
                  </tr>
                  <tr>
                    <td>비유동자산</td>
                    <td>121,385</td>
                    <td>119,454</td>
                    <td>92,849</td>
                  </tr>
                  <tr>
                    <td>자산총계</td>
                    <td>195,681</td>
                    <td>200,728</td>
                    <td>170,575</td>
                  </tr>
                  <tr>
                    <td>유동부채</td>
                    <td>58,294</td>
                    <td>82,198</td>
                    <td>55,081</td>
                  </tr>
                  <tr>
                    <td>비유동부채</td>
                    <td>47,598</td>
                    <td>27,361</td>
                    <td>41,039</td>
                  </tr>
                  <tr>
                    <td>부채총계</td>
                    <td>105,892</td>
                    <td>109,509</td>
                    <td>96,120</td>
                  </tr>
                  <tr>
                    <td>자본총계</td>
                    <td>89,789</td>
                    <td>91,169</td>
                    <td>74,455</td>
                  </tr>
                </tbody></table>
                <br><br>
                <span class="tit t2">요약 연결 포괄손익계산서(단위:백만원)</span>
                <table cellpadding="0" cellspacing="0" class="subtable valign">
                  <colgroup>
                    <col width="25%">
                    <col width="25%">
                    <col width="25%">
                    <col width="25%">
                  </colgroup><colgroup>
                  </colgroup><tbody><tr>
                    <th>구분</th>
                    <th>2020년</th>
                    <th>2019년</th>
                    <th>2018년</th>
                  </tr>
                  <tr>
                    <td>매출액</td>
                    <td>127,763</td>
                    <td>132,039</td>
                    <td>135,192</td>
                  </tr>
                  <tr>
                    <td>영업이익</td>
                    <td>40</td>
                    <td>2,101</td>
                    <td>6,922</td>
                  </tr>
                  <tr>
                    <td>법인세차감전순이익</td>
                    <td>618</td>
                    <td>2,034</td>
                    <td>2,261</td>
                  </tr>
                  <tr>
                    <td>당기 순이익</td>
                    <td>51</td>
                    <td>1,262</td>
                    <td>758</td>
                  </tr>
      
                </tbody></table>
      <br><br>
                <span class="tit t2">재무지표(최근 사업연도)</span>
                <table cellpadding="0" cellspacing="0" class="subtable valign">
                  <colgroup>
                    <col width="25%">
                    <col width="25%">
                    <col width="25%">
                    <col width="25%">
                  </colgroup><colgroup>
                  </colgroup><tbody><tr>
                    <th>구분</th>
                    <th>공식구성</th>
                    <th>비율(%)</th>
                    <th>비고</th>
                  </tr>
                  <tr>
                    <td>자기자본이익율</td>
                    <td>당기순이익/자본총계</td>
                    <td>1.97%</td>
                    <td>수익성(ROE)</td>
                  </tr>
                  <tr>
                    <td>매출액증가율</td>
                    <td>당기매출액/전기매출액</td>
                    <td>95.64%</td>
                    <td>성장성</td>
                  </tr>
                  <tr>
                    <td>부채비율</td>
                    <td>부채총계/자본총계</td>
                    <td>114.08%</td>
                    <td>안전성</td>
                  </tr>
                  <tr>
                    <td>이자보상배율</td>
                    <td>영업이익/이자지급액</td>
                    <td>0.60배</td>
                    <td>안전성</td>
                  </tr>
                  <tr>
                    <td>BIS비율(금융)</td>
                    <td>자기자본/위험가중자산</td>
                    <td>-</td>
                    <td>안전성</td>
                  </tr>
      
      
                </tbody></table>
              </td>
            </tr>
            <tr>
              <th><span class="tit t1">신용등급(최근 사업연도)</span></th>
              <td>
                <table cellpadding="0" cellspacing="0" class="subtable valign">
                  <colgroup>
                    <col width="20%">
                    <col width="20%">
                    <col width="20%">
                    <col width="20%">
                    <col width="20%">
                  </colgroup><colgroup>
                  </colgroup><tbody><tr>
                    <th>평가유가증권</th>
                    <th>평가일자</th>
                    <th>신용등급</th>
                    <th>평가기관</th>
                    <th>비고</th>
                  </tr>
                  <tr>
                    <td>무보증사모사채</td>
                    <td>2014.05.12</td>
                    <td>P-BB</td>
                    <td>한국기업평가 주식회사</td>
                    <td></td>
                  </tr>
                </tbody></table>
              </td>
            </tr>
          </tbody></table>
        </div>
        <!-- //재무에 관한 사항 -->
        <!-- 결산공고 -->
        <div id="btn6compo" class="invest_tabcon dn">
          <div class="num_title">
            <span class="num">06</span> 공고
          </div>
          <table cellpadding="0" cellspacing="0">
            <tbody><tr>
              <th><span class="tit t1">연도별 결산공고 다운로드</span></th>
              <td>
                <table cellpadding="0" cellspacing="0" class="subtable valign">
                  <colgroup>
                    <col width="20%">
                    <col width="30%">
                    <col width="50%">
      
                  </colgroup><colgroup>
                  </colgroup><tbody><tr>
                    <th>해당연도</th>
                    <th>제목</th>
                    <th>관련자료</th>
      
                  </tr>
                  <tr>
                    <th>2020년</th>
                    <td>53기 결산공고</td>
                    <td>재무상태표 <a href="/data/down/a_notice_53_1.pdf" target="_blank"><span class="btn_download">다운로드</span></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;연결재무상태표 <a href="/data/down/a_notice_53_2.pdf" target="_blank"><span class="btn_download">다운로드</span></a></td>
      
                  </tr>
      
                  <tr>
                    <th>2019년</th>
                    <td>52기 결산공고</td>
                    <td>재무상태표 <a href="/data/down/a_notice_52_1.pdf" target="_blank"><span class="btn_download">다운로드</span></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;연결재무상태표 <a href="/data/down/a_notice_52_2.pdf" target="_blank"><span class="btn_download">다운로드</span></a></td>
      
                  </tr>
      
                  <tr>
                    <th>2018년</th>
                    <td>51기 결산공고</td>
                    <td>재무상태표 <a href="/data/down/a_notice_51_1.pdf" target="_blank"><span class="btn_download">다운로드</span></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;연결재무상태표 <a href="/data/down/a_notice_51_2.pdf" target="_blank"><span class="btn_download">다운로드</span></a></td>
      
                  </tr>						
                </tbody></table>
              </td>
            </tr>
      
      
            <tr>
              <th><span class="tit t1">전자증권법 시행에 따른<br>주주 보호 안내</span></th>
              <td>전자증권 전환 대상 주권 권리자(주주) 보호 및 조치사항 안내 <a href="/data/down/stock_protection.pdf" target="_blank"><span class="btn_download">다운로드</span></a></td>
            </tr>
                              <tr>
              <th><span class="tit t1">사업보고서</span></th>
              <td>
                <table cellpadding="0" cellspacing="0" class="subtable valign">
                  <colgroup>
                    <col width="20%">
                    <col width="30%">
                    <col width="50%">
      
                  </colgroup><colgroup>
                  </colgroup><tbody><tr>
                    <th>해당연도</th>
                    <th>제목</th>
                    <th>관련자료</th>
      
                  </tr>
                  <tr>
                    <th>2020년</th>
                    <td>53기 사업보고서</td>
                    <td><a href="/data/down/business_53.pdf" target="_blank"><span class="btn_download">다운로드</span></a></td>
                  </tr>
      
                  
                </tbody></table>
      
              </td>
            </tr>
                              <tr>
              <th><span class="tit t1">감사보고서</span></th>
              <td>
                <table cellpadding="0" cellspacing="0" class="subtable valign">
                  <colgroup>
                    <col width="20%">
                    <col width="30%">
                    <col width="50%">
      
                  </colgroup><colgroup>
                  </colgroup><tbody><tr>
                    <th>해당연도</th>
                    <th>제목</th>
                    <th>관련자료</th>
      
                  </tr>
                  <tr>
                    <th>2020년</th>
                    <td>53기 감사보고서</td>
                    <td><a href="/data/down/inspection_53_1.pdf" target="_blank"><span class="btn_download">별도 다운로드</span></a><a href="/data/down/inspection_53_2.pdf" target="_blank"><span class="btn_download">연결 다운로드</span></a></td>
                  </tr>
      
                  
                </tbody></table>
                <span style="display:inline-block;color:#cd0000;padding:5px 0;">※사업보고서 및 감사보고서는 DART전자공시시스템(dart.fss.or.kr)에 공시되어있습니다.</span>
              </td>
            </tr>
      
      
          </tbody></table>
        </div>
        <!-- //결산공고 -->
      
      
      
      
      
      
      
      </div>
      
      
      
        <div class="btn_top">
          <a href="#"><img src="${cp}/images/btn_top.gif" alt="페이지 상단으로"></a>
        </div>
      </div><!--/contents-->
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
              <a href="/about/ceo.html">회사소개</a>
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
  </body>
  <script>
    const clickBtn = (e) => {  
      const compo = document.getElementById(e.path[1].id+"compo");

      for(let i = 1; i <= 6; i++){  
        document.getElementById("btn"+i+"compo").className = 'invest_tabcon dn';
        btnList[i-1].classList.remove('on')
        if(e.path[1].id === btnList[i-1].id){
          compo.classList.remove('dn');
          btnList[i-1].classList.add('on')
        }
      }
    };

    const btn1 = document.getElementById("btn1");
    const btn2 = document.getElementById("btn2");
    const btn3 = document.getElementById("btn3");
    const btn4 = document.getElementById("btn4");
    const btn5 = document.getElementById("btn5");
    const btn6 = document.getElementById("btn6");

    const btnList = [btn1,btn2,btn3,btn4,btn5,btn6]

    btn1.addEventListener("click", clickBtn);
    btn2.addEventListener("click", clickBtn);
    btn3.addEventListener("click", clickBtn);
    btn4.addEventListener("click", clickBtn);
    btn5.addEventListener("click", clickBtn);
    btn6.addEventListener("click", clickBtn);
  </script>
</html>
