<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<c:set var='cp' value="${pageContext.request.contextPath }" />
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>MONAMI</title>
<link rel="shortcut icon" href="${cp}/images/favicon.ico"
	type="image/x-icon" />
<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
<link rel="stylesheet" href="${cp}/css/pen.css" />
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
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
	<!--헤더 시작-->
	<%@ include file="/jungmin/header.jsp" %>
	<!-- 헤더 끝 -->
	<!-- 바디 상단 이미지 시작-->

	<!-- 바디 상단 이미지 끝  -->
	<!-- 본문 시작  -->
	<div id="container">
		<div id="contents">
			<div class="toptitle"  style=" background: url(${cp}/monami_images/page_visual5.jpg) no-repeat center;">
				<h2> NEWS & VIDEO</h2>
				<p>모나미는 늘 밝고 새로운 미래를 그려나갑니다.</p>
			</div>
			<div class="submenu_list">
				<ul id="sublist2">
					<li><a href="${cp}/news/NewsBoardList.bo">보도자료</a></li>
					<li><a href="${cp}/board/Videolist.bo">동영상자료</a></li>
					<li class="on"><a href="${cp}/jungmin/news_manegement.mo">등록</a>
					</li>

				</ul>
			</div>
			<h3 class="title1">MANEGEMENT</h3>
			<div class="submenu_list2">
				<ul id="sublist2">
					<li class="on"><a href="#">뉴스등록</a>
					</li>
					<li><a href="${cp}/jungmin/video_manegement.jsp">동영상등록</a></li>
					<li><a href="${cp}/jungmin/event_manegement.jsp">이벤트등록</a></li>
				</ul>
			</div>

			<div class="Write">
				<form method="post" name="newsForm" class="W_area" action="${cp}/news/NewsWriteOk.bo" enctype="multipart/form-data">
					
					<table border="1" style="border-collapse: collapse">


						<tr class="WC1">
							<th>제목</th>
							<td><input class="news_title" size="50" name="news_title"
								placeholder="제목을 입력하세요"></td>

						</tr>
						<tr class="WC3">
							<th>작성자</th>
							<td><input class="news_writer" name="news_writer"
								size="50"></td>
						</tr>

						<tr class="WC2">
							<th>내용</th>
							<td><textarea class="form-control" id="p_content"
									name="news_content" placeholder="내용을 입력해주세요"></textarea></td>
						</tr>
						<script type="text/javascript">
							CKEDITOR.replace('p_content', {
								height : 657
							});
						</script>


						<tr class="f1">
							<th>파일첨부</th>

							<td><label for="file1" class="filelabel1">첨부파일</label><input
								type="file" id="file1" name="file1"></td>
						</tr>
					</table>

					<table class="btn">
						<td><a href="javascript:sendnews()">등록</a></td>
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

function sendnews() {
	const newsForm = document.newsForm;
	const news_title = newsForm.news_title;
	if (news_title.value == "") {
		alert("제목을 입력하세요!");
		news_title.focus();
		return false;
	}
	const news_writer = newsForm.news_writer;
	if(news_writer.value==""){
		alert("작성자를 입력하세요!");
		news_writer.focus();
		return false;
	}
	if(CKEDITOR.instances.p_content.getData().length < 1){
		alert("내용을 입력해 주세요.");
		CKEDITOR.instances.p_content.focus();
		return false;
	}
	newsForm.submit();
}

var fileTarget = $('.f1 #file1');

fileTarget.on('change', function () {
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





</script>
</html>