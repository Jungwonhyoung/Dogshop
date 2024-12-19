function petSearch(){
	var searchValue = document.getElementById('searchValue').value;
	
	$.ajax({
		url: '/pet/petSearch',
		type: 'post',
		data: {'petTell' : searchValue},
		success: function(result) {
			var str = '';
			for(var i = 0 ; i < result.length ; i++){
				str += '<tr onclick="petInfo(' + result[i].petNum +');">';
				str += '<td>' + (i + 1) + '</td>';
				str += '<td>' + result[i].petName + '</td>';
				str += '<td>' + result[i].petBreed +'</td>';
				
				str += '<td>' + result[i].petTell + '</td>';
				str += '<td>' + result[i].petAddr+ '</td>';
				str += '</tr>';
			}
			str += '</table>';
			document.getElementById('searchTbody').innerHTML = str;
		},
		error: function() {
			//ajax 실행 실패 시 실행되는 구간
			alert('실패');
		}
	});
	
}

function petInfo(petNum){
	$.ajax({
		url: '/pet/petSearchInfo',
		type: 'post',
		data: {'petNum' : petNum},
		success: function(result) {
			var str = '';
			str += '<tr>';
			str += '<td>이름</td>';
			str += '<td>' + result[0].petName + '</td>';
			str += '<td>견종</td>';
			str += '<td>' + result[0].petBreed +'</td>';
			str += '</tr>';
			str += '<tr>';
			str += '<td>전화번호</td>';
			str += '<td>' + result[0].petTell + '</td>';
			str += '<td>주소</td>';
			str += '<td>' + result[0].petAddr + '</td>';
			str += '</tr>';
			document.getElementById('modalTbody1').innerHTML = str;
			str = '';
			for(var i = 0 ; i < result[0].visitList.length ; i++){
				str += '<tr>';
				str += '<td>' + result[0].visitList[i].visitStyle + '</td>';
				str += '<td>' + result[0].visitList[i].visitMemo +'</td>';
				str += '<td>' + result[0].visitList[i].payType + '</td>';
				str += '<td>' + result[0].visitList[i].payMoney + '</td>';
				str += '<td>' + result[0].visitList[i].visitDate + '</td>';
				str += '</tr>';
			}
			document.getElementById('modalTbody2').innerHTML = str;
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