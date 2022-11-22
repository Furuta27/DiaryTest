<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<meta charset="EUC-KR">
<script>
// function send(f){
// // 	$("name").val('name');
// // 	$("id").val('id');
// // 	$("passwd").val('passwd');
// 	var name = f.name.value;
// 	var id = f.id.value;
// 	var passwd = f.passwd.value;
// 	if( name == '' ){
// 		alert("이름은 필수입니다");
// 		return;
// 	}
	
// 	if( id == '' ){
// 		alert("id는 입력해주세요");
// 		return;
// 	}
	
// 	if( passwd == '' ){
// 		alert("비밀번호는 필수입니다");
// 		return;
// 	}
// 	f.action = "insert.do";
// 	f.method = "post";
// 	f.submit();
	
// }
$("#send").click(function(f){
	var id = $(this).data('id');
	var name = $(this).data('name');
	var passwd = $(this).data('passwd');
    var request = $.ajax({
        url: "/insert.do", // 호출 url
        method: "post", // 전송방식
        data: id,name,passwd, // 파라미터
        dataType: "text", // 전송 받을 타입 ex) xml, html, text, json
        success:function(data){
        	alert(data);
        }
        
    });

});

</script>
<title>Insert title here</title>
</head>
<body>
  <div class="modal fade" id="myModal" data-backdrop="static" role="dialog"> <!-- 사용자 지정 부분① : id명 -->
<!--     data-backdrop="static" 이 옵션이 있을시에는 모달창 밖을 클릭해도 모달이 안닫힘 -->
<!-- modal-lg, modal-sm을 입력하시면 스몰 모달, 라지 모달로 선언이 가능 합니다 -->
    <div class="modal-dialog" role="document">   
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">×</button>
          <h4 class="modal-title">아이디 비밀번호 찾기</h4> <!-- 사용자 지정 부분② : 타이틀 -->
        </div>
        <div class="modal-body">
          <form>
<div class="input_name">
이름
<input name="name">
</div>
<div class="input_id">
아이디
<input name="id">
</div>
<div class="input_passwd">
비밀번호
<input type="password" name="passwd">
</div>
</form><!-- 사용자 지정 부분③ : 텍스트 메시지 -->       
       </div>
         <div class="modal-footer"> <!--확인/취소 버튼 누르는자리 -->
<!--         <input type="button" id="submit" value="정보 입력" onclick="send(this.form);">       -->
         <button class="send" data-id="form">보내기</button>
         <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>
<br/><br/>
<!-- 아래에서 data-toggle과 data-target 속성에서 data-toggle에는 modal 값을 data-target속성에는 모달 창 전체를 
감싸는 div의 id 이름을 지정하면 된다. -->
<button type="button" data-toggle="modal" data-target="#myModal">모달 창 열기</button>
<input type="button" value="결과 확인"
			       onclick="location.href='result.do'">
</body>
</html>