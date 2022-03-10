<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>MONAMI</title>
<c:set var='cp' value="${pageContext.request.contextPath }" />
<link rel="shortcut icon" href="${cp}/images/favicon.ico"
	type="image/x-icon" />
<link rel="stylesheet" href="${cp}/css/pen2.css" />
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.js"></script>

<script type="text/javascript" src="${cp}/js/common.js"></script>
<script type="text/javascript" src="${cp}/ckeditor/ckeditor.js"></script>

<script type="text/javascript">
	$(function() {
		$(document).on("click", ".find_f", function() {
			dh = $(document).height();
			poph = $(".find_layer").height();

			$("#bgblack").height(dh).show();
			$(".find_layer").show().animate({
				top : $(document).scrollTop() + 50 + "px"
			}, 100);
		});
		$("#bgblack,.btnx_").click(function() {
			$("#bgblack").height(dh).hide();
			$(".find_layer").hide();
		});
	});
</script>
</head>
<body>
	<div class="popup_buttons">
		<a class="popup_button" href="">
			<div class="popup_button-txt">예약하기</div>
		</a> <a class="popup_button-close"
			onclick="jQuery(this).parent().hide(); return false" href="#">예약하기
			버튼 닫기</a>
	</div>
	<!-- 헤더 시작-->
	<%@ include file="/jungmin/header.jsp" %>
	<!-- 헤더 끝 -->
	<!-- 바디 상단 이미지 시작-->

	<!-- 바디 상단 이미지 끝  -->
	<!-- 본문 시작  -->
	<div id="container">
		<div id="contents">
			<div class="toptitle" style=" background: url(${cp}/images/page_visual4.jpg) no-repeat center;">
				<h2>고객지원</h2>
				<p>모나미는 언제나 소중한 의견에 귀 기울이겠습니다.</p>
			</div>
			<div class="submenu_list">
				<ul id="sublist2">
					<li><a href="${cp}/news/NewsBoardList.bo">보도자료</a></li>
					<li><a href="${cp}/board/Videolist.bo">동영상자료</a></li>
					<li class="on"><a href="${cp}/jungmin/news_manegement.jsp">등록</a>
					</li>
				</ul>
			</div>
			<h3 class="title1">MANEGEMENT</h3>
			<div class="submenu_list2">
				<ul id="sublist2">
					<li><a href="${cp}/jungmin/news_manegement.jsp">뉴스등록</a></li>
					<li><a href="${cp}/videomodify.jsp">동영상등록</a></li>
					<li class="on"><a href="${cp}/jungmin/event_manegement.jsp">이벤트등록</a>
					</li>
				</ul>
			</div>
			<div class="Write">
				<form method="post" name="eventForm" class="W_area"
					action="${cp}/event/EventModifyOk.bo" enctype="multipart/form-data">
					<input type="hidden" name="event_idx" value="${board.event_idx}">
					
					<table border="1" style="border-collapse: collapse">


						<tr class="WC1">
							<th>제목</th>
							<td><input class="event_title" size="50" name="event_title" id="event_title" 
								value="${board.event_title}"></td>

						</tr>
						<tr class="WC3">
							<th>작성자</th>
							<td><input class="event_writer" name="event_writer"
								size="50" readonly value="${board.event_writer}"></td>
						</tr>
						<tr class="WC4">
							<th>이벤트 기간</th>
							<td><input type="date" class="event_startdate" name="event_startdate" value="${board.event_startdate}"
								style="width:200px">&nbsp;~&nbsp;<input type="date"  class="event_enddate" name="event_enddate"
								size="100" style="width:200px" value="${board.event_enddate}"></td>
						</tr>
						
						<tr class="WC2">
							<th>내용</th>
							<td><textarea class="form-control" id="p_content"
									name="event_content">${board.event_content}</textarea></td>
						</tr>
						<script type="text/javascript">
							CKEDITOR.replace('p_content', {
								height : 657
								
							});
						</script>
						<tr class="f1">
							<th>파일첨부</th>
							<c:choose>
								<c:when test="${0 <files.size()}">
								<td><label for="file1" class="filelabel1">${files[0].orgname}</label>
								<input type="file" id="file1" name="file1">
								<input type="hidden" name="filename" value="${files[0].orgname}">
								</td>
								</c:when>
								<c:otherwise>
								<td><label for="file1" class="filelabel1">첨부파일</label>
								<input type="hidden" name="filename">
								<input type="file" id="file1" name="file1" class="finput">
								</td>
								</c:otherwise>
							</c:choose>
						</tr>
					</table>

					<table class="btn">
						<td><a href="javascript:sendevent()">수정완료</a></td>
					</table>
				</form>
			</div>



			<div class="topbtn">
				<a href="#Top"> <img src="${cp}/images/btn_top.gif" alt="상단으로">
				</a>
			</div>
		</div>
	</div>
	<!-- 본문 끝 -->
	<!-- 푸터 시작 -->
	<%@ include file="/jungmin/footer.jsp" %>
	<!-- 푸터 끝 -->
	</div>
</body>
<script>
function sendevent() {
	const eventForm = document.eventForm;
	const event_title = eventForm.event_title;
	if (event_title.value == "") {
		alert("제목을 입력하세요!");
		event_title.focus();
		return false;
	}
	const event_startdate = eventForm.event_startdate;
	console.log(event_startdate.value);
	const event_enddate = eventForm.event_enddate;
	if(event_startdate.value ==""){
		alert("시작날짜를 입력하세요!");
		event_startdate.focus();
		return false;
	}
	if(event_enddate.value ==""){
		alert("종료날짜를 입력하세요!");
		event_enddate.focus();
		return false;
	}
	if(event_startdate.value > event_enddate.value){
		alert("시작날짜는 종료날짜 이전이어야 합니다!");
		event_startdate.focus();
		return false;
	}
	if(CKEDITOR.instances.p_content.getData().length < 1){
		alert("내용을 입력해 주세요.");
		CKEDITOR.instances.p_content.focus();
		return false;
	}
	
	eventForm.submit();
}

	var fileTarget = $('.f1 #file1');
	var fileTarget1 = $('.v1 #file2');

	fileTarget.on('change', function() {
		// 값이 변경되면

		if (window.FileReader) {
			// modern browser 
			var filename = $(this)[0].files[0].name;
		} else {
			// old IE 
			var filename = $(this).val().split('/').pop().split('\\').pop(); // 파일명만 추출
		}

		// 추출한 파일명 삽입 
		$(this).siblings('.filelabel1').html(filename);
	});
	fileTarget1.on('change', function() {
		// 값이 변경되면

		if (window.FileReader) {
			// modern browser 
			var filename = $(this)[0].files[0].name;
		} else {
			// old IE 
			var filename = $(this).val().split('/').pop().split('\\').pop(); // 파일명만 추출
		}

		$(this).siblings('.filelabel2').html(filename);

	});
	$(".finput").change(function(e){
		$(this).prev().prev().text(e.target.files[0].name);
		$(this).prev().val(e.target.files[0].name);
	})
</script>
</html>