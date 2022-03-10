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
                        <c:choose>
                        	<c:when test="${loginUser.user_id!=null}">
                        		
                        	</c:when>
                        	<c:otherwise>
                        	
                        	</c:otherwise>
                        </c:choose>
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
                                        <td><input type="text" name="senderNm" id="senderNm" value="${user.user_name}" maxlength="50" placeholder="주문자명 입력" title="주문자명 입력"></td>
                                        <th>휴대폰 번호</th>
                                        <td><input type="text" name="senderHp" id="senderHp" value="${user.user_phone}" maxlength="11" onblur="exitInput(this);" placeholder="숫자만 입력(11자리)" title="휴대폰번호 입력"></td>
                                        <th>이메일</th>
                                        <td><input type="text" name="senderEmail" id="senderEmail" value="" maxlength="100" placeholder="이메일 입력" title="이메일 입력"></td>
                                    </tr>
                                </tbody>
                            </table>
                        </fieldset>
                        <!-- //주문자 정보 -->
            
                        <!-- 배송지 정보// -->
                        <form name="orderForm" method="post" action="${cp}/user/OrderOk.pd">
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
                                                    <input type="text" name="user_zipcode" id="user_zipcode" value="" maxlength="5" onblur="exitInput(this);" readonly="readonly" title="우편번호 입력"> 
                                                    <input type="text" name="user_addr" id="user_addr" value="${user.user_addr}" maxlength="100" readonly="readonly" title="주소 입력"> 
                                                    <input type="text" name="user_addrdetail" id="user_addrdetail" value="" maxlength="100" placeholder="상세 주소 입력" title="상세 주소 입력">
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
            <%@ include file="/doyoon/footer.jsp"%>
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