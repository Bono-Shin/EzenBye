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
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/adminPage_leftAside.css">
</head>
<body>
	<!-- 헤더 -->
	<header class="border-bottom border-dark">
		<%@include file="/WEB-INF/views/base/header.jsp"%>
	</header>

    <!-- 네비게이션 바 -->
    <nav class="navbar-expand-lg navbar-light bg-light fw-bold">
        <%@include file="/WEB-INF/views/base/nav.jsp"%>
    </nav>

    <!-- 섹션 -->
    <section class="mt-3">
        <div class="row">

            <!-- 왼쪽 사이드메뉴 -->
            <div class="col-2 pe-0" id="leftDiv">
                <aside id="leftAside">
                    <!-- 실질적인 왼쪽 사이드메뉴 내용 -->
                    <%@include file="/WEB-INF/views/adminPage/leftAside.jsp"%>
                </aside>
            </div>

            <!-- 메인 -->
            <div class="col-8">
                <article id="mainSection">
                
                    <!-- 헤딩 -->
					<%@include file="/WEB-INF/views/adminPage/headingMenu.jsp"%>

                    <div class="container">

                        <div class="row d-flex align-items-center">

                            <div class="form-check my-2 col-6 p-0">

                                <input class="form-check-input border border-success" type="checkbox" value="" id="flexCheckDefault">
                                <label class="form-check-label text-success fw-bold" for="flexCheckDefault">
                                    전체
                                </label>
    
                                <button type="button" class="btn btn-outline-danger btn-sm p-1 fw-bold">선택 삭제</button> 

                            </div>

                            <div class="col-6">
                                <button type="button" class="btn btn-outline-primary fw-bold float-end">상품<span class="d-none d-sm-inline"> </span>등록</button>
                            </div>
                        </div>

                        <div class="row">
                            <table class="table table-hover" id="productTable">

                                <colgroup></colgroup>
    
                                <thead>
                                    <tr>
                                        <th scope="col"></th>
                                        <th scope="col" class="d-none d-lg-table-cell">번호</th>
                                        <th scope="col" class="d-none d-md-table-cell">상품 분류</th>
                                        <th scope="col" class="d-none d-md-table-cell">브랜드</th>
                                        <th scope="col">상품 이름</th>
                                        <th scope="col" class="d-none d-sm-table-cell">재고</th>
                                        <th scope="col" class="px-0">관리</th>
                                    </tr>
                                </thead>
                                <tbody>

                                    <tr>
                                        <th class="col1">
                                            <input class="form-check-input border border-dark" type="checkbox" value="" id="flexCheckDefault">
                                        </th>
                                        <th class="col2 d-none d-lg-table-cell">1</th>
                                        <td class="col3 d-none d-md-table-cell">냉동식품</td>
                                        <td class="col4 d-none d-md-table-cell">CJ</td>
                                        <td class="col5">
                                            <a href="#" class="link-primary">무말랭이무말랭이무말랭이무말랭이무말랭이무말랭이무말랭이무말랭이무말랭이무말랭이무말랭이</a>
                                        </td>
                                        <td class="col6 d-none d-sm-table-cell">3</td>
                                        <td class="col7 px-0">
                                            <button class="btn btn-outline-primary btn-sm px-1 py-0">수정</button>
                                            <button class="btn btn-outline-dark btn-sm px-1 py-0">삭제</button>
                                        </td>
                                    </tr>
                                    
                                    <tr>
                                        <th class="col1">
                                            <input class="form-check-input border border-dark" type="checkbox" value="" id="flexCheckDefault">
                                        </th>
                                        <th class="col2 d-none d-lg-table-cell">1</th>
                                        <td class="col3 d-none d-md-table-cell">냉동식품</td>
                                        <td class="col4 d-none d-md-table-cell">CJ</td>
                                        <td class="col5">
                                            <a href="#" class="link-primary">건지산방사능맛수통 나무 다리어카센터</a>
                                        </td>
                                        <td class="col6 d-none d-sm-table-cell">3</td>
                                        <td class="col7 px-0">
                                            <button class="btn btn-outline-primary btn-sm px-1 py-0">수정</button>
                                            <button class="btn btn-outline-dark btn-sm px-1 py-0">삭제</button>
                                        </td>
                                    </tr>
                                    
                                </tbody>
                            </table>
                        </div>

                    </div>
                    
                    <!-- 검색&페이징 -->
                    <div id="searchMember" class="row container mt-3">

                        <div class="col-12 col-lg-6">

                            <form class="row" method="get" action="#">
                                <select class="col-3 form-select form-select-sm py-1 px-1" style="-webkit-appearance:none;">
                                    <option>상품이름</option>
                                </select>

                                <input type="text" class="col-6 form-control w-50" placeholder="상품이름을 입력" value="">
                                
                                <button type="submit" class="btn btn-outline-primary btn-sm col-3 col-sm-2">검색</button>
                            </form>

                        </div>

                        <div class="col-12 col-lg-6 d-flex justify-content-center">

                            <ul class="pagination mt-1">
                                <li class="page-item">
                                    <a class="page-link" href="#" aria-label="Previous">
                                        <span aria-hidden="true">&laquo;</span>
                                    </a>
                                </li>
                                <li class="page-item"><a class="page-link" href="#">1</a></li>
                                <li class="page-item"><a class="page-link" href="#">2</a></li>
                                <li class="page-item"><a class="page-link" href="#">3</a></li>
                                <li class="page-item">
                                    <a class="page-link" href="#" aria-label="Next">
                                        <span aria-hidden="true">&raquo;</span>
                                    </a>
                                </li>
                            </ul>

                        </div>

                    </div>

                </article>
            </div>

            <!-- 오른쪽 사이드메뉴 -->
            <div class="col-2 d-none d-sm-block">
                <!-- 실질적인 오른쪽 사이드메뉴 내용 -->
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
    <script src="<%=request.getContextPath()%>/resources/js/base.js"></script>
	<script src="<%=request.getContextPath()%>/resources/js/jquery-3.6.0.min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/js/adminPage.js"></script>
    <script src="<%=request.getContextPath()%>/resources/js/adminPage_leftAside.js"></script>
</body>
</html>