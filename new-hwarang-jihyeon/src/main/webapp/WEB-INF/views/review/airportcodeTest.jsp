<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�����ڵ� �˻�</title>
</head>
<body>
<div>
		<table>
			<c:forEach items="${aircodeList}" var="aircode">
				<tr>
					<th>���� �ڵ�</th>
					<th>���� �̸�</th>
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