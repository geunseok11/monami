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
                                        <a href="${cp}/index.html">HOME</a>
                                    </li>
                                    <li>
                                        <a href="${cp}/sitemap.html">SITE MAP</a>
                                    </li>
                                    <li>
                                        <a href=".${cp}/Inquiry.html">CONTACT US</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="gnb">
                        <div class="conwrap">
                            <h1>
                                <a href="./index.html"><img src=".${cp}/images/logo.jpeg" alt="" /></a>
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
                                                <a href="${cp}/geunseok/investment.html">투자정보</a>
                                            </li>
                                            <li>
                                                <a href=".${cp}/geunseok/ci.html">CI</a>
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
                                        <ul>
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
            <div id="container">
                <main id="contents" class="order ordersheet" style="padding-top: 162px;">
                    <div class="pagetitle pn1">
                        <h2>주문결제</h2>
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
    
                    <h3 class="title1">MONAMI <span>주문결제</span></h3>
                    <div class="inner">
                        <!-- 주문자 정보// -->
                        <fieldset class="orderer-field">
                            <legend class="tit">주문자 정보</legend>
            
                            <table>
                                <caption>주문자 정보 입력</caption>
            
                                <colgroup>
                                    <col style="width: 80px;">
                                    <col style="width: 300px;">
                                    <col style="width: 105px;">
                                    <col style="width: 295px;">
                                    <col style="width: 75px;">
                                    <col>
                                </colgroup>
            
                                <tbody>
                                    <tr>
                                        <th>주문자</th>
                                        <td><input type="text" name="senderNm" id="senderNm" value="" maxlength="50" placeholder="주문자명 입력" title="주문자명 입력"></td>
                                        <th>휴대폰 번호</th>
                                        <td><input type="text" name="senderHp" id="senderHp" value="" maxlength="11" onblur="exitInput(this);" placeholder="숫자만 입력(11자리)" title="휴대폰번호 입력"></td>
                                        <th>이메일</th>
                                        <td><input type="text" name="senderEmail" id="senderEmail" value="" maxlength="100" placeholder="이메일 입력" title="이메일 입력"></td>
                                    </tr>
                                </tbody>
                            </table>
                        </fieldset>
                        <!-- //주문자 정보 -->
            
                        <!-- 배송지 정보// -->
                        <form name="orderForm" method="post" action="${cp}/user/OrderOk.us">
                        <fieldset class="delivery-field">
                            <legend class="tit">배송지 정보</legend>
                            
            
                            <table class="tbl-type2">
                                <caption>배송지 정보 입력</caption>
            
                                <colgroup>
                                    <col style="width: 120px;">
                                    <col>
                                </colgroup>
            
                                <tbody>
                                    <tr>
                                        <th>이름</th>
                                        <td><input type="text" name="user_name" id="user_name" value="${user.user_name}" maxlength="50" placeholder="이름 입력" title="이름 입력"></td>
                                    </tr>
                                    <tr>
                                        <th>휴대폰번호</th>
                                        <td><input type="text" name="user_phone" id="user_phone" value="${user.user_phone}" maxlength="11" onblur="exitInput(this);" placeholder="숫자만 입력(11자리)" title="휴대폰번호 입력"></td>
                                    </tr>
                                    
                                        <tr>
                                            <th>주소</th>
                                            <td>
                                                <div class="form-addr">
                                                    <button type="button" class="btn-white" onclick="addrPopup();">주소찾기</button>
                                                    <input type="text" name="receiverZipcode" id="receiverZipcode" value="" maxlength="5" onblur="exitInput(this);" readonly="readonly" title="우편번호 입력"> 
                                                    <input type="text" name="user_addr" id="user_addr" value="${user.user_addr}" maxlength="100" readonly="readonly" title="주소 입력"> 
                                                    <input type="text" name="receiverAddrDetail" id="receiverAddrDetail" value="" maxlength="100" placeholder="상세 주소 입력" title="상세 주소 입력">
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th>배송메모</th>
                                            <td>
                                                <div class="form-deliverymemo">
                                                    <select name="orderMemoVal" id="orderMemoVal" class="orderMemoVal">
                                                        <option value="">배송메모 선택</option>
                                                        
                                                        
                                                            
                                                            <option value="ORDER_MEMO10" data-codenm="배송 전 연락바랍니다.">
                                                                배송 전 연락바랍니다.
                                                            </option>
                                                        
                                                            
                                                            <option value="ORDER_MEMO20" data-codenm="부재시 경비실에 맡겨주세요.">
                                                                부재시 경비실에 맡겨주세요.
                                                            </option>
                                                        
                                                            
                                                            <option value="ORDER_MEMO30" data-codenm="부재시 문앞에 놓아주세요.">
                                                                부재시 문앞에 놓아주세요.
                                                            </option>
                                                        
                                                            
                                                            <option value="ORDER_MEMO40" data-codenm="부재시 휴대폰으로 연락주세요.">
                                                                부재시 휴대폰으로 연락주세요.
                                                            </option>
                                                        
                                                            
                                                            <option value="ORDER_MEMO50" data-codenm="문앞에 놓아주세요.">
                                                                문앞에 놓아주세요.
                                                            </option>
                                                        
                                                            
                                                            <option value="ORDER_MEMO90" data-codenm="직접입력">
                                                                직접입력
                                                            </option>
                                                        
                                                    </select><div class="dropdown orderMemoVal" tabindex="0"><span class="current">배송메모 선택</span><div class="list"><ul><li class="option selected" data-value="" data-display-text="">배송메모 선택</li><li class="option " data-value="ORDER_MEMO10" data-display-text="">
                                                                배송 전 연락바랍니다.
                                                            </li><li class="option " data-value="ORDER_MEMO20" data-display-text="">
                                                                부재시 경비실에 맡겨주세요.
                                                            </li><li class="option " data-value="ORDER_MEMO30" data-display-text="">
                                                                부재시 문앞에 놓아주세요.
                                                            </li><li class="option " data-value="ORDER_MEMO40" data-display-text="">
                                                                부재시 휴대폰으로 연락주세요.
                                                            </li><li class="option " data-value="ORDER_MEMO50" data-display-text="">
                                                                문앞에 놓아주세요.
                                                            </li><li class="option " data-value="ORDER_MEMO90" data-display-text="">
                                                                직접입력
                                                            </li></ul></div></div> 
                                                    <input type="text" name="orderMemo" id="orderMemo" value="" maxlength="100" placeholder="배송메모 입력" title="배송메모 입력" style="display:none;">
                                                </div>
                                            </td>
                                        </tr>
                                    
                                </tbody>
                            </table>
                        </fieldset>
                        <!-- //배송지 정보 -->
            
                        <!-- 주문상품정보// -->
                        <fieldset class="list-field">
                            <legend class="tit">주문상품정보</legend>
            
                            <table>
                                <caption>주문상품정보 목록</caption>
                                <colgroup>
                                    <col style="width: 120px">
                                    <col>
                                    <col style="width: 120px">
                                    <col style="width: 110px">
                                    <col style="width: 120px">
                                    <col style="width: 120px">
                                    <col style="width: 130px">
                                </colgroup>
            
                                <thead>
                                    <tr>
                                        <th colspan="2">상품명</th>
                                        <th>상품금액</th>
                                        <th>수량</th>
                                        <th>주문금액</th>
                                        <th>업체</th>
                                        <th>배송비</th>
                                    </tr>
                                </thead>
            
                                <tbody>
                                           	<c:choose>
                                           	<c:when test="${basketlist != null and basketlist.size() > 0}">
                                           		<c:forEach var="basket" items="${basketlist}">
                                           			 <tr class="tr_goods">
                                                    <td>
                                                        <figure>
                                                            <img src="https://d1bg8rd1h4dvdb.cloudfront.net/upload/imgServer/product/goods/MG000016311/main/MG000016311_REP_THUMB_80X80_20210416143936.blob" onerror="this.src='/w/images/80x80.jpg'" alt="" class="loading" data-was-processed="true">
                                                        </figure>
                                                    </td>
                                                    <td>
                                                        <div class="info-area">
                                                            <a href="/w/product/productDetail.do?goodsNo=MG000016311" target="_blank" class="txt-subject">${basket.prod_name}  </a>
                                                            
                                                            
            
                                                        </div>
                                                    </td>
                                                    <td class="txt-right">
                                                        <em>${basket.prod_price}</em>원
                                                    </td>
                                                    <td>
                                                        ${basket.prod_count}
                                                    </td>
                                                    <td class="txt-right">
                                                        <em id="payPrice_685885">${basket.prod_price * basket.prod_count}</em>원
                                                    </td>
                                                    <td>
                                                        
                                                            
                                                                <small> 
                                                                    모나미배송
                                                                </small>
                                                            
                                                            
                                                        
                                                    </td>
                                                    
                                                        <td class="txt-right">
                                                            
                                                                
                                                                
                                                                    <em>0</em>원
                                                                
                                                            
                                                        </td>
                                                    
                                                </tr>
                                           		</c:forEach>
                                           	</c:when>
                                           	<c:otherwise>
                                           		<tr class="tr_goods">
                                           			결제할 상품이 없습니다
                                           		</tr>
                                           	</c:otherwise>
                                           	</c:choose>                          
            
                                              <!--   <tr class="tr_goods">
                                                    <td>
                                                        <figure>
                                                            <img src="https://d1bg8rd1h4dvdb.cloudfront.net/upload/imgServer/product/goods/MG000016311/main/MG000016311_REP_THUMB_80X80_20210416143936.blob" onerror="this.src='/w/images/80x80.jpg'" alt="" class="loading" data-was-processed="true">
                                                        </figure>
                                                    </td>
                                                    <td>
                                                        <div class="info-area">
                                                            <a href="/w/product/productDetail.do?goodsNo=MG000016311" target="_blank" class="txt-subject">조터 빅토리아 바이올렛  CT 볼펜  </a>
                                                            
                                                            
            
                                                        </div>
                                                    </td>
                                                    <td class="txt-right">
                                                        <em>23,000</em>원
                                                    </td>
                                                    <td>
                                                        1
                                                    </td>
                                                    <td class="txt-right">
                                                        <em id="payPrice_685885">23,000</em>원
                                                    </td>
                                                    <td>
                                                        
                                                            
                                                                <small> 
                                                                    모나미배송
                                                                </small>
                                                            
                                                            
                                                        
                                                    </td>
                                                    
                                                        <td class="txt-right">
                                                            
                                                                
                                                                
                                                                    <em>0</em>원
                                                                
                                                            
                                                        </td>
                                                    
                                                </tr> -->
                                     
                                </tbody>
                            </table>
                        </fieldset>
                        </form>
                        <!-- //주문상품정보 -->
            
                        <div class="bottom-area">
                            <div class="left-area">
                                <!-- 결제수단선택 사용// -->
                                <fieldset class="pay-field">
                                    <legend class="tit">결제수단선택</legend>
            
                                    <div class="pay-div active">
                                        <strong>결제방법</strong>
                                        
                                            
                                            
                                                <label><input type="radio" name="selectPayTypeRdo" value="PAY_TYPE10" checked="checked" class="small" data-paydiv="pay-credit"><span>신용카드</span></label>
                                                <label><input type="radio" name="selectPayTypeRdo" value="PAY_TYPE20" class="small" data-paydiv="pay-escrow"><span>실시간계좌이체</span></label>
                                                <!-- 블랙프라이데이 이벤트 시 사용안함 -->
                                                <label><input type="radio" name="selectPayTypeRdo" value="PAY_TYPE25" class="small" data-paydiv="pay-escrow"><span>가상계좌</span></label>
                                                <label><input type="radio" name="selectPayTypeRdo" value="PAY_TYPE45" class="small"><span>휴대폰결제</span></label>
                                                <label><input type="radio" name="selectPayTypeRdo" value="PAY_TYPE30" class="small"><span><span class="samsungpay smartpay" title="삼성페이"></span></span></label>
                                                <label><input type="radio" name="selectPayTypeRdo" value="PAY_TYPE35" class="small"><span><span class="payco smartpay" title="페이코"></span></span></label>
                                                <label><input type="radio" name="selectPayTypeRdo" value="PAY_TYPE40" class="small"><span><span class="kakaopay smartpay" title="카카오페이"></span></span></label>
                                            
                                        
                                    </div>
            
                                    <!-- 신용카드// -->
                                    <div class="pay-credit active">
                                        <strong>결제안내</strong>
                                        <a href="#popInstallment" class="btn-installment" onclick="fn.popupOpen('#popInstallment');">무이자할부안내</a>
                                    </div>
                                    <!-- //신용카드 -->
            
                                    <!-- 에스크로 결제// -->
                                    <div class="pay-escrow ">
                                        <strong>에스크로 결제</strong> 
                                        <label><input type="radio" name="escrowYn" value="Y" class="small"><span>사용함</span></label> 
                                        <label><input type="radio" name="escrowYn" value="N" checked="" class="small"><span>사용안함</span></label>
                                        <div class="escrow-txt">
                                            <b>* 에스크로 서비스란?</b> 
                                            <span> 선불식 온라인 전자상거래의 상품매매에서 KG이니시스를
                                                통하여 결제된 상품 대금을<br> KG이니시스가 일정한 약속에 의하여 보관하며, 구매자가 승인하거나 그에
                                                준하는 조건이<br> 적용됐을 경우 일정기간 경과뒤 판매자 측에 매매자금을 보내주는 서비스입니다.<br>
                                                즉, 온라인 전자상거래(또는 오프라인 상거래)에 있어 구매자와 판매자 모두를<br> 보호하기 위한 서비스
                                                입니다.
                                            </span>
                                        </div>
                                    </div>
                                    <!-- //에스크로 결제 -->
                                </fieldset>
                                <!-- //결제수단선택 사용 -->
                            </div>
            
                            <div class="right-area" style="position: absolute; top: 14px; right: 0px; bottom: auto;">
                                <div class="rcon">
                                    <!-- 결제정보// -->
                                    <fieldset class="price-field">
                                        <legend class="tit">결제정보</legend>
                                        <div>
                                            <ul>
                                                <li>
                                                    <strong>주문금액</strong> 
                                                    <em id="totalOrderAmt">23,000</em>원
                                                </li>
                                                <li class="bar">
                                                    <strong>배송비</strong> 
                                                    <em>0</em>원
                                                </li>
                                            </ul>
                                        </div>
                                    </fieldset>
                                    <!-- //결제정보 -->
            
                                    <!-- 약관동의// -->
                                    <fieldset class="agree-field">
                                        <legend class="tit">약관동의</legend>
            
                                        <div>
                                            <ul>
                                                <li class="all">
                                                    <label><input type="checkbox" name="allAgreement" id="allAgreement" value="Y" class="small"><span>전체동의</span></label>
                                                </li>
                                                
                                                <li>
                                                    <label><input type="checkbox" name="agreementYn" id="agreementYn" value="Y" class="small classAgreement"><span>주문할 상품설명에 명시된 내용과 사용조건을 확인하였으며, <br>취소. 환불규정에 동의합니다. </span></label>
                                                </li>
                                                
                                                <li>
                                                    <label><input type="checkbox" name="paymentAgencyYn" id="paymentAgencyYn" value="Y" class="small classAgreement"><span>결제대행서비스 이용약관 동의</span></label> 
                                                    <a href="#popTermsView1" class="btn-agreeview" onclick="fn.popupOpen('#popTermsView1');">내용보기</a>
                                                </li>
                                                <li>
                                                    <label><input type="checkbox" name="collectionAgreementYn" id="collectionAgreementYn" value="Y" class="small classAgreement"><span>개인정보수집 및 이용동의</span></label> 
                                                    <a href="#popTermsView2" class="btn-agreeview" onclick="fn.popupOpen('#popTermsView2');">내용보기</a>
                                                </li>
                                                <li>
                                                    <label><input type="checkbox" name="consignmentAgreementYn" id="consignmentAgreementYn" value="Y" class="small classAgreement"><span>개인정보 제공/위탁 동의</span></label> 
                                                    <a href="#popTermsView3" class="btn-agreeview" onclick="fn.popupOpen('#popTermsView3');">내용보기</a>
                                                </li>
                                                
                                            </ul>
                                        </div>
                                    </fieldset>
                                    <!-- //약관동의 -->
            
                                    <!-- 총 결제금액// -->
                                    <fieldset class="totalprice-field">
                                        <legend class="hide">총 결제금액</legend>
            
                                        <div>
                                            <strong>총 결제금액</strong> 
                                            <em>23,000</em>원
                                        </div>
                                    </fieldset>
                                    <!-- //총 결제금액 -->
                                </div>
            
                                <div class="btn-area">
                                    <button type="button" class="btn-white" onclick="location.replace('/w/cart.do');">취소</button>
                                    <button type="button" class="btn-black" onclick="payment();">주문결제</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
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
        </div>
    </body>
    <script>
    	function payment(){
    		const orderForm = document.orderForm;
    		orderForm.submit();
    	}
    </script>
</html>
