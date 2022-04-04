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
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/adminPage.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/adminPage_leftMenu.css">
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

            <div class="col-2 col-sm-1 pe-0 d-lg-none" id="navLeftMenu">
				<%@include file="/WEB-INF/views/adminPage/adminPage_nav_leftMenu.jsp"%>
            </div>

			<%@include file="/WEB-INF/views/base/nav.jsp"%>

        </div>
    </nav>

    <!-- 섹션 -->
    <section class="mt-1">
        <div class="row">

            <!-- 왼쪽 사이드메뉴 -->
            <div class="col-lg-2 d-none d-lg-block">
               <%@include file="/WEB-INF/views/adminPage/leftAside.jsp"%>
            </div>

            <!-- 메인 -->
            <div class="col-12 col-sm-9 col-md-10 col-lg-8">
                <article id="mainSection">
    
                    <!-- 헤딩 -->
                    <div class="fs-5 my-2 fw-bold">
                        등록 상품
                    </div>

                    <div>

                        <!-- 체크박스&상품등록 버튼 -->
                        <div class="form-check mt-2 mb-3">
                            <input class="form-check-input border border-dark" type="checkbox" value="" id="productCheckbox">
                            <label class="form-check-label me-3 text-dark fw-bold" for="productCheckbox">
                                전체
                            </label>
                            <button type="button" class="btn btn-outline-danger btn-sm p-1 fw-bold">선택 삭제</button>
                            
                            <button type="button" class="btn btn-primary fw-bold float-end" onclick="location.href='product_register.do'">상품 등록</button>
                        </div>

                        <!-- 상품 테이블 -->
                        <div class="table-responsive">
                            <table class="table table-hover centerTable" style="min-width: 600px;" id="productTable">

                                <colgroup></colgroup>

                                <thead>
                                    <tr>
                                        <th scope="col"></th>
                                        <th scope="col">상품 번호</th>
                                        <th scope="col">상품 분류</th>
                                        <th scope="col">브랜드</th>
                                        <th scope="col">상품 이름</th>
                                        <th scope="col">재고</th>
                                        <th scope="col">관리</th>
                                    </tr>
                                </thead>
                                
                                <tbody>

                                    <tr>
                                        <th>
                                            <input class="form-check-input border border-dark" type="checkbox" value="">
                                        </th>
                                        <th>1</th>
                                        <td>냉동식품</td>
                                        <td>CJ</td>
                                        <td class="col5">
                                            <a href="product_detail.do" class="link-primary">무말랭이무말랭이무말랭이무말랭이무말랭이무말랭이무말랭이무말</a>
                                        </td>
                                        <td>3</td>
                                        <td>
                                            <button class="btn btn-outline-primary btn-sm px-1 py-0" onclick="location.href='product_modify.do'">수정</button>
                                            <button class="btn btn-outline-dark btn-sm px-1 py-0">삭제</button>
                                        </td>
                                    </tr>
                                    
                                    <tr>
                                        <th>
                                            <input class="form-check-input border border-dark" type="checkbox" value="">
                                        </th>
                                        <th>1</th>
                                        <td>냉동식품</td>
                                        <td>CJ</td>
                                        <td class="col5">
                                            <a href="#" class="link-primary">건지산방사능맛수통 나무 다리어카센터</a>
                                        </td>
                                        <td>3</td>
                                        <td>
                                            <button class="btn btn-outline-primary btn-sm px-1 py-0">수정</button>
                                            <button class="btn btn-outline-dark btn-sm px-1 py-0">삭제</button>
                                        </td>
                                    </tr>
                                    
                                </tbody>
                            </table>
                        </div>

                    </div>

                    <!-- 검색&페이징 -->
                    <div id="searchMember" class="row">

                        <!-- 검색 -->
                        <form method="get" action="#" class="col-12 col-md-8 row d-flex align-items-center justify-content-center">

                            <div class="col-3 d-flex justify-content-end">
                                <select class="form-select form-select-sm p-1" name="searchType" id="searchType">
                                    <option value="productName">상품 이름</option>
                                </select>
                            </div>

                            <div class="col-6">
                                <input type="text" class="form-control" name="searchValue" placeholder="검색어를 입력하세요" value="">
                            </div>
                            
                            <div class="col-3 d-flex justify-content-start">
                                <button type="submit" class="btn btn-outline-primary">검색</button>
                            </div>      

                        </form>

                        <!-- 페이징 -->
                        <ul class="col-12 col-md-4 d-flex align-items-center justify-content-center pagination mt-2 my-md-0">

                            <li class="page-item">
                                <a class="page-link" href="#" aria-label="Previous">
                                    <span aria-hidden="true">&lt;</span>
                                </a>
                            </li>

                            <li class="page-item"><a class="page-link" href="#">1</a></li>
                            <li class="page-item"><a class="page-link" href="#">2</a></li>
                            <li class="page-item"><a class="page-link" href="#">3</a></li>

                            <li class="page-item">
                                <a class="page-link" href="#" aria-label="Next">
                                    <span aria-hidden="true">&gt;</span>
                                </a>
                            </li>

                        </ul>

                    </div>
    
                </article>
            </div>

            <!-- 오른쪽 사이드메뉴 -->
            <div class="col-sm-3 col-md-2 col-lg-2 d-none d-sm-block">
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
    <script src="<%=request.getContextPath()%>/resources/js/base.js"></script>
	<script src="<%=request.getContextPath()%>/resources/js/adminPage.js"></script>
    <script src="<%=request.getContextPath()%>/resources/js/adminPage_leftMenu.js"></script>
</body>
</html>