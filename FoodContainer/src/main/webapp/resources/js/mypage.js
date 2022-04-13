$(document).ready(function(){
	
    var size_sw = 0;
    var left_full_menu = $("#asdieMenu");

    $("#menu_size_down").hide();

    // 페이지가 로드되었을때 브라우저 크기를 기준으로 설정
    if(window.innerWidth <= 992){
        left_full_menu.hide();
    }
	
	if(window.innerWidth <= 576){
			$(".findT").css("text-align","left");
			$(".order-btn").addClass("mt-1 mb-1");
			$(".cancle-seeVIew-btn").addClass("mt-2");
			$(".number-good").css("text-align","left");
			$(".cancleView-btn").attr("class","d-grid gap-2 d-md-flex justify-content-md-center cancleView-btn");
			$(".interItem-icon").css({"text-align":"left", "margin-top":"0px"});
			$(".interItem-btn").attr("class","d-grid gap-2 d-md-flex justify-content-md-center mt-2 interItem-btn");
			$(".changeInfor-input").css("width","90%");
			$(".changeInforOk-inputId, .changeInforOk-inputName, .changeInforOk-inputPhone, .changeInforOk-inputNicName, .changeInforOk-inputEmail").css("width","100%");
			$(".changeInforOk-btn").attr("class","d-flex justify-content-center changeInforOk-btn");
			$(".addressManage-1, .addressManage-2, .addressManage-3, .addressManage-4, .addressManage-5, .addressManage-6").css("width","100%");
			$(".noteManage-btn").addClass("mb-3");
			$("#noteManageView-title").css("width","23%");
			$(".memberSecession-select2").addClass("d-flex justify-content-center");
			$(".noteManageView-group1").hide();
			$(".noteManageView-group2").show();
			$(".noteManageView-group3").show();
			$(".main-card").attr("class","col-11 h-80 p-5 bg-secondary bg-gradient bg-opacity-25 border mx-auto rounded-3 main-card");
		}else {
			$(".findT").css("text-align","right");
			$(".order-btn").removeClass("mt-1 mb-1");
			$(".cancle-seeVIew-btn").removeClass("mt-2");
			$(".number-good").css("text-align","right");
			$(".cancleView-btn").attr("class","d-grid gap-4 d-md-flex justify-content-md-center cancleView-btn");
			$(".interItem-icon").css({"text-align":"right", "margin-top":"20px"});
			$(".interItem-btn").attr("class","d-grid gap-4 d-md-flex justify-content-md-center mt-2 interItem-btn");
			$(".changeInfor-input").css("width","70%");
			$(".changeInforOk-inputId, .changeInforOk-inputName, .changeInforOk-inputPhone, .changeInforOk-inputNicName, .changeInforOk-inputEmail").css("width","90%");
			$(".changeInforOk-btn").attr("class","changeInforOk-btn");
			$(".addressManage-1, .addressManage-2, .addressManage-3, .addressManage-4, .addressManage-5, .addressManage-6").css("width","90%");
			$(".noteManage-btn").removeClass("mb-3");
			$("#noteManageView-title").css("width","35%");
			$(".memberSecession-select2").removeClass("d-flex justify-content-center");
			$(".noteManageView-group1").show();
			$(".noteManageView-group2").hide();
			$(".noteManageView-group3").hide();
			$(".main-card").attr("class","col-7 h-80 p-5 bg-secondary bg-gradient bg-opacity-25 border mx-auto rounded-3 main-card");
		}
	
    $(window).resize(function() {
		if(window.innerWidth <= 576){
			$(".findT").css("text-align","left");
			$(".order-btn").addClass("mt-1 mb-1");
			$(".cancle-seeVIew-btn").addClass("mt-2");
			$(".number-good").css("text-align","left");
			$(".cancleView-btn").attr("class","d-grid gap-2 d-md-flex justify-content-md-center cancleView-btn");
			$(".interItem-icon").css({"text-align":"left", "margin-top":"0px"});
			$(".interItem-btn").attr("class","d-grid gap-2 d-md-flex justify-content-md-center mt-2 interItem-btn");
			$(".changeInfor-input").css("width","90%");
			$(".changeInforOk-inputId, .changeInforOk-inputName, .changeInforOk-inputPhone, .changeInforOk-inputNicName, .changeInforOk-inputEmail").css("width","100%");
			$(".changeInforOk-btn").attr("class","d-flex justify-content-center changeInforOk-btn");
			$(".addressManage-1, .addressManage-2, .addressManage-3, .addressManage-4, .addressManage-5, .addressManage-6").css("width","100%");
			$(".noteManage-btn").addClass("mb-3");
			$("#noteManageView-title").css("width","23%");
			$(".memberSecession-select2").addClass("d-flex justify-content-center");
			$(".noteManageView-group1").hide();
			$(".noteManageView-group2").show();
			$(".noteManageView-group3").show();
			$(".main-card").attr("class","col-11 h-80 p-5 bg-secondary bg-gradient bg-opacity-25 border mx-auto rounded-3 main-card");
		}else {
			$(".findT").css("text-align","right");
			$(".order-btn").removeClass("mt-1 mb-1");
			$(".cancle-seeVIew-btn").removeClass("mt-2");
			$(".number-good").css("text-align","right");
			$(".cancleView-btn").attr("class","d-grid gap-4 d-md-flex justify-content-md-center cancleView-btn");
			$(".interItem-icon").css({"text-align":"right", "margin-top":"20px"});
			$(".interItem-btn").attr("class","d-grid gap-4 d-md-flex justify-content-md-center mt-2 interItem-btn");
			$(".changeInfor-input").css("width","70%");
			$(".changeInforOk-inputId, .changeInforOk-inputName, .changeInforOk-inputPhone, .changeInforOk-inputNicName, .changeInforOk-inputEmail").css("width","90%");
			$(".changeInforOk-btn").attr("class","changeInforOk-btn");
			$(".addressManage-1, .addressManage-2, .addressManage-3, .addressManage-4, .addressManage-5, .addressManage-6").css("width","90%");
			$(".noteManage-btn").removeClass("mb-3");
			$("#noteManageView-title").css("width","35%");
			$(".memberSecession-select2").removeClass("d-flex justify-content-center");
			$(".noteManageView-group1").show();
			$(".noteManageView-group2").hide();
			$(".noteManageView-group3").hide();
			$(".main-card").attr("class","col-7 h-80 p-5 bg-secondary bg-gradient bg-opacity-25 border mx-auto rounded-3 main-card");
		}
		
		if(window.innerWidth <= 992){

            if(size_sw == 0){
                left_full_menu.hide();
            }

        }else{
            left_full_menu.show();
            size_sw = 0;
        }
	
    });
    
    // 리뷰작성 평점
    $(".star-rating input[type=radio]").click(function(){
		var star_rating = $(this).val();
		if(star_rating == 1){
			$(this).parent().parent().next().find(".result-star").html("매우 나빠요");
		}else if(star_rating == 2){
			$(this).parent().parent().next().find(".result-star").html("나빠요");
		}else if(star_rating == 3){
			$(this).parent().parent().next().find(".result-star").html("보통");
		}else if(star_rating == 4){
			$(this).parent().parent().next().find(".result-star").html("좋아요");
		}else if(star_rating == 5){
			$(this).parent().parent().next().find(".result-star").html("매우 좋아요");
		}
	});
	
	$('.bi-trash').on('click',function(){
		var YN = confirm("정말 삭제하시겠습니까?");
		if(YN){
			var product_index = $(this).parent().find("input[name='product_index']").val();
			var member_index = $(this).parent().find("input[name='member_index']").val();
			
			$.ajax({
				url : "dibsDeleteMypage.do",
				type : "post",
				data : "product_index="+product_index+"&member_index="+member_index,
				success : function(){
					alert('삭제가 완료되었습니다.');
					window.location.reload();
				}
			});
		}
	});
	
});

