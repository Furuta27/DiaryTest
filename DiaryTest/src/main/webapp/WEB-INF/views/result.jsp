<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
db���
<c:forEach var="vo" items="${ list }">
<div class="test_box">
<div class="id">�̸� :${vo.name}</div>
<div class="name">���̵� : ${vo.id}</div>
<div class="passwd">��й�ȣ :${vo.passwd}</div>
</div>
</c:forEach>
<button type="button" onclick="location.href='test.do'">���ư���</button>
</body>
</html> 