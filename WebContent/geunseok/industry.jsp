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
          <div class="pagetitle pn8">
            <h2>기업 구매 및 맞춤 개발</h2>
            <p>맞춤 프로모션 솔루션과 제품을 제공합니다.</p>
          </div>
          <div class="pagetabs">
            <ul class="m5">
              <li>
                <a href="http://mpms.monami.com/promotion/" target="_blank"
                  >기업 및 단체 구매</a
                >
              </li>
              <li class="on">
                <a href="./industry.html">산업용 맞춤 제품개발</a>
              </li>
            </ul>
          </div>

          <h3 class="title1">PRODUCT <span>CUSTOMIZED</span></h3>
          <div class="industry">
            <div class="bgarea1"></div>

            <h4 class="num_title"><span class="num">01</span> 사업 소개</h4>
            <div class="industry01">
              종합 문구를 선도하는 모나미는 가정, 사무실을 넘어 산업현장까지
              창의성과 간결함으로 효율성을 향상시키는데 주도적인 역할을 하고
              있으며, 특히 산업현장(자동차/섬유/선박 등)에서 필요한 제품을<br />
              용도에 맞춰 다양한 옵션으로 고객이 원하는 제품을 맞춤 개발하고
              있습니다.
              <div>
                <ul>
                  <li>
                    <span class="icon_01"></span>
                    고도화된<br />잉크 개발 능력
                  </li>
                  <li>
                    <span class="icon_02"></span>
                    전문 제조사의<br />생산 노하우
                  </li>
                  <li>
                    <span class="icon_03"></span>
                    맞춤 스펙<br />개발
                  </li>
                </ul>
              </div>
            </div>

            <h4 class="num_title">
              <span class="num">02</span> 산업용 OEM 제품 개발 프로세스
            </h4>
            <div class="industry02">
              <ol>
                <li class="process_1">
                  <span class="num">01</span>
                  <span class="tit">제품개발 의뢰</span>
                  <span class="con">문의하기를 통해 개발 문의</span>
                  <div></div>
                </li>
                <li class="process_2">
                  <span class="num">02</span>
                  <span class="tit">모나미 산업채널 전문팀 상담</span>
                  <span class="con"
                    >전문 연구원과 담당자가<br />미팅과 제안을 통해 맞춤
                    제안</span
                  >
                  <div></div>
                </li>
                <li class="process_3">
                  <span class="num">03</span>
                  <span class="tit">샘플 제작</span>
                  <span class="con">결정된 스펙으로 샘플 생산</span>
                  <div></div>
                </li>
                <li class="process_4">
                  <span class="num">04</span>
                  <span class="tit">품질검사</span>
                  <span class="con"
                    >모나미 전문 TQM이 생산된 샘플의<br />품질 및 사양을 검수
                    진행</span
                  >
                  <div></div>
                </li>
                <li class="process_5">
                  <span class="num">05</span>
                  <span class="tit">계약 및 발주서 접수</span>
                  <span class="con">계약 체결 후<br />사양 및 디자인 확정</span>
                  <div></div>
                </li>
                <li class="process_6">
                  <span class="num">06</span>
                  <span class="tit">디자인 및 생산</span>
                  <span class="con"
                    >고객 요청에 따라 디자인이 진행되고<br />스펙을 확정하여
                    생산</span
                  >
                  <div></div>
                </li>
                <li class="process_7">
                  <span class="num">07</span>
                  <span class="tit">최종 검수</span>
                  <span class="con">맞춤 생산된 제품을 납품 전 최종 확인</span>
                  <div></div>
                </li>
                <li class="process_8">
                  <span class="num">08</span>
                  <span class="tit">기업 납품</span>
                  <span class="con"
                    >협의된 일정에 맞춰<br />고객사에 납품
                  </span>
                  <div></div>
                </li>
              </ol>
              <a href="./inquiry.html">문의하기</a>
            </div>

            <h4 class="num_title">
              <span class="num">03</span> 산업용 OEM 제품
            </h4>
            <div class="industry03">
              <a href="/product/product_list.php?ccode=004005" class="btn_more"
                >더 많은 제품 보러 가기</a
              >
              <ul class="type_big">
                <li>
                  <a href="#"
                    ><img
                      src="${cp}/images/industry_prd_big_1_img.png"
                      alt="프로 페인트 마카"
                  /></a>
                  <div>
                    <h5>
                      <a href="#"
                        >프로 페인트 마카<span>PRO PAINT MARKER</span></a
                      >
                    </h5>
                    <ul>
                      <li>
                        새로운 기술을 적용한 저자극성 알코올 타입 잉크
                        (Xylene-Free)
                      </li>
                      <li>속건성으로 작업이 편리</li>
                      <li>내수성, 내광성이 우수하여 외부환경에 적합</li>
                      <li>
                        금속, 나무, 플라스틱, 유리 등 다양하고 거친 표면 및
                        기름진 표면에도 사용 가능
                      </li>
                      <li>플라스틱 바디와 클릭 적용으로 휴대가 편리</li>
                      <li>
                        내구성이 우수한 닙을 사용하여 쉽게 마모되지 않고 장시간
                        사용 가능
                      </li>
                    </ul>
                  </div>
                </li>
                <li>
                  <a href="#"
                    ><img
                      src="${cp}/images/industry_prd_big_2_img.png"
                      alt="스킬마카 CLIP / TWIN"
                  /></a>
                  <div>
                    <h5>
                      <a href="#"
                        >스킬마카 CLIP / TWIN<span
                          >SKILL MARKER CLIP/TWIN</span
                        ></a
                      >
                    </h5>
                    <ul>
                      <li>오일 묻은 금속재질에 사용 가능한 전문 마카</li>
                      <li>속건성으로 표기의 효율성 높음</li>
                      <li>물 또는 알칼리 수용액으로 흔적 없이 쉽게 세척됨</li>
                      <li>자동차, 선박 등 탈지공정이 있는 산업에서 사용</li>
                      <li>
                        새로운 기술을 적용한 저자극성 알코올 타입 잉크
                        (Xylene-Free)
                      </li>
                      <li>클립을 추가하여 휴대성 강화(CLIP)</li>
                      <li>
                        둥근닙과 사각닙의 트윈 타입으로 편리성과 효율성
                        강화(TWIN)
                      </li>
                    </ul>
                  </div>
                </li>
                <li>
                  <a href="#"
                    ><img
                      src="${cp}/images/industry_prd_big_3_img.png"
                      alt="프로 유성매직"
                  /></a>
                  <div>
                    <h5>
                      <a href="#"
                        >프로 유성매직<span
                          >PROFESSIONAL PERMANENT MARKER</span
                        ></a
                      >
                    </h5>
                    <ul>
                      <li>
                        사용자의 편의를 고려한 미끄럼 방지 고무그립으로 장갑을
                        낀 상태로도 편리하게 사용
                      </li>
                      <li>
                        금속, 나무, 플라스틱, 유리 등 다양하고 거친 표면에 사용
                        가능
                      </li>
                      <li>2009년도 레드닷 디자인 어워드 수상</li>
                      <li>기름진 표면에서도 사용 가능</li>
                    </ul>
                  </div>
                </li>
                <li>
                  <img
                    src="${cp}/images/industry_prd_big_4_img.png"
                    alt="고순도 마카 500"
                  />
                  <div>
                    <h5>고순도 마카 500<span>HIGH PURITY MARKER 500</span></h5>
                    <ul>
                      <li>
                        원자력 발전소, 항공기 부품, 조선소 등 금속부식에 민감한
                        산업에 적합
                      </li>
                      <li>
                        황 (S), 할로 ( CI, Br) 등 13개 규제 기준에 적합한 초
                        고순도 잉크
                      </li>
                      <li>
                        잉크 Lot에 따른 규제물질 공인 인증 성적서 발급 가능
                      </li>
                    </ul>
                  </div>
                </li>
              </ul>
              <ul class="type_small">
                <li>
                  <a href="#"
                    ><img
                      src="${cp}/images/industry_prd_small_1.png"
                      alt="생잉크 유성매직 120/121"
                  /></a>
                  <div>
                    <h5><a href="#">생잉크 유성매직 120/121</a></h5>
                    <span>유리 플라스틱, 금속, 나무 등 다양한 표면에 사용</span>
                  </div>
                </li>
                <li>
                  <img
                    src="${cp}/images/industry_prd_small_2.png"
                    alt="RoHS 마카 510"
                  />
                  <div>
                    <h5>RoHS 마카 510</h5>
                    <span>PCB 기판 제조 등 전기전자 제조 산업현장에 적합</span>
                  </div>
                </li>
                <li>
                  <a href="#"
                    ><img
                      src="${cp}/images/industry_prd_small_3.png"
                      alt="매직캡"
                  /></a>
                  <div>
                    <h5>매직캡</h5>
                    <span
                      >클립을 추가하여 휴대성 강화, 캡을 열고 닫기 편리</span
                    >
                  </div>
                </li>
                <li>
                  <img
                    src="${cp}/images/industry_prd_small_4.png"
                    alt="대용량 포스터칼라"
                  />
                  <div>
                    <h5>대용량 포스터칼라</h5>
                    <span>목재, 철판 가공시 편리한 먹줄용 백색 잉크</span>
                  </div>
                </li>
                <li>
                  <a href="#"
                    ><img
                      src="${cp}/images/industry_prd_small_5.png"
                      alt="데코마카 460"
                  /></a>
                  <div>
                    <h5><a href="#">데코마카 460</a></h5>
                    <span
                      >유리, 플라스틱, 금속 등 다양한 표면에 채색 가능한
                      마카</span
                    >
                  </div>
                </li>
                <li>
                  <a href="#"
                    ><img
                      src="${cp}/images/industry_prd_small_6.png"
                      alt="타일틈새마카 401"
                  /></a>
                  <div>
                    <h5><a href="#">타일틈새마카 401</a></h5>
                    <span
                      >욕실, 주방의 더러워진 타일틈새를 깨끗하게 백색으로
                      마킹</span
                    >
                  </div>
                </li>
              </ul>
            </div>
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
