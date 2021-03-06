<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>MONAMI</title>
    <link rel="shortcut icon" href="${cp}/images/favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" href="${cp}/css/news_video.css" />
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
    <script>
        function youtubeFullscreen(url){
                window.open(url,"","fullscreen,scrollbars")
        }
        </script>
        <style>
        .black_overlay{ 
            display: none; 
            position: absolute; 
            top: 0%; 
            left: 0%; 
            width: 100%; 
            height: 2500px; 
            background-color: black; 
            z-index:1001; 
            opacity:.80; 
            filter: alpha(opacity=80); 
        } 
        .white_content { 
            display: none; 
            position: absolute; 
            top: 70%; 
            left: 25%; 
            width: 50%; 
            height: 50%; 
            padding: 16px; 
            z-index:1002; 
            overflow: auto; 
        } 
        </style>
</head>
<body>
<c:set var="cp" value="${pageContext.request.contextPath}"/>
    <div id="wrap">
        <div id="bgblack"></div>
        <div class="find_layer" style="display: none; top: 50px">
          <iframe src="${cp}/shop/shop.jsp" frameborder="0" id="find_f"> </iframe>
          <div class="btnx_">
            <img src="${cp}/images/close.png" alt="" />
          </div>
        </div>
    <div class="popup_buttons">
    <a class="popup_button" href="">
        <div class="popup_button-txt">????????????</div>
    </a>
    <a class="popup_button-close" onclick="jQuery(this).parent().hide(); return false" href="#">???????????? ?????? ??????</a>
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
                    <li><a href="/en">ENG</a></li>
                </ul>
                </div>
                <div class="sns">
                <ul>
                    <li>
                        <a href="https://www.facebook.com/monami1960" target="_blank">
                            <img src="${cp}/images/sns_facebook.gif" alt="????????????" />
                        </a>
                    </li>
                    <li>
                        <a href="https://www.instagram.com/monami_official/" target="_blank">
                            <img src="${cp}/images/sns_insta.gif" alt="?????????" />
                        </a>
                    </li>
                </ul>
                </div>
            </div>
            <div class="topmenu">
                <ul>
                    <li>
                        <a href="${cp}/sanghoon/index.jsp">HOME</a>
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
                <a href="${cp}/sanghoon/index.jsp"><img src="${cp}/images/logo.jpeg" alt="" /></a>
            </h1>
            <div class="nav">
                <ul>
                    <li>
                        <a href="${cp}/kyungchul/ceo.jsp">???????????????</a>
                        <ul>
                          <li>
                            <a href="${cp}/kyungchul/ceo.jsp">CEO ?????????</a>
                          </li>
                          <li>
                            <a href="${cp}/kyungchul/company.jsp">????????????</a>
                          </li>
                          <li>
                            <a href="${cp}/kyungchul/history.jsp">????????????</a>
                          </li>
                          <li>
                            <a href="${cp}/geunseok/investment.jsp">????????????</a>
                          </li>
                          <li>
                            <a href="${cp}/geunseok/ci.jsp">CI</a>
                          </li>
                          <li>
                            <a href="http://recruit.monami.co.kr/" target="_blank">????????????</a>
                          </li>
                          <li>
                            <a href="${cp}/geunseok/location.jsp">??????????????? ???</a>
                          </li>
                        </ul>
                      </li>
                      <li>
                        <a href="${cp}/jungmin/pen/penpage.jsp">???????????????</a>
                        <ul>
                          <li>
                            <a href="${cp}/jungmin/pen/penpage.jsp">???</a>
                          </li>
                          <li>
                            <a href="${cp}/jungmin/marker/markerpage.jsp">??????</a>
                          </li>
                          <li>
                            <a href="${cp}/sanghoon/lightpen.jsp">?????????</a>
                          </li>
                          <li>
                            <a href="${cp}/doyoon/A_main1.jsp">????????????</a>
                          </li>
                          <li>
                            <a href="${cp}/doyoon/E_main1.jsp">??????</a>
                          </li>
                          <li>
                            <a href="${cp}/jungmin/cataloguepage.jsp">????????????</a>
                          </li>
                        </ul>
                      </li>
                      <li>
                        <a href="${cp}/teamin/monami_news1.jsp">NEWS & VIDEO</a>
                        <ul >
                          <li>
                            <a href="${cp}/teamin/monami_news1.jsp">????????????</a>
                          </li>
                          <li>
                            <a href="${cp}/teamin/monami_video1.jsp">???????????????</a>
                          </li>
                        </ul>
                      </li>
                      <li>
                        <a href="https://www.monamimall.com/w/artcontest/info/artContestInfo.do?trackingCd=monami">????????? ????????????</a>
                        <ul>
                          <li>
                            <a href="https://www.monamimall.com/w/artcontest/info/artContestInfo.do?trackingCd=monami">???????????? ??????</a>
                          </li>
                          <li>
                            <a href="https://www.monamimall.com/w/artcontest/award/award.do?trackingCd=monami">????????? ??????</a>
                          </li>
                        </ul>
                      </li>
                      <li>
                        <a href="${cp}/doyoon/FAQ.jsp">????????????</a>
                        <ul>
                          <li>
                            <a href="${cp}/doyoon/FAQ.jsp">??????????????????</a>
                          </li>
                          <li>
                            <a href="${cp}/doyoon/Inquiry.jsp">????????????</a>
                          </li>
                          <li>
                            <a href="${cp}/teamin/Inquerylist.jsp">????????????</a>
                          </li>
                          <li>
                            <a href="${cp}/geunseok/board_event.jsp">?????????</a>
                          </li>
                          <li>
                            <a class="find_f">????????? ???????????? ??????</a>
                          </li>
                        </ul>
                      </li>
                      <li>
                        <a href="http://mpms.monami.com/promotion/">?????? ?????? / ??????</a>
                        <ul class="hovermenu">
                          <li><a href="http://mpms.monami.com/promotion/">?????? ??? ?????? ??????</a></li>
                          <li><a href="${cp}/geunseok/industry.jsp">????????? ?????? ????????????</a></li>
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
                    <h2>???????????????</h2>
                    <ul>
                        <li><a href="${cp}/kyungchul/ceo.jsp">CEO ?????????</a></li>
                              <li><a href="${cp}/kyungchul/company.jsp">????????????</a></li>
                              <li><a href="${cp}/kyungchul/history.jsp">????????????</a></li>
                              <li><a href="${cp}/geunseok/investment.jsp">????????????</a></li>
                              <li><a href="${cp}/geunseok/ci.jsp">CI</a></li>
                              <li><a href="http://recruit.monami.co.kr/" target="_blank">????????????</a></li>
                              <li><a href="${cp}/geunseok/location.jsp">??????????????? ???</a></li>
                    </ul>
                </div>
                <div class="menubox">
                    <h2>???????????????</h2>
                    <ul>
                        <li><a href="${cp}/jungmin/pen/penpage.jsp">???</a></li>
                              <li><a href="${cp}/jungmin/marker/markerpage.jsp">??????</a></li>
                              <li><a href="${cp}/sanghoon/lightpen.jsp">?????????</a></li>
                              <li><a href="${cp}/doyoon/A_main1.jsp">????????????</a></li>
                              <li><a href="${cp}/doyoon/E_main1.jsp">??????</a></li>
                              <li><a href="${cp}/jungmin/cataloguepage.jsp">????????????</a></li>
                    </ul>
                </div>
                <div class="menubox">
                    <h2>NEWS &amp; VIDEO</h2>
                    <ul>
                        <li><a href="${cp}/teamin/monami_news1.jsp">????????????</a></li>
                              <li><a href="${cp}/teamin/monami_video1.jsp">???????????????</a></li>
                    </ul>
                </div>
                <div class="menubox">
                    <h2>????????? ????????????</h2>
                    <ul>
                        <li><a href="https://www.monamimall.com/w/artcontest/info/artContestInfo.do?trackingCd=monami" target="_blank">???????????? ??????</a></li>
                              <li><a href="https://www.monamimall.com/w/artcontest/award/award.do?trackingCd=monami" target="_blank">????????? ??????</a></li>
                    </ul>
                </div>
                <div class="menubox">
                    <h2>????????????</h2>
                    <ul>
                        <li><a href="${cp}/doyoon/FAQ.jsp">??????????????????</a></li>
                              <li><a href="${cp}/doyoon/Inquiry.jsp">????????????</a></li>
                              <li><a href="${cp}/teamin/Inquerylist.jsp">????????????</a></li>
                              <li><a href="${cp}/geunseok/board_event.jsp">?????????</a></li>
                              <li><a class="find_f">????????? ???????????? ??????</a></li>
                    </ul>
                </div>
                <div class="menubox">
                    <h2><a href="http://mpms.monami.com/promotion/" target="_blank">?????? ?????? / ??????</a></h2>
                  </div>
            </div>
        </div>
        </div>
    </div>
    </div>
    <!-- ?????? ??? -->
    <!-- ?????? ??????  -->
    <div id="container">
        <div class="contents">
            <div class="pagetitle pn5">
                <h2>
                    " NEWS & VIDEO "
                </h2>
                <p> ???????????? ??? ?????? ????????? ????????? ??????????????????.</p>
            </div>
            <div class="pagetabs">
                <ul class="m5">
                    <li>
                        <a href="${cp}/teamin/monami_news1.jsp">????????????</a>
                    </li>
                    <li class="on">
                        <a href="${cp}/teamin/monami_video1.jsp">???????????????</a>
                    </li>
                </ul>
            </div>
            <h3 class="title1">
                MONAMI
                <span>VIDEO</span>
            </h3>
         	<form action="">
         	<div class="bbs_gall">
                <ul>
                    <li data-idx="125">
                        <p>
                            <a href = "javascript:void(0)" onclick = "document.getElementById('light').style.display='block';document.getElementById('fade').style.display='block'">
                                <div class="thumarea">
                                    <img src="${cp}/monami_images/b_file_1.png" alt="" width="335" height="188">
                                    <div class="btn_play"></div>
                                </div>
                                <div class="txtarea">
                                    <div class="sbj">[zenith7 & ZEQUENZ] ?????? ??? ??? ?????? ??????????????? ????????? ????????? ??????!</div>
                                    <div class="date">2021.10.19</div>
                                </div>
                            </a>
                        </p>
                        <div id="light" class="white_content">
                            <!--??????????????? -->
                                <object width="560" height="315">
                                    <param name="movie" value="https://www.youtube.com/embed/K1fwUEOOIQo?amp;autoplay=1">
                                </param>
                                    <param name="allowFullScreen" value="true">
                                </param>
                                    <param name="allowscriptaccess" value="always">
                                </param>
                                <embed src="https://www.youtube.com/embed/K1fwUEOOIQo?amp;autoplay=1" type="application/x-shockwave-flash" width="560" height="315" allowscriptaccess="always" allowfullscreen="true">
                                </embed>
                            </object>
                            
                            <a href = "javascript:void(0)" onclick = "document.getElementById('light').style.display='none';document.getElementById('fade').style.display='none'">??????
                            </a>
                        </div>
                        <div id="fade" class="black_overlay">

                        </div>
                    </li>
                    <li data-idx="124">
                        <a href="https://www.youtube.com/embed/Nc3GVzXTS_g?amp;autoplay=1">
                            <div class="thumarea">		
                                <img src="${cp}/monami_images/b_file_2.png" alt="" width="335" height="188"/>				<div class="btn_play"></div>
                            </div>
                            <div class="txtarea">
                                <div class="sbj">[zenith7 & ZEQUENZ] ?????? ????????? ????????????, ??? ????????? ????????? ??????! (15s Ver.)</div>
                                <div class="date">2021.10.19</div>
                            </div>
                        </a>
                    </li>
                    <li data-idx="123">
                        <a href="https://www.youtube.com/embed/eftFBM7B-yI?amp;autoplay=1">
                            <div class="thumarea">		
                                <img src="${cp}/monami_images/b_file_3.png" alt="" width="335" height="188"/>				<div class="btn_play"></div>
                            </div>
                            <div class="txtarea">
                                <div class="sbj">????????? ??????????????? ????????? ????????? ???... 153 AUTUMN...???</div>
                                <div class="date">2021.10.19</div>
                            </div>
                        </a>
                    </li>
                    <li data-idx="122">
                        <a href="https://www.youtube.com/embed/fRp1PTsEGa0?amp;autoplay=1">
                            <div class="thumarea">		
                                <img src="${cp}/monami_images/b_file_4.jpg" alt="" width="335" height="188"/>				<div class="btn_play"></div>
                            </div>
                            <div class="txtarea">
                                <div class="sbj">[DIY] ????????????! ?????? ????????? ????????? ?????? EASY?????? ??????!</div>
                                <div class="date">2021.10.19</div>
                            </div>
                        </a>
                    </li>
                    <li data-idx="121">
                        <a href="https://www.youtube.com/embed/GRazcDay7PI?amp;autoplay=1">
                            <div class="thumarea">		
                                <img src="${cp}/monami_images/b_file_5.jpg" alt="" width="335" height="188"/>				<div class="btn_play"></div>
                            </div>
                            <div class="txtarea">
                                <div class="sbj">?????? ???????????? ?????? ????????? ?????? ??????! CLICKIY!</div>
                                <div class="date">2021.10.19</div>
                            </div>
                        </a>
                    </li>
                    <li data-idx="120">
                        <a href="https://www.youtube.com/embed/HYJKN9LY7eE?amp;autoplay=1">
                            <div class="thumarea">		
                                <img src="${cp}/monami_images/b_file_6.jpg" alt="" width="335" height="188"/>				<div class="btn_play"></div>
                            </div>
                            <div class="txtarea">
                                <div class="sbj">Study with Me (Monami) FX 153 | ??????????????? | LOFI | CHILL STUDY MUSIC | 1 HOUR POMODORO S..</div>
                                <div class="date">2021.10.19</div>
                            </div>
                        </a>
                    </li>
                    <li data-idx="119">
                        <a href="https://www.youtube.com/embed/NcUYOIeJyd4?amp;autoplay=1">
                            <div class="thumarea">		
                                <img src="${cp}/monami_images/b_file_7.jpg" alt="" width="335" height="188"/>				<div class="btn_play"></div>
                            </div>
                            <div class="txtarea">
                                <div class="sbj">1????????? ????????? ????????? DIY??????!? ????????? ?????? ????????? DIY ZONE!</div>
                                <div class="date">2021.10.19</div>
                            </div>
                        </a>
                    </li>
                    <li data-idx="118">
                        <a href="https://www.youtube.com/embed/YkUCJTmtow4?amp;autoplay=1">
                            <div class="thumarea">		
                                <img src="${cp}/monami_images/b_file_8.jpg" alt="" width="335" height="188"/>				<div class="btn_play"></div>
                            </div>
                            <div class="txtarea">
                                <div class="sbj">???????????? ???????????? ????????? ????????? [???????????? ?????????] EP4. ???????????? ???..</div>
                                <div class="date">2021.07.09</div>
                            </div>
                        </a>
                    </li>
                    <li data-idx="117">
                        <a href="https://www.youtube.com/embed/Vy37GPBXvOQ?amp;autoplay=1">
                            <div class="thumarea">		
                                <img src="${cp}/monami_images/b_file_9.jpg" alt="" width="335" height="188"/>				<div class="btn_play"></div>
                            </div>
                            <div class="txtarea">
                                <div class="sbj">????????? ????????? ???????????? ?????? [???????????? ?????????] EP3. ????????? ????????? ???</div>
                                <div class="date">2021.07.09</div>
                            </div>
                        </a>
                    </li>
                    <li data-idx="116">
                        <a href="https://www.youtube.com/embed/hVBO9Y03XlE?amp;autoplay=1">
                            <div class="thumarea">		
                                <img src="${cp}/monami_images/b_file_10.jpg" alt="" width="335" height="188"/>				<div class="btn_play"></div>
                            </div>
                            <div class="txtarea">
                                <div class="sbj">????????? ????????? ???????????? ???????????? ?????? [???????????? ?????????] EP02. MBTI ???..</div>
                                <div class="date">2021.07.09</div>
                            </div>
                        </a>
                    </li>
                    <li data-idx="115">
                        <a href="https://www.youtube.com/embed/2b7smEnRtmU?amp;autoplay=1">
                            <div class="thumarea">		
                                <img src="${cp}/monami_images/b_file_11.jpg" alt="" width="335" height="188"/>				<div class="btn_play"></div>
                            </div>
                            <div class="txtarea">
                                <div class="sbj">?????? ????????? ?????? ???????????? ??????..? [???????????? ?????????] EP01. ???????????? ???</div>
                                <div class="date">2021.07.09</div>
                            </div>
                        </a>
                    </li>
                    <li data-idx="114">
                        <a href="https://www.youtube.com/embed/lT2a10SWp5U?amp;autoplay=1">
                            <div class="thumarea">		
                                <img src="${cp}/monami_images/b_file_12.jpg" alt="" width="335" height="188"/>				<div class="btn_play"></div>
                            </div>
                            <div class="txtarea">
                                <div class="sbj">?????? ????????? ?????? Plus Pen 3000 Pigment 6??? ??????!</div>
                                <div class="date">2021.07.09</div>
                            </div>
                        </a>
                    </li>
                </ul>
            </div>
         	</form>
            <div class="vod_pop">
                <div class="vod_area">
                </div>
            </div>
            <div class="paging">
                <a class="page_prev">
                    <img src="${cp}/images/page_prev.gif" alt="">
                </a>
                <strong>1</strong>
                <a href="${cp}/teamin/monami_video2.jsp">2</a>
                <a href="${cp}/teamin/monami_video3.jsp">3</a>
                <a href="${cp}/teamin/monami_video4.jsp">4</a>
                <a href="${cp}/teamin/monami_video5.jsp">5</a>
                <a href="${cp}/teamin/monami_video2.jsp" class="page_next">
                    <img src="${cp}/images/page_next.gif" alt="">
                </a>
            </div>
            <div class="btn_top" style="cursor:pointer;" onclick="window.scrollTo(0,0);">
                <a>
                    <img src="${cp}/images/btn_top.gif" alt="????????? ????????????">
                </a>
            </div>
        </div>
    </div>
    <!-- ?????? ??? -->
    <!-- ?????? ?????? -->
    <div id="footer">
        <div class="foot">
          <div class="foot_pop" style="display: none;">
            <div class="privacy" style="display: none;">
              <div class="title">???????????? ????????????</div>
              <div class="textarea">
                <textarea readonly="readonly">'????????????'??? (?????? '??????'???) ??????????????? ??????????????? ???????????????, "??????????????? ???????????? ??? ????????????"??? ?????? ????????? ???????????? ????????????. ????????? ??????????????????????????? ????????? ??????????????? ??????????????? ??????????????? ????????? ????????? ???????????? ???????????? ?????????, ????????????????????? ?????? ????????? ????????? ???????????? ????????? ??????????????????. ????????? ??????????????????????????? ???????????? ?????? ???????????? ????????????(?????? ????????????)??? ????????? ????????? ????????????.
        ??? ??????????????? ???????????? ??????????????? ????????? ?????? ????????? ?????? ????????????.
        
        1. ???????????? ???????????? ?????? ??? ???????????? 
        ????????? ?????? ??????, ????????????, ???????????? ?????? ?????? ?????? ????????? ?????? ??????????????? ???????????? ????????????. 
        - ???????????? : ??????, ?????????
        - ???????????? : ?????????
        (???, ??????????????? ????????? ?????? ????????? ????????? ?????? ????????? ?????? ??? ??????, ?????? ??? ??????, ????????? ??? ?????????, ????????? ?????? ??? ????????????,???????????? ??? ????????? ?????? ??????????????? ???????????? ????????????.) 
        ??????, ????????? ?????? ???????????? ????????? ?????? ???????????? ???????????? ????????? ??? ????????????.
        - ???????????? ?????? ????????? ?????? ?????? ????????? ?????? ?????? 
        - ???????????? : ???????????? ???????????????(Contact Us)??? ???????????? ?????? ??????
        
        2. ???????????? ?????? ??? ????????????
        ????????? ????????? ??????????????? ????????? ????????? ?????? ???????????????.
        ???????????? : ???????????? ????????? ?????? ??????, ????????? ???????????? ?????? ??????, ???????????? ??????, ?????? ????????? ???????????? ?????? ?????? (?????? ????????? ????????? ????????? ??????????????? ?????? ???????????????.)
        
        3. ??????????????? ?????? ??? ??????
        ????????? ?????????????????? ??????????????? ??????????????? ???????????? ??? ?????????????????? ????????? ??????????????? ????????????, ??????????????? ?????? ?????? ????????? ????????? ???????????? ??????????????? ??????????????? ??????????????? ??????????????? ????????? ???????????? ????????????. ??????, ????????? ???????????? ????????? ?????????. 
        - ?????????????????? ????????? ????????? ??????
        - ????????? ????????? ???????????????, ?????? ???????????? ????????? ????????? ????????? ????????? ?????? ??????????????? ????????? ?????? ??????
        
        4. ??????????????? ?????? ??? ????????????
        ???????????? ??????????????? ???????????????, ??????????????? ?????? ??? ??????????????? ????????? ????????? ?????? ????????? ?????? ?????? ???????????????. ???, ???????????? ?????? ?????? ?????? ????????????????????? ???????????? ?????? ??? ?????? ?????? ???????????? ??????/????????????, ??????????????? ?????? ????????? ??????????????? ??????/???????????????. ???????????? ?????? ???????????? ?????? ????????? ?????? ????????? ?????? ????????? ????????? ???????????? ????????????.
        - ???????????? : (??????) ??????, ?????????, ??????, ?????? / (??????) ?????????, ???????????? 
        - ???????????? : ???????????? ??????
        - ?????? ??? ???????????? : 3???
        
        5. ??????????????? ???????????? ??? ??????
        ????????? ??????????????? ?????????????????? ??? ??????????????? ????????? ????????? ??????????????? ???????????? ???????????????. ???????????? ??? ????????? ????????? ????????????.
        - ???????????? 
         : ??????????????? ????????? ??????, ???????????? ?????? ????????? ???????????? ????????? ????????? ????????? ??? ????????? DB??? ?????????(????????? ?????? ????????? ?????????) ?????? ?????? ??? ?????? ?????? ????????? ?????? ???????????? ????????? ??????(?????? ??? ???????????? ??????) ???????????? ????????? ??? ?????????????????????.
         : ??? ??????????????? ????????? ?????? ????????? ??????????????? ?????????????????? ????????? ?????? ???????????? ???????????? ????????????. 
        - ???????????? 
         : ????????? ??????????????? ????????? ??????????????? ????????? ????????? ??? ?????? ????????? ????????? ???????????? ???????????????.
         : ????????? ????????? ??????????????? ???????????? ??????????????? ???????????????. 
        
        6. ???????????? ??? ?????????????????? ????????? ??? ????????????
        ??????????????? ???????????? ???????????? ?????? ????????? ??????????????? ??????????????? ????????? ??? ????????? ????????? ????????? ??? ????????????.
        ?????? ????????????????????????????????? ??????, ?????? ?????? ???????????? ????????? ???????????????, ?????? ?????? ?????? ?????? ?????????????????????. 
        ??????????????? ??????????????? ?????? ?????? ?????? ?????? ?????? ????????? ????????? ???????????? ????????? ?????? ?????? ????????? ????????? ????????? ?????? ??????????????? ??????????????? ???????????? ????????????.
        ?????? ????????? ??????????????? ????????????????????? ????????? ?????? ??? ??? ???????????? ????????? ?????? ??? ????????????. ??? ?????? ???????????? ????????? ???????????? ?????? ???11??? ????????? ?????? ???????????? ??????????????? ?????????.
        
        7. ???????????? ?????? ??????????????? ??????,?????? ??? ??? ????????? ?????? ??????
        ????????? ????????? ???????????? ????????????. 
        
        8. ???????????? ??????????????? ??? ???????????? ??????  
        ????????? ????????? ??????????????? ???????????? ??????????????? ????????? ????????? ???????????? ????????? ????????? ?????? ?????? ?????? ??? ?????????????????????????????? ???????????? ????????????. 
        - ???????????????????????? 
          : ????????? : ????????????
          : ???????????? : 080-022-0153 / 031-216-0153 
          : ????????? : help2@monami.com 
        - ???????????????????????????
          : ?????? : ????????? ??????
          : ???????????? : 080-022-0153
          : ????????? : dhshin@monami.com 
        
        ??????????????? ????????? ???????????? ??????????????? ???????????? ?????? ?????????????????? ?????? ????????? ??????????????????????????? ?????? ??????????????? ???????????? ??? ????????????. ????????? ?????????????????? ??????????????? ?????? ???????????? ????????? ????????? ?????? ????????????. ?????? ????????????????????? ?????? ????????? ????????? ???????????? ???????????? ?????? ????????? ??????????????? ????????????. 
        ??????????????????????????? (http://www.1336.or.kr)
        ????????????????????????????????? (http://www.eprivacy.or.kr)
        ???????????? ??????????????????????????? (http://icic.sppo.go.kr)
        ????????? ??????????????????????????? (http://www.ctrc.go.kr) 
        
        9. ????????? ??????
        ??? ???????????? ???????????? ?????? ??????, ?????? ??? ????????? ?????? ????????? ?????? ?????? 7???????????? ??????????????? ????????????????????? ?????? ????????? ????????????. 
        ???????????????????????? ???????????? : 2018??? 08??? 02??? 
         </textarea>
              </div>
              <div class="btn_close"><a>CLOSE</a></div>
            </div>
            <div class="email" style="display: none;">
              <div class="title">???????????????????????????</div>
              <div class="textarea">
                ??? ??????????????? ????????? ????????? ????????? ???????????? ?????? ?????????????????? ??? ?????? ????????? ????????? ???????????? ???????????? ???????????? ?????? ????????????, ?????? ???????????? ?????????????????? ?????? ?????? ???????????? ??????????????? ????????????.
        <br><br>
        <div class="tit">?????????</div>
        
        ??? ????????? ?????? ?????? ?????? ????????? 2017??? 11????????? ???????????????.
              </div>
              <div class="btn_close"><a>CLOSE</a></div>
            </div>
          </div>
          <div class="foot_top">
            <h1><img src="${cp}/images/foot_logo.jpeg" alt="??????"></img></h1>
            <ul class="fm">
              <li>
                <a href="${cp}/kyungchul/ceo.jsp">????????????</a>
              </li>
              <li>
                <a class="privacy_pop">????????????????????????</a>
              </li>
              <li>
                <a class="email_pop">???????????????????????????</a>
              </li>
            </ul>
          </div>
          <div class="foot_btm">
            <div class="info">
              <div class="tit">INFO</div>
              <address>
                ADDRESS : ????????? ????????? ????????? ????????? 17 <span>l</span> TEL :
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
                    <a href="https://www.monamimall.com/w/main.do" target="_blank">????????????</a>
                  </li>
                  <li>
                    <a href="https://www.mon-arte.com/" target="_blank">????????????</a>
                  </li>
                  <li>
                    <a href="https://www.monamimall.com/w/cscenter/store/storeInfo.do" target="_blank">????????? ???????????????</a>
                  </li>
                  <li>
                    <a href="http://www.hangso.co.kr/" target="_blank">???????????? ??????</a>
                  </li>
                  <li>
                    <a href="http://www.monamistation.com/main.do" target="_blank">????????? ????????????</a>
                  </li>
                  <li>
                    <a href="https://www.monamimall.com/w/artcontest/info/artContestInfo.do" target="_blank">????????? ????????????</a>
                  </li>
                  <li>
                    <a href="http://mpms.monami.com/promotion/" target="_blank">????????? ???????????????</a>
                  </li>
                  <li>
                    <a href="http://www.monamicosmetics.com/" target="_blank">?????????????????????</a>
                  </li>
              </ul>
            </div>
          </div>
        </div>
      </div>
</div>
    <!-- ?????? ??? -->
</body>
</html>