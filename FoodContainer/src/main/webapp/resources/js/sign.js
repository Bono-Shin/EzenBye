function checkAll() {
	
	var checkId = /^[a-z][a-zA-Z0-9]{4,14}/g;
	var checkPw = /^.*(?=^.{6,15}$)(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&+=]).*$/;
	var checkName = /^[가-힣]{2,6}$/g; 
	var checkEmail = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/g;
	var checkphone2 = /^[0-9]{3,4}/g;
	var checkphone3 = /^[0-9]{4}/g;

   //var checkEmail = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;


	
	 	var id =  document.getElementById("id"); 
        var pw = document.getElementById("pw"); 
        var pwchk = document.getElementById("pwchk");
        var name = document.getElementById("name");
        var nickname = document.getElementById("nickname");
        var email = document.getElementById("email"); 
        var phone1 = document.getElementById("phone1");
        var phone2 = document.getElementById("phone2");
        var phone3 = document.getElementById("phone3");
       	var phonehap = "";
        var idChk = $("#idChk").val();
        var nickChk =$("#nickChk").val();
        
     
	//아이디
	if (id.value == "") {
		
		alert("ID를 입력해주세요!");
		return false;
	}else if (!checkId.test(id.value)) {
		alert("id는 5~12자리의 영문 및 영문숫자 가능");
		return false;
	}
	else if(idChk =="N"){
		alert("아이디 중복확인 버튼을 눌러주세요");
		return false;
	}
	
	//비밀번호
	else if (pw.value == "") {
		alert("비밀번호를 입력해주세요!");
		return false;
	}
	else if (!checkPw.test(pw.value)) {
		alert("password는 6~12자리의 영문 대소문자와숫로만 가능");
		return false;
	}

	else if (pw.value != pwchk.value) {
		alert("비밀번호가 틀립니다. 다시 확인하여 입력하세요!")
		return false;
	}
	//이름
	else if (name.value == "") {
		alert("이름을 입력해주세요!");
		return false;
	}
	else if (!checkName.test(name.value)) {
		alert("특수문자,영어,숫자는 사용할 수 없습니다. 한글만 입력해주세요!");
		return false;
	}
	
	//연락처
	else if(phone2.value==""){
		alert("연락처2를 입력해주세요!");
		return false;
	}
	else if(!checkphone2.test(phone2.value)){
		alert("숫자3~4자리를 입력해주세요!");
		return false;
	}
	else if(phone3.value==""){
		alert("연락처3를 입력해주세요!");
		return false;
	}
	else if(!checkphone3.test(phone3.value)){
		alert("숫자3~4자리를 입력해주세요!");
		return false;
	}
	
	//닉네임
	else if(nickname.value==""){
		alert("닉네임을 입력해주세요!");
		return false;
	}
	else if(nickChk=="N"){
		alert("닉네임 중복확인 버튼을 눌러주세요");
		return false;
	}
	
	//이메일
	else if (email.value == "") {
		alert("이메일을 입력해주세요!");
		return false;
	}
	else if (!checkEmail.test(email.value)) {
		alert("올바른 이메일 형식이 아닙니다.");
		return false;
	}
	phonehap = $("select[name='phone1']").val() + "-" + $("input[name='phone2']").val() + "-" + $("input[name='phone3']").val();
	$("input[name='phone']").val(phonehap);


	alert("회원가입이 완료되었습니다! 로그인해주세요");
	return true;
	
}


