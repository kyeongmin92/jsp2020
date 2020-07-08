<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.net.*" %>    
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	boolean login = false;
	
	if(id != null && id.equals("seoul")){
		if(pw != null && pw.equals("jeju")){
			login = true; 
		}
	}
	
	/* if(login){
		response.sendRedirect("home.jsp");		
	} else {
		response.sendRedirect("login.jsp");
	} */
		
	if(login){
		/* 영어로 입력할때는 response.sendRedirect("home.jsp"?id="java");만 사용해도 됨*/
		String qname = URLEncoder.encode("자바", "utf-8");
		response.sendRedirect("home.jsp?id=" +qname);		
	} else {
		response.sendRedirect("login.jsp");
	}
%>