// 배송지 관리 주소검색
function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
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

// 쪽지관리 전체선택
function selectAll(obj)  {
	  const checkboxes 
	       = document.getElementsByName('note');
	  
	  checkboxes.forEach((checkbox) => {
	    checkbox.checked = obj.checked;
	  })
}

//세션이 만료됬을때 메인으로 나가짐
	setInterval(function sessionCheck(){
		var sessionMember = '';
		$.ajax({
			type : 'POST',
			datatype : 'json',
			url : 'memberSessionCheck.do',
			success : function(result){
				sessionMember = result;
				if(sessionMember == 'false'){
					alert('로그아웃 되었습니다.');
					location.href = 'index.do';
				}
			},
			error : function(xhr, status, error) {
				alert('ajax error');
			}
		});
	}, 60000);
	
//구매확정버튼 함수
function buyOk(obj) {
	var YN = confirm("정말 구매확정 하시겠습니까?");
	if(YN){
		var orderItem_index = $(obj).parent().find("input[name=orderItem_index]").val();
		var member_index = $(obj).parent().find("input[name=member_index]").val();
		var point = $(obj).parent().find("input[name=point]").val();
		$.ajax({
			url: "buyOk.do",
			type: "post",
			data: "orderItem_index="+orderItem_index+"&member_index="+member_index+"&point="+point,
			success: function(){
				alert("포인트 "+point+"원이 적립되었습니다.");
				window.location.reload();
			}
		});
	}
}

