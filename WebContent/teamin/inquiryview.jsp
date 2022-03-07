<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<c:set var="cp" value="${pageContext.request.contextPath}"/>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>문의사항 게시판</title>
    <link rel="shortcut icon" href="${cp}/images/favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" href="${cp}/css/prodiqr.css" />
    <script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
    <script type="text/javascript" src="${cp}/js/common.js"></script>
    <link rel="stylesheet" href="${cp}/css/style_intro.css">
    <style>
	.reply_line{
		width:900px;
		margin-top:20px;
		padding-top:30px;
		margin: 0 auto;
	}
	.write_box{
		padding-bottom: 20px;
	}
	.write_box>tbody>tr>td:first-child,.update_box>tbody>tr>td:first-child{
		width:150px;
		text-align: center;
		font-weight: bold;
		font-size: 18px;
	}
	.write_box>tbody>tr>td+td{
		position: relative;
	}
	.write_box textarea, .update_box textarea{
		padding:5px 10px;
		height:70px;
		resize:none;
		width:600px;
		outline:none;
		border:1px solid #c40f39;
		border-radius:10px;
	}
	.update_box textarea, .write_box textarea{
		width:500px;
		height:80px;
		font-size: 15px;
	}
	.update_box{
		padding-top:20px;
		padding-bottom: 30px;
	}
	.update_box .btns a, .write_box .btns a{
		display:inline-block;
		width:90px;
		height:40px;
		text-align: center;
		vertical-align: middle;
		line-height: 40px;
		margin-left: 10px;
	}
	.adbtn{
		display:inline-block;
		border-radius:5px;
		background-color:#c40f39;
		color:white;
		font-weight: bold;
		font-size: 17px;
		text-decoration: none;
	}
    </style>
