<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Food Container</title>
    <!-- css링크 -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+KR&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/base.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/purchasePage.css">
</head>
<body>
	<!-- 헤더 -->
	<header class="border-bottom border-dark">
		<%@include file="/WEB-INF/views/base/header.jsp"%>
	</header>

    <!-- 네비게이션 바 -->
    <nav class="navbar-expand-lg navbar-light bg-warning bg-gradient bg-opacity-25 fw-bold fs-5">
        <div class="row">
            <div class="col-lg-2 d-none d-lg-block"></div>

            <div class="col-2 col-sm-1 pe-0 d-lg-none border border-dark" id="navLeftMenu"></div>

			<%@include file="/WEB-INF/views/base/nav.jsp"%>

        </div>
    </nav>


    <!-- 섹션 -->
    <section class="row mt-1">

            <!-- 왼쪽 사이드메뉴 -->
            <div class="col-lg-2 d-none d-lg-block"></div>

            <!-- 메인 -->
            <div class="row col-12 col-lg-10 ps-lg-3 pe-1">

                <!-- 헤딩 -->
                <div class="display-5 my-4 ps-3 fw-bold">
                    상품 구매
                </div>

                <!-- 내용 -->
                <form class="col-12 col-sm-8 ps-4 ps-lg-2 mt-2" name="puchaseForm">

                    <!-- 전체약관 동의 -->
                    <div class="form-check fs-6 table-responsive" style="white-space: nowrap;">
                        <input class="form-check-input border border-dark" type="checkbox" value="" id="AgreeAllCheckbox">
                        <label class="form-check-label text-dark fw-bold" for="AgreeAllCheckbox">
                            주문 및 결제대행 서비스 이용약관 동의<span class="text-danger">(필수)</span>
                        </label>
                    </div>
                    <hr>

                    <!-- 세부약관1 -->
                    <div class="container my-3">
                        <div class="form-check fs-6">
                            <input class="form-check-input border border-dark" type="checkbox" value="" id="AgreeOneCheckbox">
                            <label class="form-check-label text-dark fw-bold" for="AgreeOneCheckbox">
                                주문 상품 정보에 대한 동의
                            </label>
                            <ul class="container pe-0">
                                <li class="fontSmall" style="list-style-type: square;">
                                    주문할 상품과 가격, 할인 및 배송정보 등을 최종 확인하였으며, <br class="d-md-none">구매에 동의합니다.<br>
                                    (전자상거래법 제 8조 2항)
                                </li>
                            </ul>
                        </div>
                    </div>

                    <!-- 세부약관2 -->
                    <div class="container mb-5">
                        <div class="form-check fs-6">

                            <input class="form-check-input border border-dark" type="checkbox" value="" id="AgreeTwoCheckbox">
                            <label class="form-check-label text-dark fw-bold" for="AgreeTwoCheckbox">
                                결제대행 서비스 이용약관 동의
                            </label>

                            <div class="container">
                                <input class="form-check-input border border-dark" type="checkbox" value="" id="AgreeTwo_OneCheckbox">
                                <label class="form-check-label text-dark fontSmall" for="AgreeTwo_OneCheckbox">
                                    전자금융거래 기본약관
                                </label>
                                <a class="link-info" href="#">약관보기</a>
                            </div>

                            <div class="container">
                                <input class="form-check-input border border-dark" type="checkbox" value="" id="AgreeTwo_TwoCheckbox">
                                <label class="form-check-label text-dark fontSmall" for="AgreeTwo_TwoCheckbox">
                                    개인정보 수집 및 이용동의
                                </label>
                                <a class="link-info" href="#">약관보기</a>
                            </div>

                            <div class="container">
                                <input class="form-check-input border border-dark" type="checkbox" value="" id="AgreeTwo_ThreeCheckbox">
                                <label class="form-check-label text-dark fontSmall" for="AgreeTwo_ThreeCheckbox">
                                    개인정보 제공 동의 (Food Container)
                                </label>
                                <br class="d-md-none">
                                <a class="link-info" href="#">약관보기</a>
                            </div>

                        </div>
                    </div>

                    <!-- 주문자 정보 -->
                    <div class="fs-3 fw-bold">
                        주문자 정보 <span class="text-danger fs-6">*필수</span>
                    </div>
                    <hr>

                    <!-- 주문자명 -->
                    <div class="row mb-5">
                        <div class="col-4 col-md-3 col-xxl-2 fs-5 fw-bold d-flex align-items-center justify-content-start justify-content-lg-center">
                            <span class="text-danger">*</span>주문자명
                        </div>

                        <div class="col-8 col-sm-7 col-md-6 col-lg-5 col-xxl-4">
                            <input type="text" class="form-control fw-bold" name="name" value="홍길동" readonly>
                        </div>
                    </div>

                    <!-- 배송지 설정 -->
                    <div class="fs-3 fw-bold mt-2">
                        배송지 설정 <span class="text-danger fs-6">*필수</span>
                    </div>
                    <hr>

                    <!-- 기본 배송지&새 배송지-->
                    <div class="row mb-4 bg-secondary bg-opacity-25 d-flex align-items-center p-2">

                        <div class="col-4 col-sm-3 col-xxl-2 fs-5 fw-bold d-flex justify-content-lg-end">
                            배송지
                        </div>

                        <div class="col-8 col-md-8 row d-flex justify-content-end">
                            <div class="col-6 col-md-5 p-0">
                                <input class="form-check-input border border-dark" type="radio" id="basicAddress" name="addressSort">
                                <label class="form-check-label text-dark fontSmall fw-bold" for="basicAddress">
                                    기본 배송지
                                </label>
                            </div>

                            <div class="col-6 col-md-5">
                                <input class="form-check-input border border-dark" type="radio" id="newAddress" name="addressSort" checked>
                                <label class="form-check-label text-dark fontSmall fw-bold" for="newAddress">
                                    새 배송지
                                </label>
                            </div>
                        </div>
                    </div>

                    <!-- 받는분 -->
                    <div class="row d-flex align-items-center mb-4">

                        <div class="col-3 col-xxl-2 fs-5 fw-bold d-flex align-items-center justify-content-start justify-content-lg-center">
                            <span class="text-danger">*</span>받는분
                        </div>

                        <div class="col-5 col-md-6 col-lg-5 col-xxl-4">
                            <input type="text" class="form-control p-1 p-sm-2" value="" placeholder="이름을 입력하세요">
                        </div>

                        <div class="col-4 col-md-3 col-xl-3">
                            <input class="form-check-input border border-dark" type="checkbox" value="" id="sameNameCheckbox">
                            <label class="form-check-label text-dark fontSmall" for="sameNameCheckbox">
                                주문자와 동일
                            </label>
                        </div>

                    </div>

                    <!-- 배송지 -->
                    <div class="row d-flex align-items-start mb-4">

                        <div class="col-3 col-xxl-2 fs-5 fw-bold d-flex justify-content-start justify-content-lg-center mt-3">
                            <span class="text-danger">*</span>배송지
                        </div>

                        <div class="col-9 col-lg-8">

                            <div class="input-group my-2">
                                <span class="input-group-text">우편번호</span>
                                <input type="text" id="postcode" class="form-control" readonly>
                                <button type="button" onclick="deliveryAddress()" value="우편번호 찾기" class="btn btn-secondary">주소검색</button>
                            </div>
                            <div class="input-group my-2">
                                <span class="input-group-text">주소</span>
                                <input type="text" id="address" class="form-control" readonly>
                            </div>
                            <div class="input-group my-2">
                                <span class="input-group-text">상세주소</span>
                                <input type="text" id="detailAddress" class="form-control" readonly>
                            </div>

                        </div>

                    </div>

                    <!-- 연락처 -->
                    <div class="row mb-4">

                        <div class="col-3 col-xxl-2 fs-5 d-flex justify-content-lg-center fw-bold">
                            <span class="text-danger">*</span>연락처
                        </div>

                        <div class="col-9 col-lg-8 input-group w-75 phone">
                            <select class="form-select" aria-label="Default select example">
                                <option selected>010</option>
                                <option value="1">011</option>
                                <option value="2">016</option>
                                <option value="3">018</option>
                            </select>
                            <span class="input-group-text">-</span>
                            <input type="number" class="form-control">
                            <span class="input-group-text">-</span>
                            <input type="number" class="form-control">
                        </div>

                    </div>

                    <!-- 요청사항 -->
                    <div class="row mb-5">
                        <div class="col-3 col-xxl-2 fs-5 d-flex justify-content-lg-center fw-bold pe-0">
                            요청사항
                        </div>

                        <div class="col-9 col-lg-8">
                            <input class="form-control pe-1" list="requestOptions" placeholder="ex)부재시 경비실에 맡겨 주세요." maxlength="30">
                            <datalist id="requestOptions">
                                <option value="배송 전에 미리 연락 바랍니다.">
                                <option value="부재시 경비실에 맡겨 주세요.">
                                <option value="부재시 전화 주시거나 문자 남겨 주세요.">
                            </datalist>
                        </div>
                    </div>

                    <!-- 결제 상품 문구 -->
                    <div class="fs-3 fw-bold mt-2">
                        결제 상품
                    </div>
                    <hr>

                    <!-- 결제 상품들 -->
                    <div class="mt-4 mb-5" id="productItems">

                        <div class="row bg-light border rounded-3 py-2 m-2">
                            <div class="col-6 col-sm-4">
                                <img src="<%=request.getContextPath()%>/resources/img/good.png" class="img-thumbnail" alt="...">
                            </div>

                            <div class="col-6 col-sm-8 d-flex flex-column">
                                <div class="mb-auto fw-bold pt-2">비비고 진한고기만두400g*2번들</div>
                                <div class="fw-bold pb-2">4580원 | 5개</div>
                            </div>
                        </div>

                        <div class="row bg-light border rounded-3 py-2 m-2">
                            <div class="col-6 col-sm-4">
                                <img src="<%=request.getContextPath()%>/resources/img/good.png" class="img-thumbnail" alt="...">
                            </div>

                            <div class="col-6 col-sm-8 d-flex flex-column">
                                <div class="mb-auto fw-bold pt-2">비비고 진한고기만두400g*2번들</div>
                                <div class="fw-bold pb-2">4580원 | 5개</div>
                            </div>
                        </div>

                        <div class="row bg-light border rounded-3 py-2 m-2">
                            <div class="col-6 col-sm-4">
                                <img src="<%=request.getContextPath()%>/resources/img/good.png" class="img-thumbnail" alt="...">
                            </div>

                            <div class="col-6 col-sm-8 d-flex flex-column">
                                <div class="mb-auto fw-bold pt-2">비비고 진한고기만두400g*2번들</div>
                                <div class="fw-bold pb-2">4580원 | 5개</div>
                            </div>
                        </div>

                    </div>

                    <!-- 할인혜택 -->
                    <div class="fs-3 fw-bold">
                        할인혜택
                    </div>
                    <hr>

                    <!-- 쿠폰 -->
                    <div class="row mb-3">
                        <div class="col-4 fs-5">
                            적용 가능 쿠폰
                        </div>

                        <div class="col-8">
                            <select class="form-select" name="coupon" required>
                                <option value="" disabled selected style="display: none;">쿠폰이 없습니다.</option>
                                <option value="쿠폰번호로 대체">10%할인쿠폰</option>
                            </select>
                        </div>
                    </div>

                    <!-- 쿠폰 적용 문구 -->
                    <div class="row mb-5 bg-info bg-opacity-25 d-flex align-items-center py-2">

                        <div class="col-9">
                            10%할인 쿠폰이 적용 되었습니다.
                        </div>

                        <div class="col-3 d-flex justify-content-end">
                            <button type="button" class="btn btn-sm btn-warning text-dark fw-bold">초기화</button>
                        </div>

                    </div>

                    <!-- 포인트 -->
                    <div class="row mb-2 d-flex align-items-center">

                        <div class="col-5">
                            <input class="form-check-input border border-dark" type="checkbox" value="" id="pointCheckbox" name="pointYN">
                            <label class="form-check-label text-dark" for="pointCheckbox">
                                포인트 사용<br class="d-lg-none"> (최대 20,000p)
                            </label>
                        </div>

                        <div class="col-6 pe-1">
                            <input type="text" class="form-control" name="point" value="" placeholder="숫자만 입력하세요" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');" style="text-align: right;">
                        </div>
                        
                        <div class="col-1 ps-0 fw-bold">p</div>

                    </div>

                    <!-- 모바일버전 최종 결제 정보 -->
                    <div class="d-sm-none mt-4 memberFinalPurchase">
                        <!-- 최종 결제 정보 문구 -->
                        <div class="fs-4 fw-bold mb-3">최종 결제 정보</div>

                        <!-- 총 금액 -->
                        <div class="row my-2 d-flex align-items-center">
                            <div class="col-6 fs-6">총 금액</div>
                            <div class="col-6 text-danger fs-5 d-flex justify-content-end fw-bold price">
                                <span id="productSumPrice">40,000</span>
                                원
                            </div>
                        </div>

                        <!-- 배송비 -->
                        <div class="row my-2 d-flex align-items-center">
                            <div class="col-6 fs-6">배송비</div>
                            <div class="col-6 text-danger fs-5 d-flex justify-content-end fw-bold price">
                                <span id="deliveryPrice">3,000</span>
                                원
                            </div>
                        </div>

                        <!-- 쿠폰 적용 -->
                        <div class="row my-2 d-flex align-items-center">
                            <div class="col-6 fs-6">쿠폰 적용</div>
                            <div class="col-6 text-primary fs-5 d-flex justify-content-end fw-bold price">
                                -<span id="couponPrice">0</span>
                                원
                            </div>
                        </div>

                        <!-- 포인트 적용 -->
                        <div class="row my-2 d-flex align-items-center">
                            <div class="col-7 fs-6">포인트 적용</div>
                            <div class="col-5 text-primary fs-5 d-flex justify-content-end fw-bold price">
                                -<span id="pointPrice">0</span>
                                원
                            </div>
                        </div>

                        <hr>

                        <!-- 최종 결제 문구-->
                        <div class="fs-5 fw-bold mb-2">최종 결제 가격</div>

                        <!-- 최종 결제 가격 -->
                        <div class="text-danger mb-3 d-flex justify-content-end align-items-center fw-bold">
                            <span class="fs-1" id="finalPrice">43,000</span>
                            <span class="fs-4">&nbsp;원</span>
                        </div>

                        <!-- 적립 얘정 포인트 -->
                        <div class="row my-2">
                            <div class="col-8 fs-6">적립 예정 포인트</div>
                            <div class="col-4 fs-5 fw-bold d-flex justify-content-end">
                                <span class="price" id="pointPrice">111</span>
                                p
                            </div>
                        </div>

                        <!-- 결제버튼 -->
                        <div class="row mt-2 mb-1">
                            <button type="button" class="btn btn-primary btn-lg fw-bold fs-4">결제하기</button>
                        </div>
                    </div>

                </form>

                <!-- pc버전 최종 결제 정보 -->
                <div class="col-4 d-none d-sm-block position-sticky p-3 ms-md-3 memberFinalPurchase" id="purchaseDiv">

                    <!-- 최종 결제 정보 문구 -->
                    <div class="fs-4 fw-bold mb-3">최종 결제 정보</div>

                    <!-- 총 금액 -->
                    <div class="row my-2 d-flex align-items-center">
                        <div class="col-6 fs-6">총 금액</div>
                        <div class="col-6 text-danger fs-5 d-flex justify-content-end fw-bold price">
                            <span id="productSumPrice">40,000</span>
                            원
                        </div>
                    </div>

                    <!-- 배송비 -->
                    <div class="row my-2 d-flex align-items-center">
                        <div class="col-6 fs-6">배송비</div>
                        <div class="col-6 text-danger fs-5 d-flex justify-content-end fw-bold price">
                            <span id="deliveryPrice">3,000</span>
                            원
                        </div>
                    </div>

                    <!-- 쿠폰 적용 -->
                    <div class="row my-2 d-flex align-items-center">
                        <div class="col-6 fs-6">쿠폰 적용</div>
                        <div class="col-6 text-primary fs-5 d-flex justify-content-end fw-bold price">
                            -<span id="couponPrice">0</span>
                            원
                        </div>
                    </div>

                    <!-- 포인트 적용 -->
                    <div class="row my-2 d-flex align-items-center">
                        <div class="col-7 fs-6">포인트 적용</div>
                        <div class="col-5 text-primary fs-5 d-flex justify-content-end fw-bold price">
                            -<span id="pointPrice">0</span>
                            원
                        </div>
                    </div>

                    <hr>

                    <!-- 최종 결제 문구-->
                    <div class="fs-5 fw-bold mb-2">최종 결제 가격</div>

                    <!-- 최종 결제 가격 -->
                    <div class="text-danger mb-3 d-flex justify-content-end align-items-center fw-bold">
                        <span class="fs-1" id="finalPrice">43,000</span>
                        <span class="fs-4">&nbsp;원</span>
                    </div>

                    <!-- 적립 얘정 포인트 -->
                    <div class="row my-2">
                        <div class="col-8 fs-6">적립 예정 포인트</div>
                        <div class="col-4 fs-5 fw-bold d-flex justify-content-end">
                            <span class="price" id="pointPrice">111</span>
                            p
                        </div>
                    </div>

                    <!-- 결제버튼 -->
                    <div class="row mt-2 mb-1">
                        <button type="button" class="btn btn-primary btn-lg fw-bold fs-4">결제하기</button>
                    </div>
                    

                </div>

            </div>

    </section>

    <!-- 푸터 -->
    <footer class="py-3 my-4">
        <%@include file="/WEB-INF/views/base/footer.jsp"%>
    </footer>

    <!-- 자바스크립트 -->
    <script src="https://kit.fontawesome.com/b30bc4e0a9.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/js/jquery-3.6.0.min.js"></script>
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script src="<%=request.getContextPath()%>/resources/js/base.js"></script>
    <script src="<%=request.getContextPath()%>/resources/js/purchasePage.js"></script>
</body>
</html>