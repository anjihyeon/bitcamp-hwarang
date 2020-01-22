<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>도시코드 검색</title>
</head>
<body>
<div>
		<table>
			<c:forEach items="${aircodeList}" var="aircode">
				<tr>
					<th>도시 코드</th>
					<th>도시 이름</th>
				</tr>
				<tr>
					<td>${aircode.cityCode}</td>
					<td>${aircode.cityKor}</td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>