<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MONAMI</title>
<link rel="shortcut icon" href="../images/favicon.ico"
	type="image/x-icon" />
<link rel="stylesheet" href="../css/prodiqr.css" />
<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="../js/common.js"></script>
<script type="text/javascript" src="../js/prodiqr.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.js"></script>
</head>
<body>
	<div id="wrap">
		<%@ include file="./header.jsp"%>
		  <!-- 본문 시작  -->
    <div id="container" class="detail">
      <div class="pagetitle pn2">
        <h2>모나미제품</h2>
        <p>모나미는 당신의 행복한 기록과 늘 함께 합니다.</p>
      </div>
      <div class="pagetabs">
        <ul class="m2">
		  <li><a href="../jungmin/pen/penpage.jsp">펜</a></li>
          <li><a href="../jungmin/marker/markerpage.jsp">마카</a></li>
          <li><a href="../sanghoon/lightpen.jsp">형광펜</a></li>
          <li><a href="./A_main1.jsp">미술용품</a></li>
          <li><a href="./E_main1.jsp" class="on">기타</a></li>
          <li><a href="../jungmin/cataloguepage.jsp">카탈로그</a></li>
        </ul>
      </div>
      <h3 class="title1">
        PRODUCT <span>INFO</span>
      </h3>
      <div class="prodview">
          <div class="prodwrap">
            <!-- 1.상품 상세정보  -->
              <div class="p_detail">
            <div class="bgcolor"></div>    
                <div class="numbering"><span>01</span> / <span>02</span></div>
                <!-- 이미지박스  -->
                <div class="imgwrap">
                    <!-- 큰이미지 박스 -->
                    <div class="p_img">
                        <ul>
                            <li><img src="../images/e_p1.jpg"></li>
                            <li><img src="../images/e_d1_1.jpg"></li>
                        </ul>
                    </div>
                    <!-- 하단 이미지박스  -->
                    <div class="thumb">
                        <a class="tprev"><img src="../images/tprev.gif"></a>
                        <a class="tnext"><img src="../images/tnext.gif"></a>
                        <div class="thum_wrap">
                            <ul>
                                <li>
                                    <a>
                                        <img src="../images/e_p1.jpg">
                                    </a>
                                </li>
                                <li>
                                    <a>
                                        <img src="../images/e_d1_1.jpg">
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- 상품상세정보 글  -->
                <div class="prodinfo">
                    <div class="p_name">
                        <div class="pname">스윕</div>
                        <div class="pcate">수정테이프</div>
                    </div>
                    <div class="p_info_list">
                        <div class="key_features">
                            <div class="tit">KEY FEATURES</div>
                            <ol>
                            <li>
                                - 노크타입으로 사용이 편리하고 헤드를 안전하게 보호 
                                <br>
                                - 강력한 접착력과 얇은 필름으로 깔끔하게 수정 가능
                                <br>
                                - 미니멀한 디자인으로 보관과 휴대가 편리
                                <br>
                                <br>
                                1,500원
                            </li>
                            </ol>
                        </div>
                        <div class="body_color">
                            <div class="tit">BODY COLOR</div>
                            <div class="color_lists">
                                <ul>
                                    <li><img src="../images/e_d1_2.jpg"></li>
                                    <li><img src="../images/e_d1_3.jpg"></li>
                                </ul>
                            </div>
                        </div>
                        <div class="download">
                            <div class="tit">DOWNLOAD</div>
                            <ul>
                                <li class="type1">
                                <a href="../images/e_d1_4.jpg" download="../images/e_d1_4.jpg">
                                    <img src="../images/down_type1.gif">셀시트</a>
                                </li>
                                <li class="type2">
                                    <a href="../images/e_d1_5.jpg" download="../images/e_d1_4.jpg">
                                        <img src="../images/down_type2.gif">제품상세</a>
                                    </li>
                                <li class="type3">
                                    <a href="../images/e_d1.zip">
                                    <img src="../images/down_type3.gif"> 이미지</a>
                                </li>
                            </ul>
                        </div>  
                    </div>
                    <div class="btn_buy">
                        <a href="https://www.monamimall.com/w/product/productDetail.do?goodsNo=MG000009627" target="_blank">
                            <img src="../images/btn_buy.gif" alt="">
                        </a>
                    </div>
                </div>
                 <!-- 2.상품 리스트로 돌아가기 -->
              </div>
              <div class="listbtn">
                <a href="./E_main1.jsp">LIST</a>
            </div>
          </div>
      </div>

         <!-- 본문 끝 -->
    <!-- top버튼 시작 -->
    <div class="btn_top">
      <a href="#"><img src="../images/btn_top.gif" alt="상단으로 이동"></a>
    </div>
    <!-- top버튼 끝 -->
    </div>
    <!-- container 끝  -->
		<%@ include file="./footer.jsp"%>
	</div>
</body>
</html>