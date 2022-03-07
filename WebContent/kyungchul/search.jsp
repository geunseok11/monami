<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
  <head>
  <c:set var="cp" value="${pageContext.request.contextPath}"/>
    <meta
      http-equiv="Content-Type"
      content="application/xhtml+xml; charset=UTF-8"
    />
    <meta http-equiv="X-UA-Compatible" content="IE=Edge" />
    <title>MONAMI</title>
    <link rel="shortcut icon" href="${cp}/images/favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" href="${cp}/css/style_intro.css" />
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
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
    <!-- wrap 시작 -->
    <div id="wrap">
      <div id="bgblack"></div>
      <div class="find_layer">
        <iframe src="${cp}/shop/shop.jsp" frameborder="0" id="find_f"></iframe>
        <div class="btnx_">
          <img src="${cp}/images/close.png" alt="" />
        </div>
      </div>
      <!-- 헤더 시작 -->
      <%@ include file="/kyungchul/header.jsp" %>
      <!-- 헤더 끝  -->
      <!-- 본문 시작 -->
      <div id="container" class="conSize">
        <div id="contents">
          <div class="titleTop1 pageImg7">
            <h2>모나미제품</h2>
            <p>모나미는 당신의 행복한 기록과 늘 함께 합니다.</p>
          </div>
          <div class="pagetabs"></div>
          <h3 class="titleText">PRODUCT <span>DETAIL SEARCH</span></h3>
          <div class="search">
            <div class="detail">
              <div class="clear">
                <div class="tit">
                  <div class="kr">상품검색</div>
                  <div class="en">Product detail search</div>
                </div>
                <div class="search_frm">
                <div class="formarea">
                    <input
                      type="text"
                      placeholder="검색어를 입력해주세요."
                      name="keyWord"
                      id="keyWord"
                      value=""
                      onkeyup="enterkey();"
                    />
                    <a href="javascript:void(0)" onclick="sendit()">SEARCH</a> 
                  </div>
                </div>
              </div>
            </div>
            <div class="total">
              총 <span>${totalCnt}</span>개의 상품이 검색되었습니다.
            </div>
            <div class="product_list">
            	<c:choose>
            		<c:when test="${productList.size()>0 and productList != null}">
            			<ul>
            				<c:forEach var="product" items="${productList}">
            					<li>
            						<a href="#">
            							<div class="thum">
            								<img 
            								  src="${cp}/images/product/${product.prod_pic}"
                       			 		      alt="파일이 없습니다"
                                              width="264"
                                              height="390"
                                              />
                                              <div class="ondiv">
                                              	<div class="btn_plus">
                                              	<div></div>
                      						    <div></div>
                                              	</div>
                                              </div>
            							</div>
            							<div class="info">
                     					 <div class="cate1">${product.prod_category}</div>
                     					 <div class="product_name">${product.prod_name}</div>
                    					</div>
            						</a>
            					</li>
            				</c:forEach>
            			</ul>
            		</c:when>
            	</c:choose>
            </div>
            <div class="paging">
           	  <c:if test="${page == 1 }">
           	  	<a href="#" class="page_prev" style="padding: 1px">
                <img src="${cp}/images/page_prev.gif" alt="" />
              </a>
           	  </c:if>
           	  <c:if test="${page != 1 }">
           	  	<a href="${cp}/product/ProductList.mo?page=${page-1}&keyword=${keyword}" 
              	class="page_prev" style="padding: 1px">
                <img src="${cp}/images/page_prev.gif" alt="" />
              </a>
           	  </c:if>
           	  <c:if test="${keyword!=null}">
           	  	<c:forEach begin="${startPage}" end="${endPage}" step="1" var="i">
             		<c:choose>
              			<c:when test="${i == page}">
              				<strong>${i}</strong>
              			</c:when>
              			<c:otherwise>
              				<a href="${cp}/product/ProductList.mo?page=${i}&keyword=${keyword}">${i}</a>
              			</c:otherwise>
              		</c:choose>
              	</c:forEach>
           	  </c:if>
           	  <c:if test="${keyword == null }">
           	  	<c:forEach begin="${startPage}" end="${endPage}" step="1" var="i">
              		<c:choose>
              			<c:when test="${i == page}">
              				<strong>${i}</strong>
              			</c:when>
              			<c:otherwise>
              				<a href="${cp}/product/ProductList.mo?page=${i}">${i}</a>
              			</c:otherwise>
              		</c:choose>
              	</c:forEach>
           	  </c:if>
              	<a href="${cp}/product/ProductList.mo?page=${page+1}&keyword=${keyword}" 
              		class="page_next" style="padding: 1px">
                <img src="${cp}/images/page_next.gif" alt=""/>
              	</a>
            </div>
          </div>
          <div class="topButton">
            <a><img src="${cp}/images/btn_top.gif" alt="페이지 상단으로" /></a>
          </div>
        </div>
        <!--/contents-->
      </div>
      <!-- 본문 끝 -->
      <!-- 푸터 시작 -->
      <%@ include file="/kyungchul/footer.jsp" %>
      <!-- 푸터 끝 -->
    </div>
    <!-- wrap 끝 -->
  </body>
  <script>
  		function enterkey(){
  			if(window.event.keyCode == 13){
  				sendit();
  			}
  		}
  		function sendit(){
  			let cp = "${pageContext.request.contextPath}";
  			let q = document.getElementById("keyWord");
  			location.href = cp+"/product/ProductList.mo?keyword="+q.value;
  		}
  </script>
</html>
