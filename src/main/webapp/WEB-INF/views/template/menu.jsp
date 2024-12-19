<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.loginSpan:hover{
	cursor: pointer;
}
#joinModal .form-label {
    margin-bottom: 0;
}
#joinModal label {
    font-weight: bold;
    font-style: italic;
}
</style>
</head>
<body>


<div class="row">
	<div class="col">
		<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
			<div class="container-fluid">
				<!-- <a class="navbar-brand" href="#">Navbar</a>
				<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button> -->
				<div class="collapse navbar-collapse" id="navbarNav">
					<ul class="navbar-nav">
						<li class="nav-item">
							<a class="nav-link" aria-current="page" href="/pet/home">홈 </a>
						</li>
					
						<li class="nav-item">
							<a class="nav-link" aria-current="page" href="/pet/dogReg">미용등록</a>
						</li>
						<!-- <li class="nav-item">
							<a class="nav-link" aria-current="page" href="/pet/reservation">예약</a>
						</li> -->
						 <!-- <li class="nav-item">
							<a class="nav-link" aria-current="page" href="/pet/petList">등록된 강아지 목록</a>
						</li> -->
						<li class="nav-item">
							<a class="nav-link" aria-current="page" href="/pet/petSearch">검색</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" aria-current="page" href="/pet/calculate">정산</a>
						</li>
					</ul>
				</div>
			</div>
		</nav>
	</div>
</div>


<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</body>
</html>











