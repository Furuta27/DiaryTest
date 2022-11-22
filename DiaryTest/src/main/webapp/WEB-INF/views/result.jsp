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
db결과
<c:forEach var="vo" items="${ list }">
<div class="test_box">
<div class="id">이름 :${vo.name}</div>
<div class="name">아이디 : ${vo.id}</div>
<div class="passwd">비밀번호 :${vo.passwd}</div>
</div>
</c:forEach>
<button type="button" onclick="location.href='test.do'">돌아가기</button>
</body>
</html> 