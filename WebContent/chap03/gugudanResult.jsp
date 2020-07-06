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
<%
	 int gugudan = Integer.parseInt(request.getParameter("dan")); 
	 /* int gugudan = Integer.valueOf(request.getParameter("dan")); */ 
	 
	/* String gugudan1 = request.getParameter("dan");
	int num = Integer.parseInt(gugudan1);
	for(int i=1; i<=9; i++){
		System.out.println(num+"*"+i+"="+(num*i));
	} */
	
	out.print("<h2 style='color: gold;'>"+gugudan+"단</h2>");
	for(int i=gugudan; i<=gugudan; i++){
		for(int j=1; j<=9; j++){
%>		
	<p style="color: tomato;"><%=i %> X <%= j %> = <%=i*j %></p>
<%			
		}
	}
%>


</body>
</html>