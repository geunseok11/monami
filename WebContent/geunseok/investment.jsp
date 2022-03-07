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
    <link rel="stylesheet" href="${cp}/css/stylebasket.css" />
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
    <%@ include file="/doyoon/footer.jsp"%>
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
