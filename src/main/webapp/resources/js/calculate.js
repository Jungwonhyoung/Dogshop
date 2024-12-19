


var today = new Date();//오늘 날짜
 
 
function prevClaendar(){//이전 달력
  today = new Date(today.getFullYear(), today.getMonth()-1,today.getDate());
  	
  	var monthStr = today.getMonth()+1;
  	
  	if(monthStr < 10){
		monthStr = '0' + monthStr;
	}
	
	var dateStr = today.getFullYear() + '-' + monthStr;
	
	
	  
  $.ajax({
		url: '/pet/calculateAgain', //요청경로
		type: 'post',
		data: {'sellMonth':dateStr}, //필요한 데이터 '데이터이름':값
		success: function(result) {
			document.getElementById('sellList').value = result;
			buildCalendar();
		},
		error: function() {
			//ajax 실행 실패 시 실행되는 구간
			alert('실패');
		}
	});
  
	
  buildCalendar();
}
//다음 달력을 오늘을 저장하고 달력에 뿌려줌
function nextCalendar(){
	today = new Date(today.getFullYear(), today.getMonth()+1,today.getDate());
  
  	var monthStr = today.getMonth()+1;
  	
  	if(monthStr < 10){
		monthStr = '0' + monthStr;
	}
  
  var dateStr = today.getFullYear() + '-' + monthStr;

  $.ajax({
		url: '/pet/calculateAgain', //요청경로
		type: 'post',
		data: {'sellMonth':dateStr}, //필요한 데이터 '데이터이름':값
		success: function(result) {
			document.getElementById('sellList').value = result;
			buildCalendar();
		},
		error: function() {
			//ajax 실행 실패 시 실행되는 구간
			alert('실패');
		}
	});
  
  
  buildCalendar();
 
}
function buildCalendar(){
  var nMonth = new Date(today.getFullYear(),today.getMonth(),1);// 이번달의 첫번째날
  var lastDate =new Date(today.getFullYear(),today.getMonth()+1,0);//이번달의 마지막날
  var tblCalendar =document.getElementById("calendar");    //테이블 달력을 만드는 테이블
  var tblCalendarYM =document.getElementById("calendarYM"); ///XXXX년도XX월 출력
  tblCalendarYM.innerHTML = today.getFullYear()+"년"+(today.getMonth()+1)+"월";
  
  //날짜별 매출 데이터를 가져 옴
  var sellList = document.getElementById('sellList').value;
  var sellListData = JSON.parse(sellList);
  
  console.log(sellListData);
  
  for(var i = 0 ; i < sellListData.length ; i++){
	console.log(sellListData[i].visitVO.sellDate + ' / ' + sellListData[i].visitVO.sellMoney);
	}
  
  
	 
	// alert(today);
 
  //기존에 테이블에 던 달력 내용 삭제
  while(tblCalendar.rows.length>2){
    tblCalendar.deleteRow(tblCalendar.rows.length -1);
  }
  var row = null;
  row =tblCalendar.insertRow();
  var cnt =0;
  // 1일이 시작되는 칸을 맞추어줌
 
  for ( i=0; i <nMonth.getDay(); i++) {
    cell =row.insertCell();
    cnt = cnt + 1;
}
  //달력 출력
  for(i=1; i<=lastDate.getDate(); i++){
    cell = row.insertCell();
    
    //날짜별 내용 세팅
    
    var str ='';
    str += '<div onclick="thatDay('+ i +');">';
    str += i + '';// 일 sellListData[i].sellDate 
    str += '</div>';
    str += '<div>';
    
    for(var j = 0 ; j < sellListData.length ; j++){
		if(parseInt(sellListData[j].visitVO.sellDate) == i){
			 str += sellListData[j].visitVO.sellMoney;
		}
	}
    
    //str += 1000 + '';// 금액sellListData[i].sellMoney
    
    
    
    str += '</div>';
    
    //cell.innerHTML = i + ' ' + 1000; // 그날의 일자를 cell안에 넣는다
    cell.innerHTML = str;
    
    //달과 일자(i)를 판별 그 값을 비교
    cnt = cnt + 1;
    if (cnt%7 == 0)    //1주=7일
      row = calendar.insertRow();
  }
}
 
buildCalendar();


function thatDay(i){
	var date = document.getElementById('calendarYM').innerText;
	var month = date.substring(5);
	var year = date.substring(0, 4);
	if(i < 10){
		i = '0' + i;
	}
	if(month == '10월' || month == '11월' || month == '12월'){
		var strMonth = date.substring(5, 7);
		var strDate = year + '-' + strMonth + '-' + i;
		
		
		
	}
	else{
		var strMonth = date.substring(5, 6);
		var strDate = year + '-0' + strMonth + '-' + i;
	}
	  $.ajax({
		url: '/pet/calculateVisitPetList', //요청경로
		type: 'post',
		data: {'visitVO.visitDate' : strDate}, //필요한 데이터 '데이터이름':값
		success: function(result) {
			var str = '';
			str += '';
			for(var i = 0 ; i < result.length ; i++){
				str += '<tr>';
				str += '<td>' + (i + 1) + '</td>';
				str += '<td>' + result[i].petName + '</td>';
				str += '<td>' + result[i].petBreed +'</td>';
				str += '<td>' + result[i].petTell + '</td>';
				str += '<td>' + result[i].visitVO.visitStyle + '</td>';
				str += '<td>' + result[i].visitVO.payType + '</td>';
				str += '<td>' + result[i].visitVO.payMoney + '</td>';
				str += '</tr>';
			}
			str += '</table>';
			document.getElementById('modalTbody').innerHTML = str;
			
		},
		error: function() {
			//ajax 실행 실패 시 실행되는 구간
			alert('실패');
		}
	});
	var modalTag = document.getElementById('exampleModal');
   var myModal = new bootstrap.Modal(modalTag);
   myModal.show();
}




