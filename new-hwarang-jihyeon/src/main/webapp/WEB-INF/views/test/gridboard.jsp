<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">

		<!-- �����׸��� �⺻ CSS -->
		<link rel="stylesheet" href="/resources/slickgrid/slick.grid.css" type="text/css"/>

		<!-- jquery-ui�� ������ �ȿ��ڰ� ���� -->
		<link rel="stylesheet" href="/resources/slickgrid/css/smoothness/jquery-ui-1.8.16.custom.css" type="text/css"/>

		<!-- �ʼ� jquery library -->
		<script src="/resources/js/jquery-1.11.1.min.js"></script>
		<script src="/resources/js/jquery.event.drag-2.2.js"></script>

		<!-- �ʼ� �����׸��� library -->
		<script src="/resources/slickgrid/slick.core.js"></script>
		<script src="/resources/slickgrid/slick.grid.js"></script>
		
		<!-- �����׸��� ���� -->
		<script type="text/javascript" charset="utf-8">
			//DOM�� ��� �ε�Ǿ��� ��
			$(document).ready(function () {
				//���� �׸��� �÷� ����
				var columns = [{
					id : "title", //���� ���� ���̵�
					name : "����", //Grid�� ǥ�õ� �÷���
					field : "title" //������ �����ͻ��� ������
				},
				{
					id : "duration",
					name : "�Ⱓ",
					field : "duration"
				},
				{
					id : "%",
					name : "���뵵(%)",
					field : "percentComplete"
				},
				{
					id : "start",
					name : "������",
					field : "start"
				},
				{
					id : "finish",
					name : "������",
					field : "finish"
				},
				{
					id : "effort-driven",
					name : "��� ����",
					field : "effortDriven"
				}];
	
				//�׸��� �ɼǵ�
				var options = {
					enableCellNavigation : true,
					enableColumnReorder : false //�������� jquery-ui.sortable ��� �ʿ�
				};
	
				
				//�׽�Ʈ�� ���� ���Ƿ� �����͸� �����ϰ�,
				//SlickGrid ��ü�� ����� myGrid��� id�� Div�� �����Ѵ�.
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
		<!-- �ƹ��͵� ���� DIV�� �����. -->
		<!-- ���⿡ SlickGrid�� �׷�����. -->
		<div id="myGrid" style="width:600px;height:500px;"></div>
</body>
</html>