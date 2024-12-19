<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body{
	text-align: center;
}
</style>
</head>
<body>
<table style="width: 500px; margin: 0 auto; margin-bottom: 30px;">
	<tr>
		<td>
			<input type="text" class="form-control" placeholder="휴대전화  뒤 4자리 입력" id="searchValue">
		</td>
		<td>
			<button class="btn btn-secondary" type="button" onclick="petSearch();">검색</button>
		</td>
	</tr>
</table>
<table class="table" style="width: 1500px; margin: 0 auto;">
	<thead>
		<tr style="background-color: #adb5bd;">
			<td>No</td>
			<td>이름</td>
			<td>견종</td>
			<td>전화번호</td>
			<td>주소</td>
		</tr>
	</thead>
	<tbody id="searchTbody">
		
	</tbody>
</table>

<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered modal-dialog-scrollable modal-lg">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">미용 기록</h5>
				<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
			</div>
			<div class="modal-body" >
				<table class="table">
					<tbody id="modalTbody1">
					
					</tbody>
				</table>
				<table class="table">
					<thead>
						<tr>
							<td>이름</td>
							<td>메모</td>
							<td>결제방식</td>
							<td>금액</td>
							<td>방문일</td>
						</tr>
					</thead>
					<tbody id="modalTbody2">
					
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>

<script type="text/javascript" src="/resources/js/petSearch.js?ver=4"></script>
</body>
</html>