/*function checkFn(){
	var checkName = /^[가-힣]{2,6}$/g;
	var checkEmail = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/g;
	var name = document.getElementById("name");
	var email = document.getElementById("email"); 
	var check1 = document.frm.checkOne.checked;
	var check2 = document.frm.checkTwo.checked;
	var check3 = document.frm.checkThree.checked

	
	//이름
	if (name.value == "") {
		alert("이름을 입력해주세요!");
		return false;
	}
	else if (!checkName.test(name.value)) {
		alert("특수문자,영어,숫자는 사용할 수 없습니다. 한글만 입력해주세요!");
		return false;
	}
	else if (email.value == "") {
		alert("이메일을 입력해주세요!");
		return false;
	}
	else if (!checkEmail.test(email.value)) {
		alert("올바른 이메일 형식이 아닙니다.");
		return false;
	}
	if(!check2){
		alert("이용약관 동의하셔야 합니다.")
		return false;
	} 
	if(!check3){
		alert("이용약관 동의하셔야 합니다.")
		return false;
	} 
	
	alert("인증이 완료되었습니다!");
	return true;
}
*/
//아이디 중복확인
function fn_idChk(){
	var id =$("#id").val();
	//console.log(id);
	$.ajax({
		url:"idChk",
		type:"post",
		data:"id="+id,
		//data:{id:$("#id").val()},
		//data:{"id":id},
		//dataType:"json",
		success:function(data){
		console.log(data);
			if(data=="1"){
				alert("중복된 아이디 입니다.");
				
			}else if(data=="0"){
				$("#idChk").attr("value","Y");
				alert("사용가능한 아이디입니다.");
				
			}
		}	
		
	})

}

//닉네임 중복확인
function fn_nickChk(){
	var nickname =$("#nickname").val();
	//console.log(id);
	$.ajax({
		url:"nickChk",
		type:"post",
		data:"nickname="+nickname,
		//data:{id:$("#id").val()},
		//data:{"id":id},
		//dataType:"json",
		success:function(data){
		console.log(data);
			if(data=="1"){
				alert("중복된 닉네임 입니다.");
				
			}else if(data=="0"){
				$("#nickChk").attr("value","Y");
				alert("사용가능한 닉네임 입니다.");
				
			}	
		}	
		
	})

}

//추천인 확인
function fn_recomChk(){
	var recommender =$("#recom").val();
	//console.log(id);
	$.ajax({
		url:"recomChk",
		type:"post",
		data:"id="+recommender,
		//data:{id:$("#id").val()},
		//data:{"id":id},
		//dataType:"json",
		success:function(data){
		console.log(data);
			if(data=="1"){
				alert("추천인 아이디가 있습니다.");
				$("#recomChk").attr("value","Y");
			}else if(data=="0"){
				
				alert("추천인 아이디가 존재하지 않습니다. 다시 입력해주세요!");
				$("#recomChk").attr("value","Y");
			}	
		}	
		
	})

}


var nameSw=0;
var emailSw=0
var sendemailSW=0;

function nameChk(obj){
	var checkName = /^[가-힣]{2,6}$/g;
	if (checkName.test(obj.value)) {
	nameSw = 1;
		
	}else if(nameSw.value==""&& !checkName.test(obj.value)){
		alert("이름을 입력해주세요!");
		nameSw=0;
	}
	if(nameSw == 1 && emailSw == 1){
		$("#sendEmail").attr("disabled", false);
		$("#singOk").attr("disabled", false);
	}else{
		$("#sendEmail").attr("disabled", true);
		$("#singOk").attr("disabled", false);
	}
}
function emailChk(obj){
	var emailReg = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/g;
	if(emailReg.test(obj.value)){
		emailSw = 1;
	}else{
		emailSw = 0;
	}
	if(noMemIndexSw == 1 && noMemEmailSw == 1){
		$("#sendEmail").attr("disabled", false);
		$("#singOk").attr("disabled", false);
		
	}else{
		$("#sendEmail").attr("disabled", true);
		$("#singOk").attr("disabled", false);
	}
}

function emailsendFn(){
	var form = $("#email_sign");
	if(sendemailSW == 1){
		
	}else{
		noMemSendSw = 1;
		$("#emailspan").text("보내는중...");
		$.ajax({
			url : "noMembersendEmailPw.do",
			type : "post",
			data : $(form).serialize(),
			success : function(data){
				$("#emailspan").text("");
				$("#sendEmail").attr("disabled", true);
				if(data.trim() == "none"){
					alert("관련 정보가 존재 하지 않습니다");
					noMemSendSw = 0;
				}else{
					noMemSendSw = 0;
					alert(data.trim() + "님의 해당 이메일로 주문 비밀번호를 발송했습니다");
					form.find(".btn-sendEmail").trigger('click');
				}
				
			}
		});
	}
}

