<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>문의사항 게시판</title>
    <link rel="shortcut icon" href="../images/favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" href="../css/prodiqr.css" />
    <script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
    <script type="text/javascript" src="../js/common.js"></script>
    <link rel="stylesheet" href="../css/style.intro.css">
</head>
<style>
	.list a{
		background-color: transparent;
		color:#424242;
		
	}
	.header_area a{
		width:100px;
		padding:10px;
		text-align:center;
	}
	.header_area span{
		font-weight:bold;
	}
	.pagination a{
		padding:5px;
		width:20px;
		height:20px;
	}
	.pagination a:hover{
		background-color: #55FF9A;
	}
	.nowPage{
		padding:5px;
		display:inline-block;
		border-radius:3px;
		background-color: #55FF9A;
		font-weight: bold;
		width:20px;
		height:20px;
	}
	a.write{
		width:70px;
		height:25px;
		text-align: center;
		border-radius: 10px;
	}
	a.write:hover{
		background-color: #55FF9A;
	}
	table{
		border:0px;
		width:900px;
	}
	.title h3{
		font-size:1.5em;
		color:rgb(0,200,80);
		text-shadow:0 0 4px deepskyblue;
	}
	.list{
		border-collapse:collapse;
		border-spacing:0;
		width:900px;
	}
	.list td{
		text-align: center;
	}
	.list>tbody>tr>.list_title{
		background-color:rgb(240,255,240);
	}
	.list>tbody>tr:nth-child(n+2):hover{
		background-color:#CECECE;
	}
	.list>tbody>tr>th{
		border-top:1px solid #384d75;
		border-bottom:1px solid #ccc;
		padding:5px;
		font-weight: bold;
		font-size: 15px;
	}
	.list>tbody>tr{
	text-overflow:ellipsis;
			}
	.list>tbody>tr>td{
		border-bottom:1px solid #ccc;
		padding:5px;
	}
	a{
		display:inline-block;
		border-radius:3px;
		font-weight: bold;
		text-decoration: none;
	}
	#container{
		margin-bottom: 100px;
	}
</style>
<body>
    <c:set var="cp" value="${pageContext.request.contextPath}"/>
    <!-- wrap 시작 -->
    <div id="wrap">
       <%@ include file="../doyoon/header.jsp"%>
      <!-- 헤더 끝 -->
      <!-- 본문 시작  -->
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
            MONAMI <span>INQUERYLIST</span>
        </h3>
      <div id="wrap">
      	<table class="list">
      		<tr align="center" valign="middle" style="background-color: rgb(240,255,240);">
      			<th width="5%">번호</th>
      			<th width="10%">문의내용</th>
      			<th width="10%">이름</th>
      			<th width="15%">이메일</th>
      			<th width="15%">연락처</th>
      			<th width="15%">제목</th>
      			<th width="30%">내용</th>
      		</tr>
      		<c:choose>
      			<c:when test="${inquiryList.size()>0 and inquiryList != null}">
      				<c:forEach var="inquiry" items="${inquiryList}">
      					<tr class="inquiry">
      						<td>${inquiry.iqr_idx}</td>
      						<td>${inquiry.iqr_catagory}</td>
      						<td>${inquiry.iqr_writer}</td>
      						<td>${inquiry.iqr_email}</td>
      						<td>${inquiry.iqr_phone}</td>
      						<td><a href="${cp}/inquiry/InquiryView.mo?iqr_idx=${inquiry.iqr_idx}&page=${page}">${inquiry.iqr_title}</a></td>
      						<td class="contents" style="text-overflow: ellipsis; height: 5px">${inquiry.iqr_content}</td>
      					</tr>
      				</c:forEach>
      			</c:when>
      			<c:otherwise>
      				<tr>
      					<td colspan="6" style="text-align: center; font-size: 20px">
      					등록된 게시글이 없습니다.
      					</td>
      				</tr>
      			</c:otherwise>
      		</c:choose>
      	</table>
      	<table class="pagination">
			<tr align="center" valign="middle">
				<td>
					<c:if test="${page>1}">
						<a href="${cp}/inquiry/InquiryList.mo?page=${page-1}">&lt;</a>
					</c:if>
					<c:forEach begin="${startPage}" end="${endPage}" step="1" var="i">
						<c:choose>
							<c:when test="${i == page}">
								<span class="nowPage">${i}</span>
							</c:when>
							<c:otherwise>
								<a href="${cp}/inquiry/InquiryList.mo?page=${i}&keyword=${keyword}">${i}</a>
							</c:otherwise>
						</c:choose>
					</c:forEach>
					<c:if test="${page<totalPage}">
						<a href="${cp}/inquiry/InquiryList.mo?page=${page+1}">&gt;</a>
					</c:if>
				</td>
			</tr>
		</table>
		<table style="border:0px; width:900px;">
			<tr align="right" valign="middle">
				<td><a class="write" href="${cp}/inquiry/InquiryWrite.mo?page=${page}">글쓰기</a></td>
			</tr>
		</table>
      </div>
      </div>
        <!-- 푸터 시작 -->
   <%@ include file="../doyoon/footer.jsp"%>
    </div>
</body>
  <script>
	function sendit(){
		let q = document.getElementById('q');
		//유효성 검사
		location.href = cp+"InquiryList.mo?keyword="+q.value;
	}
</script>
</html>