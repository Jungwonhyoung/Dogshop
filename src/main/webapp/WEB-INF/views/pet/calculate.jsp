<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
 <head>
 <meta charset="utf-8" />
 <style>
#calendar { 
   border-collapse: collapse;
   border: 1px solid black;
   width: 800px;
   margin: 0 auto;
}  

#calendar tr {
	height: 70px;
}
#calendar tr td {
  border: 1px solid black;
  width: 70px;
}
</style>
<title>달력 만들기</title>
</head>
<body>
  	<input type="hidden" value='${sellList }' id="sellList">
  	
    <table id="calendar">
    	
      <tr >
        <td align ="center"> <label onclick="prevClaendar()"><</label> </td>
        <td colspan="5" align ="center" id="calendarYM">yyyy년 m월</td>
        <td align ="center"> <label onclick="nextCalendar()">></label> </td>
      </tr>
 
      <tr>
        <td align="center">일</td>
        <td align="center">월</td>
        <td align="center">화</td>
        <td align="center">수</td>
        <td align="center">목</td>
        <td align="center">금</td>
        <td align="center">토</td>
      </tr>
 
    </table>
    
       <!--  <script type="text/javascript" >
 
          buildCalendar();
        </script> -->
 <!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered modal-dialog-scrollable modal-lg">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">방문한 사람</h5>
				<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
			</div>
			<div class="modal-body" >
				<table class="table">
					<thead>
						<tr>
							<td>No</td>
							<td>이름</td>
							<td>견종</td>
							<td>미용스타일</td>
							<td>성별</td>
							<td>결제방식</td>
							<td>금액</td>
						</tr>
	
									</thead>
					<tbody id="modalTbody">
					
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>

	<script type="text/javascript" src="/resources/js/calculate.js?ver=28"></script>
  </body>
</html>