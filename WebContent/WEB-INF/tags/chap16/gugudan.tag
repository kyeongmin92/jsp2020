<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ attribute name="dan" %>

<c:forEach var="i" begin="1" end="9">
${dan } x ${i } = ${dan * i }
<br />

</c:forEach>