//png만 처리가능하게 하는 함수
function bannerPreviewImage(event, obj, formName){

    // 확장자를 추출하는 과정
    var valueArray = obj.value.split(".");
    var extension = valueArray[valueArray.length-1];

    // 해당폼을 추출하는 과정
    var form = $(obj).closest('form');

    if(extension == "png" || extension == "PNG"){ // 확장자가 png일 경우

        // 원래 있던 이미지는 초기화
        $(form).find(".imageContainer").find("img").attr("src", "");

        // 이미지가 없다는 문구를 숨기기
        $(form).find(".bannerMessage").hide();

        // 리더기 생성
        var reader = new FileReader();

        // 리더기 작동
        reader.onload = function(event) {
            $(form).find(".imageContainer").find("img").attr("src", event.target.result);
        };

        // 이미지를 인코딩
        reader.readAsDataURL(event.target.files[0]);

    }else{ // 확장자가 png가 아닐 경우

        alert("확장자는 png만 가능합니다.");

        // 파일input의 value값 초기화
        $(obj).val("");

        // 원래 있던 이미지는 초기화
        $(form).find(".imageContainer").find("img").attr("src", "");

        // 이미지가 없다는 문구를 보이기
       	$(form).find(".bannerMessage").show();
        if(formName != "bannerRegisterForm"){
			$(form).find(".bannerMessage").text("이미지가 없습니다.");
		}
		
    }

}

//리뷰작성 submit
function reviewSumbit(obj, formName){
	var flag = true;
	var form = $(obj).closest('form');
	
	if($(obj).parent().parent().find("input[name=rating]:radio:checked").length < 1){
		flag = false;
	}else if($(obj).parent().parent().find(".reviewTextarea").val() == ""){
		$(obj).parent().parent().find(".reviewTextarea").focus();
		flag = false;
	}
	
	if(flag == false){
		alert('별점과 내용은 필수 사항입니다.');
	}else{
		var YN = confirm("정말 리뷰작성 하시겠습니까?");
		if(YN){
			if(formName == "bannerRegisterForm"){
				alert('리뷰 작성이 완료되었습니다');
			}else{
				alert('리뷰 등록이 실패되었습니다');
			}
			form.submit();
		}
	}
	
}

//관심상품 장바구니 추가
function cartInsert(obj) {
	var YN = confirm("장바구니에 추가 하시겠습니까?");
	if(YN){
		var product_index = $(obj).parent().parent().find("input[name='product_index']").val();
		var member_index = $(obj).parent().parent().find("input[name='member_index']").val();
		
		$.ajax({
				url : "cartInsert.do",
				type : "post",
				data : "product_index="+product_index+"&member_index="+member_index,
				success : function(){
					alert('장바구니 추가 완료되었습니다.');
					window.location.reload();
				}
			});
	}
}


	





