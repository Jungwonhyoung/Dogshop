<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.table{
	border: 1px solid black;
}
tr > td{

	border: 1px solid black;
}
</style>
</head>
<body>
<table class="table">
	<tr align="center" bgcolor="white">
		<td>No</td>
		<td>이름</td>
		<td>견종</td>
		<td>전화번호</td>
		<td>주소</td>
		<td>성별</td>
	</tr>
<c:forEach items="${petList }" var="pet">
	 <tr align="center" bgcolor="white">
	 <td>${pet.petNum }</td>
	 <td>${pet.petName }</td>
	 <td>${pet.petBreed }</td>
	 <td>${pet.petTell }</td>
	 <td>${pet.petAddr }</td>
	 <td>${pet.visitVO.visitStyle }</td>
	 </tr>
</c:forEach>
</table>
</body>
</html>