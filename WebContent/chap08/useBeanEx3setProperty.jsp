<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="member" class="chap08.MemberInfo"></jsp:useBean>

<jsp:setProperty name="member" property="name" value="john" />
<jsp:setProperty name="member" property="id" value="99" />
<%-- 위와 같음 
<%
	member.setName("john");
%> 
<%
	member.setId("99");
%>
--%>
    
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
<%= member.getName() %>, <%= member.getId() %>
<%-- <%
	chap08.MemberInfo mem = (chap08.MemberInfo)pageContext.getAttribute("member");
%> --%>
</body>
</html>