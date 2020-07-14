<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

<title>Insert title here</title>
</head>
<body>
<%--
el의 pageScope: page영역의 attribute를 <key, value>로 저장한 Map

Map 사용법
${map.key}
${map["key"]}
--%>
<%
	pageContext.setAttribute("key1", "value1");
	pageContext.setAttribute("key2", "value2");
	pageContext.setAttribute("key-3", "value3");
	pageContext.setAttribute("4", "value4");
	pageContext.setAttribute("5key", "value5");
%>
<h1>${pageScope.key1 }, ${pageScope["key1"] }</h1>
<h1>${pageScope.key2 }, ${pageScope["key2"] }</h1>
<h1>${pageScope.key-3 }</h1><!-- 앞에 있는걸 0으로 처리 하고 -3으로 인지 -->
<h1>${pageScope["key-3"] }</h1>
<%-- <h1>${pageScope.4 }</h1> 변수 규칙과 동일--%> 
<h1>${pageScope["4"] }</h1>
<%-- <h1>${pageScope.5key }</h1> --%>
<h1>${pageScope["5key"] }</h1>

<h1>
	${cooke.JSESSIONID }, ${cookie["JSESSIONID"] }
</h1>
</body>
</html>






