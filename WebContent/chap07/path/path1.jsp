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
<%=request.getContextPath() %> <!-- 프로젝트 경로 -->
<h1>path1 jsp</h1>
<a href="path2.jsp">path2</a> <br />
<a href="sub/sub2.jsp">sub2</a> <br />
<a href="/chap07/path/path2.jsp">path2 absolute</a> <br />
<a href="<%=request.getContextPath() %>/chap07/path/path2.jsp">path2 absolute</a> <br />
<a href="<%= request.getContextPath()%>/WEB-INF/webinf1.jsp)">webinf</a>
<hr />

<!-- 현재페이지 기준 (상대경로) -->
<jsp:include page="path2.jsp"></jsp:include>
<jsp:include page="sub/sub1.jsp"></jsp:include>
<!-- 절대경로(/) WebContet부터 시작-->
<jsp:include page="/chap07/path/path2.jsp"></jsp:include>

<jsp:include page="/WEB-INF/webinf1.jsp"></jsp:include>


</body>
</html>