</head>
<body>
    <c:set var="cp" value="${pageContext.request.contextPath}"/>
    <%
    	String id = (String) session.getAttribute("id");
    %>
    <!-- wrap 시작 -->
    <div id="wrap">
        <div id="bgblack"></div> 
        <div class="find_layer" style="display: none; top: 50px">
          <iframe src="${cp}/shop/shop.jsp" frameborder="0" id="find_f">
          </iframe>
          <div class="btnx_">
            <img src="${cp}/images/close.png" alt="" />
          </div>
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
                            <li><a href="${cp}/sanghoon/index.jsp">HOME</a></li>
                            <li><a href="${cp}/kyungchul/sitemap.jsp">SITE MAP</a></li>
                            <li><a href="${cp}/doyoon/Inquiry.jsp">CONTACT US</a></li>
                          </ul>
                        </div>
                      </div>
                    </div>
                    <div class="gnb">
                      <div class="conwrap">
                        <h1>
                          <a href="${cp}/sanghoon/index.jsp"><img src="${cp}/images/logo.jpeg" alt="" /></a>
                        </h1>
                        <div class="nav">
                          <ul>
                            <li>
                            	<a href="${cp}/kyungchul/ceo.jsp">모나미소개</a>
                        	<ul>
                          		<li><a href="${cp}/kyungchul/ceo.jsp">CEO 메시지</a></li>
                          		<li><a href="${cp}/kyungchul/company.jsp">회사정보</a></li>
                          		<li><a href="${cp}/kyungchul/history.jsp">회사연혁</a></li>
                          		<li><a href="${cp}/geunseok/investment.jsp">투자정보</a></li>
                          		<li><a href="${cp}/geunseok/ci.jsp">CI</a></li>
                          		<li><a href="http://recruit.monami.co.kr/" target="_blank">채용정보</a></li>
                          		<li><a href="${cp}/geunseok/location.jsp">찾아오시는 길</a></li>
                        	</ul>
                      		</li>
                      		<li>
                        <a href="${cp}/jungmin/pen/penpage.jsp">모나미제품</a>
                        <ul>
                          <li>
                            <a href="${cp}/jungmin/pen/penpage.jsp">펜</a>
                          </li>
                          <li>
                            <a href="${cp}/jungmin/marker/markerpage.jsp">마카</a>
                          </li>
                          <li>
                            <a href="${cp}/sanghoon/lightpen.jsp">형광펜</a>
                          </li>
                          <li>
                            <a href="${cp}/doyoon/A_main1.jsp">미술용품</a>
                          </li>
                          <li>
                            <a href="${cp}/doyoon/E_main1.jsp">기타</a>
                          </li>
                          <li>
                            <a href="${cp}/jungmin/cataloguepage.jsp">카탈로그</a>
                          </li>
                        </ul>
                      </li>
                      <li>
                        <a href="${cp}/teamin/monami_news1.jsp">NEWS & VIDEO</a>
                        <ul >
                          <li>
                            <a href="${cp}/teamin/monami_news1.jsp">보도자료</a>
                          </li>
                          <li>
                            <a href="${cp}/teamin/monami_video1.jsp">동영상자료</a>
                          </li>
                        </ul>
                      </li>
                      <li>
                        <a href="https://www.monamimall.com/w/artcontest/info/artContestInfo.do?trackingCd=monami">모나미 미술대회</a>
                        <ul>
                          <li>
                            <a href="https://www.monamimall.com/w/artcontest/info/artContestInfo.do?trackingCd=monami">미술대회 소개</a>
                          </li>
                          <li>
                            <a href="https://www.monamimall.com/w/artcontest/award/award.do?trackingCd=monami">수상작 발표</a>
                          </li>
                        </ul>
                      </li>
                      <li>
                        <a href="${cp}/doyoon/FAQ.jsp">고객지원</a>
                        <ul>
                          <li>
                            <a href="${cp}/doyoon/FAQ.jsp">자주묻는질문</a>
                          </li>
                          <li>
                            <a href="${cp}/doyoon/Inquiry.jsp">문의하기</a>
                          </li>
                          <li>
                            <a href="${cp}/inquiry/InquiryList.kc">문의사항</a>
                          </li>
                          <li>
                            <a href="${cp}/geunseok/board_event.jsp">이벤트</a>
                          </li>
                          <li>
                            <a class="find_f">모나미 패밀리샵 찾기</a>
                          </li>
                        </ul>
                      </li>
                      <li>
                        <a href="http://mpms.monami.com/promotion/">기업 구매 / 개발</a>
                        <ul class="hovermenu">
                          <li><a href="http://mpms.monami.com/promotion/">기업 및 단체 구매</a></li>
                          <li><a href="${cp}/geunseok/industry.jsp">산업용 맞춤 제품개발</a></li>
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
                <a href="${cp}/kyungchul/search.jsp">
                    <img src="${cp}/images/btn_search.gif" alt="" />
                </a>
                </div>
            </div>
            <div class="allmenu" style="display: none;">
                <div class="menubox">
                    <h2>모나미소개</h2>
                    <ul>
                        <li><a href="${cp}/kyungchul/ceo.jsp">CEO 메시지</a></li>
                        <li><a href="${cp}/kyungchul/company.jsp">회사정보</a></li>
                        <li><a href="${cp}/kyungchul/history.jsp">회사연혁</a></li>
                        <li><a href="${cp}/geunseok/investment.jsp">투자정보</a></li>
                        <li><a href="${cp}/geunseok/ci.jsp">CI</a></li>
                        <li><a href="http://recruit.monami.co.kr/" target="_blank">채용정보</a></li>
                        <li><a href="${cp}/geunseok/location.jsp">찾아오시는 길</a></li>
                    </ul>
                </div>
                <div class="menubox">
                    <h2>모나미제품</h2>
                    <ul>
                        <li><a href="${cp}/jungmin/pen/penpage.jsp">펜</a></li>
                        <li><a href="${cp}/jungmin/marker/markerpage.jsp">마카</a></li>
                        <li><a href="${cp}/sanghoon/lightpen.jsp">형광펜</a></li>
                        <li><a href="${cp}/doyoon/A_main1.jsp">미술용품</a></li>
                        <li><a href="${cp}/doyoon/E_main1.jsp">기타</a></li>
                        <li><a href="${cp}/jungmin/cataloguepage.jsp">카탈로그</a></li>
                    </ul>
                </div>
                <div class="menubox">
                    <h2>NEWS &amp; VIDEO</h2>
                    <ul>
                        <li><a href="${cp}/teamin/monami_news1.jsp">보도자료</a></li>
                        <li><a href="${cp}/teamin/monami_video1.jsp">동영상자료</a></li>
                    </ul>
                </div>
                <div class="menubox">
                    <h2>모나미 미술대회</h2>
                    <ul>
                        <li><a href="https://www.monamimall.com/w/artcontest/info/artContestInfo.do?trackingCd=monami" target="_blank">미술대회 소개</a></li>
                        <li><a href="https://www.monamimall.com/w/artcontest/award/award.do?trackingCd=monami" target="_blank">수상작 발표</a></li>
                    </ul>
                </div>
                <div class="menubox">
                    <h2>고객지원</h2>
                    <ul>
                        <li><a href="${cp}/doyoon/FAQ.jsp">자주묻는질문</a></li>
                        <li><a href="${cp}/doyoon/Inquiry.jsp">문의하기</a></li>
                        <li><a href="${cp}/teamin/Inquerylist.jsp">문의사항</a></li>
                        <li><a href="${cp}/geunseok/board_event.jsp">이벤트</a></li>
                        <li><a class="find_f">모나미 패밀리샵 찾기</a></li>
                    </ul>
                </div>
                <div class="menubox">
                    <h2><a href="http://mpms.monami.com/promotion/" target="_blank">기업 구매 / 개발</a></h2>
                  </div>
            </div>
        </div>
        </div>
    </div>
    </div>
    <!-- 헤더 끝 -->
      <div id="container">
          <div class="pagetitle pn4">
            <h2>고객지원</h2>
            <p>모나미는 언제나 소중한 의견에 귀 기울이겠습니다.</p>
          </div>
          <div class="pagetabs">
            <ul class="m4">
                <li><a href="${cp}/doyoon/FAQ.jsp">자주하는질문</a></li>
                <li><a href="${cp}/doyoon/Inquiry.jsp">문의하기</a></li>
                <li><a href="${cp}/teamin/Inquerylist.jsp" class="on">문의사항</a></li>
                <li><a href="${cp}/geunseok/board_event.jsp">이벤트</a></li>
                <li><a href="${cp}/shop/shop.jsp">모나미 패밀리샵 찾기</a></li>
            </ul>
        </div>
        <h3 class="title1">
            MONAMI <span>INQUERYVIEW</span>
        </h3>
        <form action="" class="if">
            <table border="1" style="border-collapse: collapse;">
                <tr height="50px">
					<th align="center" width="150px">문의내용</th>
                    <td>
                      <input style="height: 50px; width: 400px;" readonly 
                      value="${inquiry.iqr_catagory}">
                    </td>
				</tr>
                <tr height="50px">
                    <th align="center" width="150px">이름</th>
                    <td>
		            <input name="text" style="height: 50px; width: 400px;" readonly 
		            value="${inquiry.iqr_writer}">
		            </td>
                </tr>
                <tr height="50px">
                    <th align="center" width="150px">이메일</th>
                    <td>
					<input name="text" style="height: 50px; width: 400px;" readonly 
					value="${inquiry.iqr_email}">
					</td>
                </tr>
                <tr height="50px">
                    <th align="center" width="150px">연락처</th>
                    <td>
					<input name="text" style="height: 50px; width: 400px;" readonly 
					value="${inquiry.iqr_phone}">
					</td>
                </tr>
                <tr height="50px">
                    <th align="center" width="150px">제목</th>
                    <td>
					<input name="text" style="height: 50px; width: 400px;" readonly 
					value="${inquiry.iqr_title}">
				    </td>
                </tr>
                <tr height="200px">
                    <th align="center" width="150px">내용</th>
                    <td>
                        <textarea style="width:402px;height:200px; resize: none" 
                         readonly>${inquiry.iqr_content}</textarea>
                    </td>
                </tr>
                <tr height="50px">
                    <th align="center" width="150px">첨부파일</th>
                    <td>
                      <input name="text" style="height: 50px; 
                      width: 400px;" readonly value="${inquiry.iqr_file}">
                    </td>
                </tr>
            </table>
        </form>
        <div class="reply_line">
        	<c:if test="${adminUser != null}">
        	<form name="replyForm" method="post" action="${cp}/inquiry/replywrite.ir">
        		<input type="hidden" name="iqr_idx" value="${inquiry.iqr_idx}">
        		<table class="write_box">
        			<tr height="50px">
        				<td align="center" width="150px">답변</td>
        				<td>
        					<textarea name="iqr_answer" class="iqr_answer" style="resize:none"></textarea>	
        				</td>
        				<td>
        					<div class="btns">
        						<a class="adbtn" href="javascript:document.replyForm.submit()">등록</a>
        					</div>
        				</td>
        			</tr>
        		</table>
        	</form>
        	</c:if>
        	<form name="updateForm" method="post" action="">
        		<input type="hidden" name="iqr_idx" value="${inquiry.iqr_idx}">
        		<table class="update_box">
        				<tr height="50px">
        					<td align="center" width="150px">관리자<br>답변</td>
        					<td>
        						<textarea readonly class="iqr_answer" style="resize:none">${inquiry.iqr_answer}</textarea>
        					</td>
        					<c:if test="${adminUser != null}">
        					<td>
								<div class="btns">
        							<a class="adbtn" href="javascript:deleteReply(${inquiry.iqr_idx})">삭제</a>
        						</div>
        					</td>
        					</c:if>
        				</tr>
        		</table>
        	</form>
        </div>
        <a href="${cp}/inquiry/InquiryList.ir"><input type="submit" value="목록" class="list"></a>
      </div>
    <!-- 푸터 시작 -->
   <%@include file="/kyungchul/footer.jsp" %>
  <!-- 푸터 끝 -->
  </div>
</body>
<script>
	let updateForm = document.updateForm;
	let iqr_idx = null;
	
	function deleteReply(iqr_idx){
		updateForm.setAttribute("action","${cp}/inquiryReplyDeleteOk.kc?iqr_idx="+iqr_idx)
		updateForm.submit();
	}
</script>
</html>