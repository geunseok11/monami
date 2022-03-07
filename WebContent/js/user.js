function sendit(){
	const joinForm = document.joinForm;
	let user_id = joinForm.user_id;	
	let result = document.getElementById("result");
	if(user_id.value == ""){
		alert("아이디를 입력하세요!");
		user_id.focus();
		return false;
	}

	if(user_id.value.length<5 || user_id.value.length>12){
		alert("아이디는 5자 이상 12자 이하로 입력하세요!");
		user_id.focus();
		return false;
	}



	let user_pw = joinForm.user_pw;
	if(user_pw.value == ""){
		alert("비밀번호를 입력하세요!")
		user_pw.focus();
		return false;
	}
	let reg = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[~?!@#$%^&*_-]).{8,}$/
	if(!reg.test(user_pw.value)){
		alert("비밀번호는 8자 이상, 숫자, 대문자, 소문자, 특수문자를 모두 하나 이상 포함해야 합니다!");
		user_pw.focus();
		return false;
	}
	if(/(\w)\1\1\1/.test(user_pw.value)){
		alert("같은 문자를 4번 연속해서 사용할 수 없습니다!");
		user_pw.focus();
		return false;
	}
	if(user_pw.value.search(/\s/) != -1){
		alert("비밀번호는 공백을 포함할 수 없습니다!");
		user_pw.focus();
		return false;
	}
	
	let user_name = joinForm.user_name;
	if(user_name.value == ""){
		alert("이름을 입력하세요!");
		user_name.focus();
		return false;
	}
	// 생년월일 유효성 검사
	let user_dob = joinForm.user_dob;
	
    let birth_pattern = /^(19[0-9][0-9]|20\d{2})(0[0-9]|1[0-2])(0[1-9]|[1-2][0-9]|3[0-1])$/

    if(!birth_pattern.test(user_dob.value)){
    	alert('생년월일 8자리를 입력해주세요'); 
        user_dob.value=''; 
        user_dob.focus(); 
        return false; 
   }
    //주소검색 유효성검사
    let user_zipcode = joinForm.user_zipcode;
	if(user_zipcode.value == ""){
		alert("주소검색을 이용하세요!");
		sample6_execDaumPostcode();
		return false;
	}
	let user_addrdetail = joinForm.user_addrdetail;
	if(user_addrdetail.value == ""){
		alert("주소를 마저 입력하세요!");
		user_addrdetail.focus();
		return false;
	}
	 let user_phone = joinForm.user_phone;

	    // 전화번호 유효성 검사  
	    let mobile_pattern = /^[0-9]{2,3}[0-9]{3,4}[0-9]{4}/
	    if(!mobile_pattern.test(user_phone.value)) {
	    	alert('핸드폰 번호를 확인해주세요.');  
	        user_phone.value=''; 
	        user_phone.focus(); 
	        return false;
	    }
	   
	    
	   
	return true;
	
}

function sample6_execDaumPostcode() {
	new daum.Postcode(
		{
			oncomplete : function(data) {
				// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

				// 각 주소의 노출 규칙에 따라 주소를 조합한다.
				// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
				var addr = ''; // 주소 변수
				var extraAddr = ''; // 참고항목 변수

				// 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
				if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을
														// 경우
					addr = data.roadAddress;
				} else { // 사용자가 지번 주소를 선택했을 경우(J)
					addr = data.jibunAddress;
				}

				// 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
				if (data.userSelectedType === 'R') {
					// 법정동명이 있을 경우 추가한다. (법정리는 제외)
					// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
					if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
						extraAddr += data.bname;
					}
					// 건물명이 있고, 공동주택일 경우 추가한다.
					if (data.buildingName !== '' && data.apartment === 'Y') {
						extraAddr += (extraAddr !== '' ? ', '
								+ data.buildingName : data.buildingName);
					}
					// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
					if (extraAddr !== '') {
						extraAddr = ' (' + extraAddr + ')';
					}
					// 조합된 참고항목을 해당 필드에 넣는다.
					document.getElementById("sample6_extraAddress").value = extraAddr;

				} else {
					document.getElementById("sample6_extraAddress").value = '';
				}

				// 우편번호와 주소 정보를 해당 필드에 넣는다.
				document.getElementById('sample6_postcode').value = data.zonecode;
				document.getElementById("sample6_address").value = addr;
				// 커서를 상세주소 필드로 이동한다.
				document.getElementById("sample6_detailAddress").focus();
			}
		}).open();
}
function checkId(){
	const xhr = new XMLHttpRequest();
	const result = document.getElementById("result");
	xhr.onreadystatechange = function(){
		if(xhr.readyState == XMLHttpRequest.DONE){
			if(xhr.status == 200 || xhr.status == 201){
				let txt = xhr.responseText;
				txt = txt.trim();
				console.log(txt);
				if(txt == 'O'){
					result.innerHTML = "사용할 수 있는 아이디입니다!";
					userpw.focus();
				}
				else{
					result.innerHTML = "중복된 아이디가 있습니다!"
					userid.value = '';
					userid.focus();
				}
			}
		}
	}
	xhr.open("GET",cp+"/user/CheckIdOk.us?userid="+userid.value);//XMLHttpRequest.OPENED
	xhr.send();
}
