<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>문의사항 게시판</title>
    <link rel="shortcut icon" href="../images/favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" href="../css/prodiqr.css" />
    <script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
    <script type="text/javascript" src="../js/common.js"></script>
    <link rel="stylesheet" href="../css/style.intro.css">
</head>
<style>
#container{
	overflow: hidden;
}
form{
	padding-bottom: 200px;
}
form table tr th{
	background-color: rgb(240,255,240);
	font-weight: bold;
}
form table tr td a{
	font-size: 15px;
	padding: 5px;
	font-weight: bold;
}
.btn_area{
	margin-top: 10px;
	border-radius: 10px;
}
.btn_area:hover{
	background-color: #95FFC0;
}
</style>
<body>
    <c:set var="cp" value="${pageContext.request.contextPath}"/>
    <!-- wrap 시작 -->
    <div id="wrap">
        <%@ include file="../doyoon/header.jsp"%>
    <!-- 헤더 끝 -->
      <div id="container">
          <div class="pagetitle pn4">
            <h2>고객지원</h2>
            <p>모나미는 언제나 소중한 의견에 귀 기울이겠습니다.</p>
          </div>
          <div class="pagetabs">
            <ul class="m4">
                <li><a href="${cp}/doyoon/FAQ.jsp">자주하는질문</a></li>
                <li><a href="${cp}/doyoon/inquiry.jsp" class="on">문의하기</a></li>
                <li><a href="${cp}/geunseok/board_event.jsp">이벤트</a></li>
                <li><a href="${cp}/shop/shop.jsp">모나미 패밀리샵 찾기</a></li>
            </ul>
        </div>
        <h3 class="title1">
            MONAMI <span>INQUERYVIEW</span>
        </h3>
        <form>
            <table border="1" style="border-collapse: collapse;">
                <tr height="50px">
					<th align="center" width="150px">문의내용</th>
                    <td>
                      <input name="iqr_catagory" style="height: 50px; width: 400px;"
                      value="${inquiry.iqr_catagory}" readonly>
                    </td>
				        </tr>
                <tr height="50px">
                    <th align="center" width="150px">이름</th>
                    <td>
						 <input name="iqr_writer" style="height: 50px; width: 400px;"
						 value="${inquiry.iqr_writer}" readonly>
					</td>
                </tr>
                <tr height="50px">
                    <th align="center" width="150px">이메일</th>
                    <td>
						<input name="iqr_email" style="height: 50px; width: 400px;"
						value="${inquiry.iqr_email}" readonly>
					</td>
                </tr>
                <tr height="50px">
                    <th align="center" width="150px">연락처</th>
                    <td>
						<input name="iqr_phone" style="height: 50px; width: 400px;"
						value="${inquiry.iqr_phone}" readonly>
					</td>
                </tr>
                <tr height="50px">
                    <th align="center" width="150px">제목</th>
                    <td>
                    	<input name="iqr_title" style="height: 50px; width: 400px;"
                    	value="${inquiry.iqr_title}" readonly>
					</td>
                </tr>
                <tr height="200px">
                    <th align="center" width="150px">내용</th>
                    <td>
                        <textarea name="iqr_content" style="width:402px;
                        height:200px;" readonly>${inquiry.iqr_content}</textarea>
                    </td>
                </tr>
            </table>
            <table class="btn_area">
				<tr align="right" valign="middle">
					<td>
						<a href="${cp}/inquiry/InquiryList.mo?page=${param.page == null ? 1 : param.page}">목록</a>
					</td>
				</tr>
			</table>
        </form>
        <!-- 푸터 시작 -->
   <%@ include file="../doyoon/footer.jsp"%>
      </div>
  <!-- 푸터 끝 -->
</body>
</html>