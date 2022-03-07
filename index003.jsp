<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<c:set var="cp" value="${pageContext.request.contextPath}"/>
	<meta charset="UTF-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<title>MONAMI</title>
	<link rel="shortcut icon" href="${cp}/images/favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" href="${cp}/css/style.css" />
    <link rel="stylesheet" href="${cp}/index_css/style_another.css" />
	<script type="text/javascript" src="./js/common.js"></script>
	<script src="./js/dragScroll.js"></script>
	<link href="${cp}/css/jquery.dragscroll.css" rel="stylesheet">
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.js"></script>
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
    <script src="./dragScroll.js"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.12.4.min.js"></script>
    <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
	<script type="text/javascript">
	

		$(document).ready(function(){
			$(window).scroll(function() {  
		
				var position = $(window).scrollTop();  
		
				if(position > 2400 && position < 3400){    
					player.play();
				}else{
					player.pause();
			}
		
			});
		
		});
	</script>
</head>
<body>
<c:set var="cp" value="${pageContext.request.contextPath }"/>
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
								<li>
									<a href="#">ENG</a>
								</li>
							</ul>
						</div>
						<div class="sns">
							<ul>
								<li>
									<a href="https://www.facebook.com/monami1960" target="_blank">
										<img src="${cp}/images/sns_facebook.gif" alt="페이스북" />
									</a>
								</li>
								<li>
									<a href="https://www.instagram.com/monami_official/" target="_blank">
										<img src="${cp}/images/sns_insta.gif" alt="인스타" />
									</a>
								</li>
							</ul>
						</div>
					</div>
					<div class="topmenu">
						<ul>
							<li>
								<a href="#">JOIN</a>
							</li>
							<li>
								<a href="#">LOGIN</a>
							</li>
							<li>
								<a href="index.jsp">HOME</a>
							</li>
							<li>
								<a href="${cp}/kyungchul/sitemap.jsp">SITE MAP</a>
							</li>
							<li>
								<a href="${cp}/doyoon/Inquiry.jsp">CONTACT US</a>
							</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="gnb">
				<div class="conwrap">
					<h1>
						<a href="index.jsp">
							<img src="${cp}/images/logo.jpeg" alt="">
						</a>
					</h1>
					<div class="nav">
						<ul>
							<li>
								<a href="${cp}/kyungchul/ceo.jsp">모나미소개</a>
									<ul>
										<li>
											<a href="${cp}/kyungchul/ceo.jsp">CEO 메시지</a>
										</li>
										<li>
											<a href="${cp}/kyungchul/ceo.jsp">회사정보</a>
										</li>
										<li>
											<a href="${cp}/kyungchul/history.jsp">회사연혁</a>
										</li>
										<li>
											<a href="${cp}/geunseok/investment.jsp">투자정보</a>
										</li>
										<li>
											<a href="${cp}/geunseok/ci.jsp">CI</a>
										</li>
										<li>
											<a href="http://recruit.monami.co.kr/" target="_blank">채용정보</a>
										</li>
										<li>
											<a href="${cp}/geunseok/location.jsp">찾아오시는 길</a>
										</li>
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
								<a href="${cp}/board/Videolist.mo">NEWS &amp; VIDEO</a>
								<ul>
									<li>
										<a href="${cp}/teamin/monami_news1.jsp">보도자료</a>
									</li>
									<li>
										<a href="${cp}/teamin/monami_video1.jsp">동영상자료</a>
									</li>
								</ul>
							</li>
							<li>
								<a href="https://www.monamimall.com/w/artcontest/info/artContestInfo.do?trackingCd=monami" target="_blank">모나미 미술대회</a>
								<ul>
									<li>
										<a href="https://www.monamimall.com/w/artcontest/info/artContestInfo.do?trackingCd=monami" target="_blank">미술대회 소개</a>
									</li>
									<li>
										<a href="https://www.monamimall.com/w/artcontest/award/award.do?trackingCd=monami"
                          target="_blank">수상작 발표</a>
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
										<a href="${cp}/geunseok/board_event.jsp">이벤트</a>
									</li>
									<li>
										<a href="find_f">모나미 패밀리샵 찾기</a>
									</li>
								</ul>
							</li>
							<li>
								<a href="http://mpms.monami.com" target="_blank">기업 구매 / 개발</a>
								<ul class="hovermenu">
									<li><a href="http://mpms.monami.com" target="_blank">기업 및 단체 구매</a></li>
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
    <!-- 바디 상단 이미지 시작-->
    <div id="visual">
		<div class="textarea">
			<h3>
				어쩌면 삶은<br>
				인생이라는 종이 위에<br>
				써 내려가는<br>
				펜의 기록 같습니다.<br>
			</h3>
			<p>
				그중에서도 지우고 싶지 않은 기록이 있습니다.<br>
				모나미는 언제나 당신의 행복한 기록과 함께 합니다.
			</p>
		</div>
	</div>
    <!-- 바디 상단 이미지 끝  -->
	
    <!-- 본문 시작  -->
    <div id="container">
		<div id="contents">
			<div class="new">
				<div class="conwrap">
					<div class="tit">
						<h2>NEW<br>ARRIVALS</h2>
						<p>가장 먼저 만나는 설레는 기다림</p>
					</div>
					<div class="toparea">
						<div class="box new1">
							<a href="#">
								<img src="https://dfrkkcv2hg1jc.cloudfront.net/data/main/file1_16401333121j15oonmzn.jpg" alt="" width="392" height="205">
								<div class="ondiv">
									<div class="align">
										<div class="cate">BALLPOINT PEN</div>
										<div class="name">FX ZETA C3</div>
										<div class="plus">
										<div></div><div></div></div>
									</div>
								</div>
							</a>
						</div>
						<div class="box new2">
							<a href="#">
								<img src="https://dfrkkcv2hg1jc.cloudfront.net/data/main/file1_1636692836t0wc4zcp10.jpg" alt="" width="786" height="360">
								<div class="ondiv">
									<div class="align">
										<div class="cate">NOTE</div>
										<div class="name">지퀀스</div>
										<div class="plus">
										<div></div><div></div></div>
									</div>
								</div>
							</a>
						</div>
					</div>
					<div class="btmarea">
						<div class="box new3">
							<a href="#">
								<img src="https://dfrkkcv2hg1jc.cloudfront.net/data/main/file1_1636692267mqgt626cbz.jpg" alt="" width="392" height="292">
								<div class="ondiv">
									<div class="align">
										<div class="cate">HIGHLIGHTER</div>
										<div class="name">에센티 트윈</div>
										<div class="plus">
										<div></div><div></div></div>
									</div>
								</div>
							</a>
						</div>
						<div class="box new4">
							<a href="#">
								<img src="https://dfrkkcv2hg1jc.cloudfront.net/data/main/file1_16366855229ga65wy5mb.jpg" alt="" width="450" height="439">
								<div class="ondiv">
									<div class="align">
										<div class="cate">BALLPOINT PEN</div>
										<div class="name">제니스</div>
										<div class="plus">
										<div></div><div></div></div>
									</div>
								</div>
							</a>
						</div>
						<div class="box new5">
							<a href="#">
								<img src="https://dfrkkcv2hg1jc.cloudfront.net/data/main/file1_1629263969hla59mlwz0.jpg" alt="" width="314" height="292">
								<div class="ondiv">
									<div class="align">
										<div class="cate">SHARP</div>
										<div class="name">클리키</div>
										<div class="plus">
										<div></div><div></div></div>
									</div>
								</div>
							</a>
						</div>
					</div>
				</div>
			</div>	
			<div class="product" id="our_product">	
				<div class="tit">
					BEST PRODUCT
				</div>
				<p class="tit_btm">언제 어디서나 생활 속에 함께하는 모나미</p>
				<div class="p_tabs">
					<ul>
						<li><a href="#">펜</a></li>
						<li><a href="index002.jsp">마카</a></li>
						<li class="on"><a href="index003.jsp">형광펜</a></li>
						<li><a href="index004.jsp">미술용품</a></li>
					</ul>
				</div>
				<div class="p_lists">
					<ul class="wrapper_ul" style="width: 1704px;">
                        <li>
                            <a href="#">
                                <div class="thum">
                                    <img src="https://dfrkkcv2hg1jc.cloudfront.net/data/product/2060064323_file6_1636340558w5g3jvb5ke.jpg" alt="" width="266" height="390">
                                </div>
                                <div class="info">
                                    <div class="cate">형광펜</div>
                                    <div class="name">에센티 트윈</div>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <div class="thum">
                                    <img src="https://dfrkkcv2hg1jc.cloudfront.net/data/product/2060064301_file6_1510656159c09i4wzeqa.jpg" alt="" width="266" height="390">
                                </div>
                                <div class="info">
                                    <div class="cate">형광펜</div>
                                    <div class="name">에센티 브라이트 / 소프트</div>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <div class="thum">
                                    <img src="https://dfrkkcv2hg1jc.cloudfront.net/data/product/2060072001_file6_1510655846ba5524yez1.jpg" alt="" width="266" height="390">
                                </div>
                                <div class="info">
                                    <div class="cate">형광펜</div>
                                    <div class="name">에센티스틱 브라이트 / 소프트</div>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <div class="thum">
                                    <img src="https://dfrkkcv2hg1jc.cloudfront.net/data/product/2060067005_file6_1510655117e6f5plh5wu.jpg" alt="" width="266" height="390">
                                </div>
                                <div class="info">
                                    <div class="cate">형광펜</div>
                                    <div class="name">에딩 슈퍼 형광펜 600</div>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <div class="thum">
                                    <img src="https://dfrkkcv2hg1jc.cloudfront.net/data/product/2060066004_file6_1510654839zjqph6nd7t.jpg" alt="" width="266" height="390">
                                </div>
                                <div class="info">
                                    <div class="cate">형광펜</div>
                                    <div class="name">메모리 S</div>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <div class="thum">
                                    <img src="https://dfrkkcv2hg1jc.cloudfront.net/data/product/2060032401_file6_151065460562cdzu32p3.jpg" alt="" width="266" height="390">
                                </div>
                                <div class="info">
                                    <div class="cate">형광펜</div>
                                    <div class="name">칼라풀데이</div>
                                </div>
                            </a>
                        </li>
                    </ul>
				</div>
				<div class="p_info">
					<div class="wrap">
						<span class="arr1"><img src="${cp}/images/p_arr1.gif" alt=""></span>
						<span class="arr2"><img src="${cp}/images/p_arr2.gif" alt=""></span>
						<div class="ds">
							<div><img src="${cp}/images/p_cursor.gif" alt=""></div>
							DRAG &amp; SCROLL
						</div>
					</div>
				</div>
			</div>
	<script>
		var $container = $(".product");
		var $scroller = $(".p_lists");
		var $wrapper = $(".wrapper_ul");
	
		$(window).load(function(){
	
			li = $(".p_lists ul li");
			lilen = li.length;
			liw = lilen*(li.width()+18);
			$(".p_lists ul").width(liw);
	
		});
	
		for (var i = 0; i < 0; i++) {
			$wrapper.append('<li>'+ i +'</li>')
		}
		bindDragScroll($container, $scroller);
	
	</script>
	
	<script type="text/javascript">
	$(function(){
	
		idxNum = 0;
		$(".btn_play a").click(function(){
			var idx = $(this).data("idx");
			dh = $(document).height();
			$("#bgblack").height(dh).show();
			$(".vod_pop").show().animate({top:$(document).scrollTop()+100+"px"},100);
			$(".vod_area").html("<iframe src='video.php?idx="+idx+"' frameborder='0' scrolling='no' width='100%' height='620'></iframe>");
	
		})
		$("#bgblack").click(function(){
	
			$("#bgblack").hide();
			$(".vod_pop").hide();
			$(".vod_area").html("");
	
		})
	})
	</script>
		<div class="video">
			<video loop="" class="bgvid" id="player">
				<source src="${cp}/images/monami_brand_web_60.mp4" type="video/mp4">
					<source src="http://dfrkkcv2hg1jc.cloudfront.net/data/video/monami_brand_web_60.ogv" type="video/ogv">
			</video>
		</div>
		<div class="vod_pop">
			<div class="vod_area"></div>
		</div>	
		<div class="bbs">
			<div class="conwrap">
				<div class="news">
					<div class="tit">
						<h2>MONAMI NEWS</h2>
						<a href="/board/board.php?bo_table=bodo">MORE</a>
					</div>
					<ul class="news_lists">
						<li class="first">
							<div class="thum">
								<a href="#"><img src="https://dfrkkcv2hg1jc.cloudfront.net/data/board/bodo/b_file_1642552727243drophj1.jpg" width="164" height="116"></a>
							</div>
							<div class="txt">
								<a href="#">
									<div class="sbj">모나미, 호랑이의 해 임인년(壬寅年)맞아 ‘15..</div>
									<p>
										모나미, 호랑이의 해 임인년(壬寅年)맞아 ‘153 어흥이’ 에디션 출시- 다양한 패턴의 호랑이를 은증착 효과와 비..
									</p>
									<span class="date">2022-01-19</span>
								</a>
							</div>
						</li>
						<li>
							<a href="#">- 모나미, 한국적인 아름다움 담은 라이브칼라 60색 에디션 2종 출시 </a>
							<span class="date">2022-01-14</span>
						</li>
						<li>
							<a href="#">- 모나미, ‘공부왕찐천재 홍진경’과 협업한 문구세트 출시</a>
							<span class="date">2022-01-10</span>
						</li>
						<li>
							<a href="#">- 모나미, 공부 필수템 3색 볼펜 ‘FX ZETA C3’ 출시</a>
							<span class="date">2021-12-22</span>
						</li>
					</ul>
				</div>
				<div class="inquiry">
					<div class="tit">
						<h2>INQUIRY</h2>
					</div>
					<p>언제나 소중한 의견에 귀 기울이겠습니다.<br>궁금한 사항은 문의하세요.</p>
					<a href="#">INQUIRY NOW</a>
				</div>
				<div class="shop">
					<div class="tit">
						<h2>FAMILY SHOP</h2>
					</div>
					<p>패밀리샵은 모나미와 함께 협력하는 문구<br>소매 매장입니다. 주변 패밀리샵을 찾아보세요.</p>
					<a class="#">FIND SHOP</a>
				</div>
			</div>
		</div>
		<div class="fam_links">
			<ul>
				<li><a href="#" target="_blank"><img src="./images/fam_img1.jpeg" alt="모나미 몰"></a></li>
				<li><a href="#" target="_blank"><img src="./images/fam_img6.jpg" alt="모나르떼"></a></li>
				<li><a href="#" target="_blank"><img src="./images/fam_img5.jpg" alt="모나미 스테이션"></a></li>
				<li><a href="#" target="_blank"><img src="./images/fam_img2.jpg" alt="모나미 미술대회"></a></li>
			</ul>
		</div>
	</div>
    <!-- 본문 끝 -->
    <!-- 푸터 시작 -->
    <div id="footer">
		<div class="foot">
			<div class="foot_top">
				<h1><img src="./images/foot_logo.jpeg" alt="로고"></img></h1>
				<ul class="fm">
					<li>
						<a href="#">회사소개</a>
					</li>
					<li>
						<a href="#">개인정보처리방식</a>
					</li>
					<li>
						<a href="#">이메일무단수집거부</a>
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
</body>
</html>