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
    <link rel="stylesheet" href="${cp}/css/pen.css" />
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
              <li class="on"><a href="./ci.html">CI</a></li>
              <li>
                <a href="http://recruit.monami.co.kr/" target="_blank"
                  >채용정보</a
                >
              </li>
              <li><a href="./location.html">찾아오시는 길</a></li>
            </ul>
          </div>

          <h3 class="title1">MONAMI <span>CI</span></h3>
          <div class="ci conwrap">
            <div class="ci_logo">
              <div class="en">
                <div class="num_title">
                  <span class="num">01</span> English Logo
                </div>
                <div class="logoarea">
                  <img src="${cp}/images/ci_en_logo.jpeg" alt="" />
                </div>
                <div class="downs">
                  <a href="/data/down/English Logo_JPG.zip"
                    >JPG파일 다운로드 ↓</a
                  >
                  <a href="/data/down/English Logo_AI.zip">AI파일 다운로드 ↓</a>
                </div>
              </div>
              <div class="kr">
                <div class="num_title">
                  <span class="num">02</span> Korean Logo
                </div>
                <div class="logoarea">
                  <img src="${cp}/images/ci_kr_logo.jpeg" alt="" />
                </div>
                <div class="downs">
                  <a href="/data/down/Korea Logo_JPG.zip">JPG파일 다운로드 ↓</a>
                  <a href="/data/down/Korea Logo_AI.zip">AI파일 다운로드 ↓</a>
                </div>
              </div>
              <div class="textbox">
                <div class="align">
                  <p>
                    MONAMI의 CI는
                    <span>모나미 브랜드의 핵심인 Advanced Experience</span>를
                    전달하는 <br />
                    요소로 3E(EXPERTISE, EMOTION, ENERGETIC)를 기준으로 새롭게
                    재도약하는 젊은 모나미의 사업 비전과 오랜 전통 속에 축적된
                    신뢰를 담아내고 있습니다.
                  </p>
                  <p>
                    MONAMI 'I'는 사명의 친구를 대변하는 아이콘으로 소비자를
                    맞이하는 <span>'모나미의 마음'</span> 과 전문가적인 자세로
                    <br />
                    언제나 소비자 중심의 기업으로써 겸손한 자세로 임하겠다는
                    의미를 내포하였습니다. <br />
                    이는
                    <span
                      >고개 숙여 정중히 인사하는 기업 소속원들의 모습을
                      상징</span
                    >하며 로고타입의 둥근 아치의 형태의 반복으로 율동감을 부여해
                    보다 <br />
                    유연해지고 역동적으로 변모한 모나미의 조직을 상징하고자
                    하였습니다.
                  </p>
                </div>
              </div>
            </div>
            <div class="ci_color">
              <div class="num_title">
                <span class="num">03</span> Color Logo
              </div>
              <div class="rule_box">
                <span class="wh">WHITE</span><span class="bk">BLACK</span>
                <div class="rule_ex">
                  <img
                    src="${cp}/images/ci_color_img1.jpeg"
                    alt="로고 컬러 예시"
                  />
                </div>
              </div>
            </div>

            <div class="ci_rule">
              <div class="num_title">
                <span class="num">04</span> Prohibited Rule System
              </div>
              <div class="rule_box">
                <div class="rule_ex">
                  <img
                    src="${cp}/images/ci_rule_img1.jpeg"
                    alt="잘못된 로고 예시"
                  />
                </div>
                <div class="text_info">
                  <ul>
                    <li>
                      A . 코퍼레이트마크 색상 규정 이외의 색상은 사용할 수
                      없습니다.
                    </li>
                    <li>
                      B . 코퍼레이트마크 안에 임의의 PATTERN을 사용할 수 없으며,
                      라인으로 사용할 수 없습니다.
                    </li>
                    <li>
                      C . 코퍼레이트마크의 형태를 임의로 변형할 수 없습니다.
                    </li>
                    <li>
                      D . 코퍼레이트마크의 LINE DROP SHADOW를 적용하거나 임의로
                      디자인 요소를 첨가할 수 없습니다.
                    </li>
                  </ul>
                </div>
              </div>
            </div>
            <div class="ci_character">
              <div class="character_tit">Character Mobee</div>

              <div class="mobee1">
                <div class="num_title">
                  <span class="num">01</span> Mobee Logo_기본형
                </div>
                <div class="logoarea">
                  <img src="${cp}/images/ci_mobee_logo1.jpeg" alt="" />
                </div>
                <div class="downs">
                  <a href="/data/down/Mobee Logo(기본형)_JPG.zip"
                    >JPG파일 다운로드 ↓</a
                  >
                  <a href="/data/down/Mobee Logo(기본형)_AI.zip"
                    >AI파일 다운로드 ↓</a
                  >
                </div>
              </div>
              <div class="mobee2">
                <div class="num_title">
                  <span class="num">02</span> Mobee Logo_응용형
                </div>
                <div class="logoarea">
                  <img src="${cp}/images/ci_mobee_logo2.jpeg" alt="" />
                </div>
                <div class="downs">
                  <a href="/data/down/Mobee Logo(응용형)_AI.zip"
                    >JPG파일 다운로드 ↓</a
                  >
                  <a href="/data/down/Mobee Logo(응용형)_AI.zip"
                    >AI파일 다운로드 ↓</a
                  >
                </div>
              </div>

              <div class="mobee_profile">
                <div class="num_title">
                  <span class="num">03</span> Mobee Profile
                </div>
                <div class="character_profile">
                  <div class="imgarea">
                    <a class="cprev"
                      ><img src="${cp}/images/ci_character_prev.gif" alt=""
                    /></a>
                    <a class="cnext"
                      ><img src="${cp}/images/ci_character_next.gif" alt=""
                    /></a>
                    <ul>
                      <li>
                        <img src="${cp}/images/ci_character_01.jpeg" alt="" />
                      </li>
                    </ul>
                  </div>
                  <div class="mobee_info">
                    <ul>
                      <li>
                        <dl>
                          <dt>이 름</dt>
                          <dd>모비(mobee)</dd>
                        </dl>
                        <dl>
                          <dt>성 격</dt>
                          <dd>
                            천진난만한 얼굴에 4차원적 행동을 즐김, 먼저 몸으로
                            보여주는 행동가이기는 하나<br />
                            어설프고 실수투성이,
                            <span
                              >호기심이 많고 도전정신이 강하고 화낼줄 모르는
                              순둥이</span
                            >
                          </dd>
                        </dl>
                        <dl>
                          <dt>취 미</dt>
                          <dd>블로그하기, 여행</dd>
                        </dl>
                        <dl>
                          <dt>특 징</dt>
                          <dd>
                            보통의 벌처럼 꿀을 좋아하지 않음.<br />
                            단것을 먹으면 경기를 일으키는 독특한 식성,
                            블랙커피를 좋아함.<br />
                            여러 디자인 후드티를 수집하여 변장술을 즐김.<br />
                            얼리어답터, 새로운 신제품과 기술에 관심이 많음.
                          </dd>
                        </dl>
                      </li>
                    </ul>
                  </div>
                </div>
              </div>

              <div class="mobee3">
                <div class="num_title">
                  <span class="num">04</span> Mobee Character_응용동작
                </div>
                <div class="logoarea">
                  <img src="${cp}/images/ci_mobee_img1.jpeg" alt="" />
                </div>
              </div>
              <div class="mobee4">
                <div class="num_title">
                  <span class="num">05</span> Mobee Character_표정
                </div>
                <div class="logoarea">
                  <img src="${cp}/images/ci_mobee_img2.jpeg" alt="" />
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
