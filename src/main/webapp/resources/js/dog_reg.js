/*$(function() {*/

    $("input[name='petTells']").keyup (function () {

        var charLimit = $(this).attr("maxlength");

        if (this.value.length >= charLimit) {

            $(this).next("input[name='petTells']").focus();

            return false;

        }

    });

/*});*/

function searchMember(){
	var searchValue = $('#searchValue').val();
	
	  $.ajax({
		url: '/pet/dogRegAgain', //요청경로
		type: 'post',
		data: {'searchValue':searchValue}, //필요한 데이터 '데이터이름':값
		success: function(result) {
			$('#memberInfoDiv').empty();
			
			var str = '';
			str += '<table class="table">';
			str += '<tr align="center" bgcolor="white">';
			str += '<td></td>';
			str += '<td>No</td>';
			str += '<td>이름</td>';
			str += '<td>견종</td>';
			str += '<td>전화번호</td>';
			str += '<td>주소</td>';
			str += '</tr>';

			for(var i = 0 ; i < result.length ; i++){
				str += '<tr>';
				if(i == 0){
					str += '<td><input type="radio" name="test" onclick="changeInfo(this);" checked></td>';
				}
				else{
					str += '<td><input type="radio" name="test" onclick="changeInfo(this);"></td>';
				}
				
				str += '<td>' + result[i].petNum + '</td>';
				str += '<td>' + result[i].petName + '</td>';
				str += '<td>' + result[i].petBreed + '</td>';
				str += '<td>' + result[i].petTell + '</td>';
				str += '<td>' + result[i].petAddr + '</td>';
				str += ' </tr>';
			}

			str += '</table>';
			
			$('#memberInfoDiv').append(str);
			
			//조회된 데이터를 회원의 정보로 세팅
			setInfo(result[0]);	
			
		},
		error: function() {
			//ajax 실행 실패 시 실행되는 구간
			alert('실패입니다');
		}
	});
}

function setInfo(data){
	var petNum = data.petNum;//insert에 사용
	
	var petName = data.petName;	
	var petBreed = data.petBreed;
	var petAddr = data.petAddr;
	var petTell = data.petTell;
	
	var petTells = petTell.split("-");
	$('#petNum').val(petNum);
	$('#petName').val(petName);
	$('#petBreed').val(petBreed);
	$('#petAddr').val(petAddr);
	$('#petTell1').val(petTells[0]);
	$('#petTell2').val(petTells[1]);
	$('#petTell3').val(petTells[2]);
	//$('#petName').val();//value 속성값을 가져온다.
	//$('#petName').val('fdsfsd');//value 속성값을 세팅한다.

	//result[0].petNum		
	//result[0].petBreed		
	//result[0].petTell		
	//result[0].petAddr		
	
	$('#petNum').attr('disabled', false);

}

function changeInfo(selecetedTag){
	var parentTag1 = $(selecetedTag).closest('tr');
	
/*	var petNum = $(parentTag).children().ep(1).text();//insert에 사용
	
	var petName = $(parentTag).children().ep(2).text();
	var petBreed = $(parentTag).children().ep(3).text();
	var petAddr = $(parentTag).children().ep(5).text();
	var petTell = $(parentTag).children().ep(4).text();*/
	

	var petNum = $(selecetedTag).parent().next().text();
	var petName = $(selecetedTag).parent().next().next().text();
	var petBreed = $(selecetedTag).parent().next().next().next().text();
	var petTell = $(selecetedTag).parent().next().next().next().next().text();
	var petAddr = $(selecetedTag).parent().next().next().next().next().next().text();
	//var petNum = $(selecetedTag).closest('tr').children().ep(1).text();//insert에 사용
	/*var petName = $(parentTag1).children().ep(2).text();
	var petBreed = $(parentTag1).children().ep(3).text();
	var petAddr = $(parentTag1).children().ep(5).text();
	var petTell = $(parentTag1).children().ep(4).text();*/
	
	var petTells = petTell.split("-");
	$('#petNum').val(petNum);
	$('#petName').val(petName);
	$('#petBreed').val(petBreed);
	$('#petAddr').val(petAddr);
	$('#petTell1').val(petTells[0]);
	$('#petTell2').val(petTells[1]);
	$('#petTell3').val(petTells[2]);
}

