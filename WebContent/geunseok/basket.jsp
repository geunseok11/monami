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
      <!-- 헤더 끝 SECTION-->
      <!-- 바디 상단 이미지 시작 SECTION-->
      <div id="visaul">메인화면 상단에 이미지 들어갈 곳</div>
      <!-- 바디 상단 이미지 끝  SECTION-->
      <!-- 본문 시작  SECTION-->
      <div id="container">
        <main id="contents" class="order cart" style="padding-top: 162px">
          <div class="pagetitle pn1">
            <h2>장바구니</h2>
            <!-- <p>
                        언제 어디서나 모나미는 당신 곁에 있습니다.																				
                        </p> -->
          </div>
          <div class="pagetabs">
            <ul class="m1">
              <li><a href="/about/ceo.html">CEO 메시지</a></li>
              <li><a href="/about/company.html">회사정보</a></li>
              <li><a href="/about/history.html">회사연혁</a></li>
              <li><a href="./investment.html">투자정보</a></li>
              <li class="on"><a href="./ci.html">CI</a></li>
              <li>
                <a href="http://recruit.monami.co.kr/" target="_blank">
                  채용정보
                </a>
              </li>
              <li><a href="./location.html">찾아오시는 길</a></li>
            </ul>
          </div>

          <h3 class="title1">MONAMI <span>장바구니</span></h3>
          <div class="inner cartcon">
            <!-- 일반장바구니// -->
            <h3>일반장바구니 (1)</h3>
            <ul class="infotxt">
              <li>
                모나미 배송상품과 업체배송상품은 배송비가 별도로 부과되며,
                산간도서지역은 추가 배송비가 발생됩니다.
              </li>
              <li>
                장바구니에 담긴 상품은 최대 30일까지 보관되며 30일 경과 시 자동
                삭제됩니다.
              </li>
            </ul>

            <div class="form-area">
              <form
                method="post"
                name="basketForm"
                action="${cp}/product/BasketOk.bo"
              >
                <fieldset class="list-field">
                  <legend class="hide">장바구니</legend>

                  <table>
                    <caption>
                      장바구니 목록
                    </caption>
                    <colgroup>
                      <col style="width: 40px" />
                      <col style="width: 96px" />
                      <col />
                      <col style="width: 120px" />
                      <col style="width: 110px" />
                      <col style="width: 120px" />
                      <col style="width: 120px" />
                      <col style="width: 110px" />
                      <col style="width: 110px" />
                    </colgroup>

                    <thead>
                      <tr>
                        <th>
                          <label>
                            <input
                              type="checkbox"
                              class="small"
                              id="chkCartAll"
                            /><span></span><span class="hide">전체선택</span>
                          </label>
                        </th>
                        <th colspan="2">상품명</th>
                        <th>상품금액</th>
                        <th>수량</th>
                        <th>주문금액<small>(할인금액)</small></th>
                        <th>업체</th>
                        <th>배송비</th>
                        <th>주문</th>
                      </tr>
                    </thead>

                    <tbody>
                      <c:choose>
                        <c:when
                          test="${basketlist.size() >0 and basketlist != null}"
                        >
                          <c:forEach var="basket" items="${basketlist}">
                            <tr>
                              <td>
                                <label>
                                  <input
                                    type="checkbox"
                                    name="cartIdx"
                                    id="cartIdx_0"
                                    value="561062"
                                    class="small"
                                    data-orderseq="1"
                                    data-sellercode="1350053"
                                    data-sellerfreeshippingyn="Y"
                                    data-sellerfreeshippingprice="20000"
                                    data-sellershippingprice="3000"
                                    data-packingsize="1"
                                    data-deliveryfee="0"
                                    data-deliveryfeetype="Y"
                                    data-rowcnt="1"
                                    data-goodsno="MG000016311"
                                    data-optionitemidx="100122"
                                    data-price="23000"
                                    data-gradediscountyn="Y"
                                    data-gradediscountprice="0"
                                    data-gradediscountprice1="0"
                                    data-addserviceyn="N"
                                    data-addserviceprice="0"
                                    data-addservicecontent=""
                                    data-addservicetypeface=""
                                    data-addservicetypefacenm=""
                                    data-directshipyn="N"
                                    data-ordertargetsetyn="N"
                                    data-paylimittypecd="N"
                                    data-reservationyn="N"
                                    data-classidx=""
                                    data-classday=""
                                    data-classtime=""
                                    onclick="calcPrice();"
                                  /><span></span>
                                </label>
                              </td>
                              <td>
                                <figure>
                                  <img
                                    src="https://d1bg8rd1h4dvdb.cloudfront.net/upload/imgServer/product/goods/MG000016311/main/MG000016311_REP_THUMB_80X80_20210416143936.blob"
                                    onerror="this.src='/w/images/80x80.jpg'"
                                    alt=""
                                    class="loading"
                                    data-was-processed="true"
                                  />
                                </figure>
                              </td>
                              <td>
                                <div class="info-area">
                                  <a
                                    href="/w/product/productDetail.do?goodsNo=MG000016311"
                                    class="txt-subject"
                                    >${basket.prod_name}
                                    <!-- 조터 빅토리아 바이올렛 CT 볼펜 -->
                                  </a>
                                </div>
                              </td>
                              <td class="txt-right">
                                <em>${basket.prod_price}</em>원
                              </td>

                              <td>
                                <div class="ea-area">
                                  <input
                                    type="text"
                                    name="goodsCnt"
                                    id="goodsCnt_561062"
                                    title="수량 입력"
                                    value="${basket.prod_count}"
                                    onblur="exitCnt(this);"
                                    maxlength="4"
                                    data-stockcnt="7"
                                    data-convstockcnt="1"
                                    data-oldcnt="1"
                                  />
                                  <button
                                    type="button"
                                    class="btn-down"
                                    onclick="removeCnt(this);"
                                  >
                                    수량 낮추기
                                  </button>
                                  <button
                                    type="button"
                                    class="btn-up"
                                    onclick="addCnt(this);"
                                  >
                                    수량 올리기
                                  </button>
                                </div>
                                <button
                                  type="button"
                                  class="btn-whitegray small"
                                  onclick="changeCnt('561062');"
                                >
                                  변경
                                </button>
                              </td>
                              <td class="txt-right">
                                <em id="payPrice_561062"
                                  >${basket.price * basket.count}</em
                                >원
                              </td>

                              <td>
                                <small>
                                  모나미배송

                                  <span class="deliveryinfo">
                                    <a href="#" class="btn-popinfo type-over"
                                      ><strong>!</strong></a
                                    >
                                    <div class="popinfo">
                                      <h4>배송정보</h4>
                                      <p>
                                        16시 이전 주문 시
                                        당일출고(공휴일,토/일요일제외)
                                      </p>
                                    </div>
                                  </span>
                                </small>
                              </td>

                              <td class="txt-right">
                                <em>0</em>원

                                <span class="deliveryinfo">
                                  <a href="#" class="btn-popinfo type-over"
                                    ><strong>!</strong></a
                                  >
                                  <div class="popinfo">
                                    <h4>배송정보</h4>
                                    <p>
                                      16시 30분 이전 주문/결제 시 당일 발송<br />
                                      (업체배송, 각인 상품 제외 전 품목)
                                    </p>
                                  </div>
                                </span>
                              </td>

                              <td class="btn">
                                <button
                                  type="button"
                                  class="btn-gray small"
                                  onclick="orderCheck('561062');"
                                >
                                  바로주문
                                </button>

                                <button
                                  type="button"
                                  class="btn-whitegray small"
                                  onclick="removeCart('561062');"
                                >
                                  삭제
                                </button>
                              </td>
                            </tr>
                          </c:forEach>
                        </c:when>
                        <c:otherwise>
                          <tr>
                            <td>
                              <h3>장바구니에 상품이 없습니</h3>
                            </td>
                          </tr>
                        </c:otherwise>
                      </c:choose>
                    </tbody>
                  </table>

                  <div class="btn-area">
                    <label
                      ><input
                        type="checkbox"
                        class="small"
                        id="chkCartAll2"
                      /><span></span><span class="hide">전체선택</span></label
                    >

                    <button
                      type="button"
                      class="btn-gray small"
                      onclick="addWishList();"
                    >
                      찜하기
                    </button>

                    <button
                      type="button"
                      class="btn-whitegray small"
                      onclick="removeSelected();"
                    >
                      선택삭제
                    </button>
                  </div>
                </fieldset>

                <fieldset class="price-field">
                  <legend class="hide">결제내역</legend>
                  <dl class="orderprice">
                    <dt>상품금액</dt>
                    <dd><em id="totalPrice">23,000</em>원</dd>
                  </dl>
                  <dl class="discount">
                    <dt>할인금액</dt>
                    <dd><em id="totalDiscountPrice">0</em>원</dd>
                  </dl>
                  <dl class="shipping">
                    <dt>배송비</dt>
                    <dd><em id="deliveryPrice">0</em>원</dd>
                  </dl>
                  <dl class="total">
                    <dt>총 결제금액</dt>
                    <dd><em id="totalPayPrice">23,000</em>원</dd>
                  </dl>
                </fieldset>

                <div class="btn-area">
                  <a
                    href="#popCartClubSelect"
                    class="btn-gray"
                    onclick="addClubCartPop();"
                    >클럽장바구니담기</a
                  >
                  <!-- <button type="button" class="btn-npay">NPay 구매하기</button> -->
                  <script
                    type="text/javascript"
                    src="https://pay.naver.com/customer/js/naverPayButton.js"
                    charset="UTF-8"
                  ></script>
                  <script
                    type="text/javascript"
                    src="https://pay.naver.com/customer/js/innerNaverPayButton.js?site_preference=normal&amp;456964"
                    charset="UTF-8"
                  ></script>
                  <link
                    id="NAVER_PAY_STYLE"
                    type="text/css"
                    rel="stylesheet"
                    href="https://img.pay.naver.net/static/css/button/button2.css?456964"
                  />

                  <div
                    id="NC_ID_1645071120125808"
                    class="npay_storebtn_bx npay_type_C_1_1"
                  >
                    <div id="NPAY_BUTTON_BOX_ID" class="npay_button_box">
                      <div class="npay_button">
                        <div class="npay_text">
                          <span class="npay_blind"
                            >NAVER 네이버 ID로 간편구매 네이버페이</span
                          >
                        </div>
                        <table
                          class="npay_btn_list"
                          cellspacing="0"
                          cellpadding="0"
                        >
                          <tbody>
                            <tr>
                              <td class="npay_btn_item">
                                <a
                                  id="NPAY_BUY_LINK_IDNC_ID_1645071120125808"
                                  href="#"
                                  class="npay_btn_link npay_btn_pay"
                                  style="box-sizing: content-box"
                                  title="새창"
                                  ><span class="npay_blind"
                                    >네이버페이 구매하기</span
                                  ></a
                                >
                              </td>
                            </tr>
                          </tbody>
                        </table>
                      </div>
                      <div id="NPAY_EVENT_ID" class="npay_event">
                        <a
                          id="NPAY_PROMOTION_PREV_IDNC_ID_1645071120125808"
                          href="#"
                          class="npay_more npay_more_prev"
                          ><span class="npay_blind">이전</span></a
                        >
                        <p
                          id="NPAY_PROMOTION_IDNC_ID_1645071120125808"
                          class="npay_event_text"
                        >
                          <strong class="event_title">CU더블혜택</strong
                          ><a
                            class="event_link"
                            href="https://m-campaign.naver.com/collect/v2/?code=2021120101_210201_008_inc_103101_20211201001_shopping_pay&amp;target=https://m-campaign.naver.com/npay/cuplus_npay/"
                            target="_blank"
                            title="새창"
                            >최대 5%적립+최대5%할인</a
                          >
                        </p>
                        <a
                          id="NPAY_PROMOTION_NEXT_IDNC_ID_1645071120125808"
                          href="#"
                          class="npay_more npay_more_next"
                          ><span class="npay_blind">다음</span></a
                        >
                      </div>
                    </div>
                  </div>

                  <button
                    type="button"
                    class="btn-whitegray"
                    onclick="orderSelected();"
                  >
                    선택상품주문
                  </button>
                  <button
                    type="button"
                    class="btn-black"
                    onclick="orderTotal();"
                  >
                    전체상품주문
                  </button>
                </div>
              </form>
            </div>
            <!-- //일반장바구니 -->

            <!-- 정기배송 장바구니// -->
            <h3>정기배송 장바구니 (0)</h3>
            <ul class="infotxt">
              <li>
                업체배송상품이 정기배송에 포함될 경우 업체배송정책에 따라
                배송비가 적용됩니다.
              </li>
              <li>
                정기배송상품 중 품절상품이 존재할 경우 배송여부는 정기배송신청
                시 설정이 가능합니다.
              </li>
              <li>
                정기배송 실결제금액은 결제시점에 따라 금액이 변동될 수 있습니다.
              </li>
            </ul>

            <div class="form-area">
              <div class="nodata">
                모나미몰 회원에게 제공되는 서비스 입니다.
              </div>
            </div>
            <!-- //정기배송 장바구니 -->
          </div>
        </main>
      </div>
      <!-- 본문 끝 SECTION-->
      <!-- 푸터 시작 SECTION-->
      <%@ include file="/doyoon/footer.jsp"%>
      <!-- 푸터 끝 -->
    </div>
  </body>
  <script>
    function orderTotal() {
      const basketForm = document.basketForm;
      basketForm.submit();
    }
  </script>
</html>
