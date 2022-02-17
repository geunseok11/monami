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
    <div id="container">
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
      <div class="subcate">
        <ul>
          <li><a href="./E_prod1.jsp" class="on">풀</a></li>
          <li><a href="#">연필</a></li>
          <li><a href="#">샤프/샤프심</a></li>
          <li><a href="#">지우개</a></li>
          <li><a href="#">기타</a></li>
        </ul>
      </div>
      <div class="product_list">
        <ul>
          <li>
            <a href="#">
              <div class="thum">
                <img src="../images/e_p2.jpg"
                 alt="풀">
                <div class="ondiv">
                  <div class="btn_plus">
                    <div></div>
                    <div></div>
                  </div>
                </div>
              </div>
              <div class="info">
                <div class="cate1">풀</div>
                <div class="product_name">다목적으로 사용 가능한 목공풀</div>
              </div>
            </a>
          </li>
          <li>
            <a href="#">
              <div class="thum">
                <img src="../images/e_p3.jpg"
                 alt="풀">
                <div class="ondiv">
                  <div class="btn_plus">
                    <div></div>
                    <div></div>
                  </div>
                </div>
              </div>
              <div class="info">
                <div class="cate1">풀</div>
                <div class="product_name">다목적으로 사용 가능한 목공풀 2-Way</div>
              </div>
            </a>
          </li>
          <li>
            <a href="#">
              <div class="thum">
                <img src="../images/e_p4.jpg"
                 alt="풀">
                <div class="ondiv">
                  <div class="btn_plus">
                    <div></div>
                    <div></div>
                  </div>
                </div>
              </div>
              <div class="info">
                <div class="cate1">풀</div>
                <div class="product_name">빨리 마르는 물풀</div>
              </div>
            </a>
          </li>
          <li>
            <a href="#">
              <div class="thum">
                <img src="../images/e_p5.jpg"
                 alt="풀">
                <div class="ondiv">
                  <div class="btn_plus">
                    <div></div>
                    <div></div>
                  </div>
                </div>
              </div>
              <div class="info">
                <div class="cate1">풀</div>
                <div class="product_name">붙였다 뗄 수 있는 메모 풀</div>
              </div>
            </a>
          </li>
          <li>
            <a href="#">
              <div class="thum">
                <img src="../images/e_p6.jpg"
                 alt="풀">
                <div class="ondiv">
                  <div class="btn_plus">
                    <div></div>
                    <div></div>
                  </div>
                </div>
              </div>
              <div class="info">
                <div class="cate1">풀</div>
                <div class="product_name">모서리에 바르기 쉬운 삼각풀</div>
              </div>
            </a>
          </li>
          <li>
            <a href="#">
              <div class="thum">
                <img src="../images/e_p9.jpg"
                 alt="풀">
                <div class="ondiv">
                  <div class="btn_plus">
                    <div></div>
                    <div></div>
                  </div>
                </div>
              </div>
              <div class="info">
                <div class="cate1">풀</div>
                <div class="product_name">한 번에 잘 발리는 부드러운 풀</div>
              </div>
            </a>
          </li>
        </ul>
      </div>
         <!-- 본문 끝 -->
    <!-- paging 시작 -->
    <div class="paging">
      <a class="page_prev"><img src="../images/page_prev.gif"></a>
      <span>1</span>
      <a class="page_next"><img src="../images/page_next.gif"></a>
    </div>
    <!-- paging 끝 -->
    <!-- top버튼 시작 -->
    <div class="btn_top">
      <a href="#"><img src="../images/btn_top.gif" alt="상단으로 이동"></a>
    </div>
    <!-- top버튼 끝 -->
    </div>
		<%@ include file="./footer.jsp"%>
	</div>
</body>
</html>