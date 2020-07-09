<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
상단 메뉴: <a href="layout.jsp"><i class="fas fa-home"></i>홈</a>
<a href="layout2.jsp"><i class="fas fa-book"></i>정보</a>
<%= request.getParameter("parent") %>
<%= request.getParameter("name") %>