<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ attribute name="count" %>

<!-- required="true"면 꼭 넣어줘야함 -->
<%@ attribute name="name" required="true" %>

<!-- String이 기본값 -->
<%@ attribute name="address" type="java.lang.String" %>

<%@ attribute name="member" type="chap11.Member" %>

<h3>tag 5</h3>
<h4>count: ${count }</h4>
<h4>name: ${name }</h4>
<h4>member: ${member.name }</h4>