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
// 		alert("�̸��� �ʼ��Դϴ�");
// 		return;
// 	}
	
// 	if( id == '' ){
// 		alert("id�� �Է����ּ���");
// 		return;
// 	}
	
// 	if( passwd == '' ){
// 		alert("��й�ȣ�� �ʼ��Դϴ�");
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
        url: "/insert.do", // ȣ�� url
        method: "post", // ���۹��
        data: id,name,passwd, // �Ķ����
        dataType: "text", // ���� ���� Ÿ�� ex) xml, html, text, json
        success:function(data){
        	alert(data);
        }
        
    });

});

</script>
<title>Insert title here</title>
</head>
<body>
  <div class="modal fade" id="myModal" data-backdrop="static" role="dialog"> <!-- ����� ���� �κШ� : id�� -->
<!--     data-backdrop="static" �� �ɼ��� �����ÿ��� ���â ���� Ŭ���ص� ����� �ȴ��� -->
<!-- modal-lg, modal-sm�� �Է��Ͻø� ���� ���, ���� ��޷� ������ ���� �մϴ� -->
    <div class="modal-dialog" role="document">   
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">��</button>
          <h4 class="modal-title">���̵� ��й�ȣ ã��</h4> <!-- ����� ���� �κШ� : Ÿ��Ʋ -->
        </div>
        <div class="modal-body">
          <form>
<div class="input_name">
�̸�
<input name="name">
</div>
<div class="input_id">
���̵�
<input name="id">
</div>
<div class="input_passwd">
��й�ȣ
<input type="password" name="passwd">
</div>
</form><!-- ����� ���� �κШ� : �ؽ�Ʈ �޽��� -->       
       </div>
         <div class="modal-footer"> <!--Ȯ��/��� ��ư �������ڸ� -->
<!--         <input type="button" id="submit" value="���� �Է�" onclick="send(this.form);">       -->
         <button class="send" data-id="form">������</button>
         <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>
<br/><br/>
<!-- �Ʒ����� data-toggle�� data-target �Ӽ����� data-toggle���� modal ���� data-target�Ӽ����� ��� â ��ü�� 
���δ� div�� id �̸��� �����ϸ� �ȴ�. -->
<button type="button" data-toggle="modal" data-target="#myModal">��� â ����</button>
<input type="button" value="��� Ȯ��"
			       onclick="location.href='result.do'">
</body>
</html>