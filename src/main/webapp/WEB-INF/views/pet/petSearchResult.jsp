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
	<tr align="center"  bgcolor="white">
<c:forEach items="${petList }" var="pet">
        <td>${pet.petName }</td>
        <td>${pet.petBreed }</td>
        <td>${pet.petTell }</td>
        <td>${pet.petAddr}</td>  
        </c:forEach>
        </tr>
<c:forEach items="${visitList }" var="visit">
        <tr>
	<td>${visit.visitStyle }</td>
	<td>${visit.visitMemo }</td>
	<td>${visit.payType }</td>
	<td>${visit.payMoney }</td>
        </tr>
</c:forEach>
</table>
</body>
</html>