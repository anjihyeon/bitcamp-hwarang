<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">

		<!-- 슬릭그리드 기본 CSS -->
		<link rel="stylesheet" href="/resources/slickgrid/slick.grid.css" type="text/css"/>

		<!-- jquery-ui가 없으면 안예쁘게 나옴 -->
		<link rel="stylesheet" href="/resources/slickgrid/css/smoothness/jquery-ui-1.8.16.custom.css" type="text/css"/>

		<!-- 필수 jquery library -->
		<script src="/resources/js/jquery-1.11.1.min.js"></script>
		<script src="/resources/js/jquery.event.drag-2.2.js"></script>

		<!-- 필수 슬릭그리드 library -->
		<script src="/resources/slickgrid/slick.core.js"></script>
		<script src="/resources/slickgrid/slick.grid.js"></script>
		
		<!-- 슬릭그리드 세팅 -->
		<script type="text/javascript" charset="utf-8">
			//DOM이 모두 로드되었을 때
			$(document).ready(function () {
				//슬릭 그리드 컬럼 설정
				var columns = [{
					id : "title", //내부 접근 아이디
					name : "제목", //Grid에 표시될 컬럼명
					field : "title" //연동할 데이터상의 변수명
				},
				{
					id : "duration",
					name : "기간",
					field : "duration"
				},
				{
					id : "%",
					name : "성취도(%)",
					field : "percentComplete"
				},
				{
					id : "start",
					name : "시작일",
					field : "start"
				},
				{
					id : "finish",
					name : "종료일",
					field : "finish"
				},
				{
					id : "effort-driven",
					name : "노력 여부",
					field : "effortDriven"
				}];
	
				//그리드 옵션들
				var options = {
					enableCellNavigation : true,
					enableColumnReorder : false //재정렬은 jquery-ui.sortable 모듈 필요
				};
	
				
				//테스트를 위해 임의로 데이터를 생성하고,
				//SlickGrid 객체를 만들어 myGrid라는 id의 Div에 적용한다.
				(function () {
					var data = [];
					for(var i = 0; i < 500000; i++) {
						data[i] = {
							title : "Task " + i,
							duration : "5 days",
							percentComplete : Math.round(Math.random() * 100),
							start : "01/01/2009",
							finish : "01/05/2009",
							effortDriven : (i % 5 == 0)
						};
					}
	
					var grid = new Slick.Grid("#myGrid", data, columns, options);
				})();
					
			});
		</script>
</head>
<body>
		<!-- 아무것도 없는 DIV를 만든다. -->
		<!-- 여기에 SlickGrid가 그려진다. -->
		<div id="myGrid" style="width:600px;height:500px;"></div>
</body>
</html>