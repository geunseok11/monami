//
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

	//상품 상세페이지 사진 옆으로 넘어가는 기능
	$(function() {

		var i = 0
		$(".tnext").click(function() {
			if (i < $(".thum_wrap ul li").length - 4) {
				i++
				$(".thum_wrap ul").animate({
					marginLeft : i * -84 + "px"
				}, 500)
			}
			;
		});

		$(".tprev").click(function() {
			if (i > 0) {
				i--
				$(".thum_wrap ul").animate({
					marginLeft : i * -84 + "px"
				}, 500)
			}
			;
		});

		lileng = $(".thum_wrap ul li").length;
		$(".numbering span:eq(1)").html("0" + lileng)

		$(".thum_wrap ul li").click(function() {

			tnum = $(".thum_wrap ul li").index($(this));
			$(".p_img ul li").hide();
			$(".p_img ul li:eq(" + tnum + ")").show();

			$(".numbering span:eq(0)").html("0" + (tnum + 1))

		})

	})
	//자주 묻는 질문 question 띄우기 
	 $(function(){
        $(".faq_box").click(function(){
            $(this).toggleClass("on");
            $(this).find(".answer").slideToggle();
        })
    })
	//문의사항 파일 첨부
        $(function () {
        // if($("select#sel").children("option:selected").val() == "") {
        //     $("select#sel").siblings("label").text("문의내용");
        // } else {
        //     $("select#sel").siblings("label").text($("select#sel").children("option:selected").text());
        // }

        if ($("#form2").val() != "") {
            $("label").hide();
            $("label#country").show();
            $("label#attach_file").show();
            $("label#country").text($("select#sel").children("option:selected").text());
        }


        var select = $("select#sel");

        select.change(function () {
            var select_name = $(this).children("option:selected").text();
            $(this).siblings("label").text(select_name);
        });


        var fileTarget = $('.filebox .upload-hidden');

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
            $(this).siblings('.ex_filename').html(filename);

        });

        $(".inputbox input, .inputbox textarea").focus(function () {

            if (!$(this).val()) {
                $(this).siblings("label").hide();
            }

        })
        $(".inputbox input, .inputbox textarea").focusout(function () {

            if (!$(this).val()) {
                $(this).siblings("label").show();
            } else {
            }
        })

    })

	//유효성검사
    function sendit() {
        if ($(".form1 option:selected").val() == "choice") {
            alert("문의내용을 선택해 주세요.");
            $(".form1").focus();
            return false;
        }

        if ($("#form2").val().trim() == "") {
            alert("이름을 입력해 주세요.");
            $("#form2").focus();
            return false;
        }

        if ($("#form3").val().trim() == "") {
            alert("이메일을 입력해 주세요.");
            $("#form3").focus();
            return false;
        }

        if ($("#form5").val().trim() == "") {
            alert("제목을 입력해 주세요.");
            $("#form5").focus();
            return false;
        }

        if ($("#form6").val().trim() == "") {
            alert("내용을 입력해 주세요.");
            $("#form6").focus();
            return false;
        }

        if ($("#agree").is(":checked") == false) {
            alert("개인정보취급방침에 동의해 주세요.");
            $("#agree").focus();
            return false;
        }

        var reg = /^[A-Za-z0-9_\-]+([.][A-Za-z0-9_\-]+)*[@][A-Za-z0-9_\-]+([.][A-Za-z0-9_\-]+)+$/;

        if (!reg.test($("#form3"))) {
            alert("이메일을 다시 입력해주세요.");
            $("#form3").focus();
            return false;
        }
        return true;
    }