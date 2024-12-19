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
.table > tr > td{

	border: 1px solid black;
}
.search{
	margin-top:20px; 
}
</style>
</head>
<body>
<div>
<form action="/pet/insertDogReg"  method="post">
<table>
	<tr>
		<td>
		
		<input type="hidden" name="petNum" id="petNum" disabled>
		
		이름:<input type="text" value="" name="petName" id="petName"><br><br>
		견종 : <input type="text" value="" name="petBreed" id="petBreed"><br><br>
		미용스타일 : <input type="text" name="visitVO.visitStyle" ><br><br>
		연락처 :<input type="text" value="" name="petTells" maxlength="3" id="petTell1">-<input type="text" value="" name="petTells" maxlength="4" id="petTell2">-<input type="text" value="" name="petTells" maxlength="4"id="petTell3"><br><br>
		주소 :<input type="text" value="" name="petAddr" id="petAddr"><br><br>
		메모 :<input type="text" value="" name="visitVO.visitMemo"> <br><br>
		
		결제비용: <input type="radio" name="visitVO.payType" value="카드" checked>카드
				  <input type="radio" name="visitVO.payType" value="현금" >현금 <br>
		
		<!-- 카드체크를 하면 자바 스크립트에서 미용비용입력 값을 받아 그걸 pet_card에 저장 -->
		<!-- 현금체크를 하면 자바 스크립트에서 미용비용입력 값을 받아 그걸 pet_cash에 저장 -->
		<input type="text" name="visitVO.payMoney" placeholder="결제 금액을 입력하세요.">
		
		<input type="submit" value="등록">
		</td>
		</tr>
		
		<tr style="margin-top: 20px">
		<td><br>검색<input type="text" id="searchValue"><input type="button" value="검색" onclick="searchMember();"></td>
		</tr>
</table>

</form>
</div>
<div style="height: 30px;"></div>
<div id="memberInfoDiv">
	
</div>
<!-- Button trigger modal -->


<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        ...
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>
<script type="text/javascript" src="/resources/js/dog_reg.js?ver=116"></script>
</body>
</html>