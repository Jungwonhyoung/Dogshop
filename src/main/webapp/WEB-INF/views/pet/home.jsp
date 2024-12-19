<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.table{
	border: 1px solid black;
}
.table > tr > td{

	border: 1px solid black;
}
</style>
</head>
<body>

<h3>
<center>
강아지 미용 관리
</center>
</h3>

<table class="table">
	<tr align="center" bgcolor="white">
		<td>No</td>
		<td>이름</td>
		<td>견종</td>
		<td>미용스타일</td>
		<td>전화번호</td>
		<td>메모</td>
		<td>예약시간</td>
	</tr>

<c:forEach items="${dateCutList }" var="pet" varStatus="var">
	<tr align="center" bgcolor="white">
<td>${var.index + 1}</td>
<td>${pet.petName}</td>
<td>${pet.petBreed}</td>
<td>${pet.visitVO.visitStyle}</td>
<td>${pet.petTell}</td>
<td>${pet.visitVO.visitMemo }</td>
<td>${pet.visitVO.visitDate }</td>
</tr>
</c:forEach>
</table>
</body>
</html>