<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table class="table">

<c:forEach items="${petList }" var="pet">
		<tr align="center"  bgcolor="white">
        <td><a href="/pet/petSearchResult?petNum=${pet.petNum }">${pet.petName }</a></td>
        <td>${pet.petBreed }</td>
        <td>${pet.petTell }</td>
        <td>${pet.petAddr}</td>
	</tr>
</c:forEach>
</table>
</body>
</html>