function dis1() {
  const map1 = document.getElementById("map1");
  const map2 = document.getElementById("map2");
  const map3 = document.getElementById("map3");
  const msg = document.getElementById("msg2");
  const seoul = document.getElementsByClassName("seoul");

  map1.style.display = "block";
  map2.style.display = "none";
  map3.style.display = "none";
  msg.style.display = "none";

  const name = document.getElementById("b_map1");
  const name1 = document.getElementById("b_map2");
  const name2 = document.getElementById("b_map3");
  name.style.color = "#fff";
  name.style.backgroundColor = "#cd0600";
  name1.style.color = "";
  name1.style.backgroundColor = "";
  name2.style.color = "";
  name2.style.backgroundColor = "";

  $(".gyeonggi").hide();
  $(".incheon").hide();
  $(".seoul").show();
  $(".nosearch").hide();
}
function dis2() {
  const map1 = document.getElementById("map1");
  const map2 = document.getElementById("map2");
  const map3 = document.getElementById("map3");
  const msg = document.getElementById("msg2");
  const gyeonggi = document.getElementsByClassName("gyeonggi");

  map1.style.display = "none";
  map2.style.display = "block";
  map3.style.display = "none";
  msg.style.display = "none";

  const name = document.getElementById("b_map1");
  const name1 = document.getElementById("b_map2");
  const name2 = document.getElementById("b_map3");
  name.style.color = "";
  name.style.backgroundColor = "";
  name1.style.color = "#fff";
  name1.style.backgroundColor = "#cd0600";
  name2.style.color = "";
  name2.style.backgroundColor = "";

  $(".incheon").hide();
  $(".seoul").hide();
  $(".gyeonggi").show();
  $(".nosearch").hide();
}
function dis3() {
  const map1 = document.getElementById("map1");
  const map2 = document.getElementById("map2");
  const map3 = document.getElementById("map3");
  const msg = document.getElementById("msg2");
  const incheon = document.getElementsByClassName("incheon");

  map1.style.display = "none";
  map2.style.display = "none";
  map3.style.display = "block";
  msg.style.display = "none";

  const name = document.getElementById("b_map1");
  const name1 = document.getElementById("b_map2");
  const name2 = document.getElementById("b_map3");
  name.style.color = "";
  name.style.backgroundColor = "";
  name1.style.color = "";
  name1.style.backgroundColor = "";
  name2.style.color = "#fff";
  name2.style.backgroundColor = "#cd0600";

  $(".seoul").hide();
  $(".gyeonggi").hide();
  $(".incheon").show();
  $(".nosearch").hide();
}
// 검색결과가 없을 때 시작
function subadd0() {
  $(".seoul").hide();
  $(".gyeonggi").hide();
  $(".incheon").hide();
  $(".nosearch").show();
  const name = document.getElementById("b_map1");
  name.style.color = "#fff";
  name.style.backgroundColor = "#cd0600";
}
function subadd01() {
  $(".seoul").hide();
  $(".gyeonggi").hide();
  $(".incheon").hide();
  $(".nosearch").show();
  const name = document.getElementById("b_map2");
  name.style.color = "#fff";
  name.style.backgroundColor = "#cd0600";
}
function subadd02() {
  $(".seoul").hide();
  $(".gyeonggi").hide();
  $(".incheon").hide();
  $(".nosearch").show();
  const name = document.getElementById("b_map3");
  name.style.color = "#fff";
  name.style.backgroundColor = "#cd0600";
}
// 검색결과가 없을 때 끝
// 서울 시작
function subadd1() {
  $(".gyeonggi").hide();
  $(".incheon").hide();
  $(".seoul").hide();
  $(".nosearch").hide();
  $(".nowon").show();
  const name = document.getElementById("b_map1");
  name.style.color = "#fff";
  name.style.backgroundColor = "#cd0600";
}
function subadd2() {
  $(".gyeonggi").hide();
  $(".incheon").hide();
  $(".nosearch").hide();
  $(".seoul").hide();
  $(".gangdong").show();
  const name = document.getElementById("b_map1");
  name.style.color = "#fff";
  name.style.backgroundColor = "#cd0600";
}
function subadd3() {
  $(".gyeonggi").hide();
  $(".incheon").hide();
  $(".nosearch").hide();
  $(".seoul").hide();
  $(".guro").show();
  const name = document.getElementById("b_map1");
  name.style.color = "#fff";
  name.style.backgroundColor = "#cd0600";
}
function subadd4() {
  $(".gyeonggi").hide();
  $(".incheon").hide();
  $(".nosearch").hide();
  $(".seoul").hide();
  $(".gangnam").show();
  const name = document.getElementById("b_map1");
  name.style.color = "#fff";
  name.style.backgroundColor = "#cd0600";
}
function subadd5() {
  $(".gyeonggi").hide();
  $(".incheon").hide();
  $(".nosearch").hide();
  $(".seoul").hide();
  $(".seocho").show();
  const name = document.getElementById("b_map1");
  name.style.color = "#fff";
  name.style.backgroundColor = "#cd0600";
}
function subadd6() {
  $(".gyeonggi").hide();
  $(".incheon").hide();
  $(".nosearch").hide();
  $(".seoul").hide();
  $(".songpa").show();
  const name = document.getElementById("b_map1");
  name.style.color = "#fff";
  name.style.backgroundColor = "#cd0600";
}
function subadd7() {
  $(".gyeonggi").hide();
  $(".incheon").hide();
  $(".nosearch").hide();
  $(".seoul").hide();
  $(".jongro").show();
  const name = document.getElementById("b_map1");
  name.style.color = "#fff";
  name.style.backgroundColor = "#cd0600";
}
function subadd8() {
  $(".gyeonggi").hide();
  $(".incheon").hide();
  $(".nosearch").hide();
  $(".seoul").hide();
  $(".dongdaemoon").show();
  const name = document.getElementById("b_map1");
  name.style.color = "#fff";
  name.style.backgroundColor = "#cd0600";
}
function subadd9() {
  $(".gyeonggi").hide();
  $(".incheon").hide();
  $(".nosearch").hide();
  $(".seoul").hide();
  $(".mapo").show();
  const name = document.getElementById("b_map1");
  name.style.color = "#fff";
  name.style.backgroundColor = "#cd0600";
}
function subadd10() {
  $(".gyeonggi").hide();
  $(".incheon").hide();
  $(".nosearch").hide();
  $(".seoul").hide();
  $(".eunpyeong").show();
  const name = document.getElementById("b_map1");
  name.style.color = "#fff";
  name.style.backgroundColor = "#cd0600";
}
function subadd11() {
  $(".gyeonggi").hide();
  $(".incheon").hide();
  $(".nosearch").hide();
  $(".seoul").hide();
  $(".seodaemun").show();
  const name = document.getElementById("b_map1");
  name.style.color = "#fff";
  name.style.backgroundColor = "#cd0600";
}
function subadd12() {
  $(".gyeonggi").hide();
  $(".incheon").hide();
  $(".nosearch").hide();
  $(".seoul").hide();
  $(".seongdong").show();
  const name = document.getElementById("b_map1");
  name.style.color = "#fff";
  name.style.backgroundColor = "#cd0600";
}
// 서울 끝
// 경기도 시작
function subadd13() {
  $(".seoul").hide();
  $(".incheon").hide();
  $(".nosearch").hide();
  $(".gyeonggi").hide();
  $(".yongin").show();
}
function subadd14() {
  $(".seoul").hide();
  $(".incheon").hide();
  $(".nosearch").hide();
  $(".gyeonggi").hide();
  $(".gwacheon").show();
}
function subadd15() {
  $(".seoul").hide();
  $(".incheon").hide();
  $(".nosearch").hide();
  $(".gyeonggi").hide();
  $(".seongnam").show();
}
function subadd16() {
  $(".seoul").hide();
  $(".incheon").hide();
  $(".nosearch").hide();
  $(".gyeonggi").hide();
  $(".suwon").show();
}
function subadd17() {
  $(".seoul").hide();
  $(".incheon").hide();
  $(".nosearch").hide();
  $(".gyeonggi").hide();
  $(".pyeongtaek").show();
}
function subadd18() {
  $(".seoul").hide();
  $(".incheon").hide();
  $(".nosearch").hide();
  $(".gyeonggi").hide();
  $(".hwaseong").show();
}
// 경기도 끝
// 인천 시작
function subadd19() {
  $(".seoul").hide();
  $(".gyeonggi").hide();
  $(".nosearch").hide();
  $(".incheon").hide();
  $(".namdong").show();
}
function subadd20() {
  $(".seoul").hide();
  $(".gyeonggi").hide();
  $(".nosearch").hide();
  $(".incheon").hide();
  $(".yeonsu").show();
}
function subadd21() {
  $(".seoul").hide();
  $(".gyeonggi").hide();
  $(".nosearch").hide();
  $(".incheon").hide();
  $(".seogu").show();
}
// 인천 끝
