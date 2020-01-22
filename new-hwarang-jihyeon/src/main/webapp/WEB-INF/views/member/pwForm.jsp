<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/menu.jsp" %>
<%@include file="../layout/rightUser.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>화랑 - 비밀번호 변경</title>
<style type="text/css">
#pw-div{
	margin: 0 30% 0 30%;
}
</style>
</head>
<body>
<div id="pw-div" align="center">
	<form action="/member/pw">
		id<input type="text" value="${member.member_id}"  id="inputId" class="form-control" name="id" style="width: 40%;">
		pw<input type="password" id="inputPw" class="form-control" name="password" style="width: 40%;">
		<input type="submit" id="submit" value="확인" class="btn btn-outline-dark">
		<input type="button" value="취소" onclick="history.back()" class="btn btn-outline-dark">
	</form>
</div>
</body>
</html>