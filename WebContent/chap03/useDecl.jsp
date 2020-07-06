<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%! /* 메서드 작성(선언부는 !) 위치와 갯수는 상관없음 */
	public int multiply(int a, int b){
		int c = a * b;
		return c;
}
%>
<%! 
	public double multiply(double a, double b){
		double c = a * b;
		return c;
}
%>      
<!DOCTYPE html>
<html>
<%!
int myfield =0;
%>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
10 * 25 = <%= multiply(10, 25) %>
<br />
<%= myfield++ %>
</body>
</html>