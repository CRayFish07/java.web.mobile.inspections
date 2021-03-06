<%@ page errorPage="users-error.jsp"%>
<%@ page import="java.util.*"%>
<%@ page import="ar.com.nicobrest.mobileinspections.service.DragonBallUserService"%>
<%@ page import="ar.com.nicobrest.mobileinspections.model.DragonBallUser"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:useBean id="dragonBallUser" class="ar.com.nicobrest.mobileinspections.model.DragonBallUser">
  <jsp:setProperty name="dragonBallUser" property="username" value="${param.username}" />
  <jsp:setProperty name="dragonBallUser" property="email" value="${param.email}" />
  <jsp:setProperty name="dragonBallUser" property="age" value="${param.age}" />
  <jsp:setProperty name="dragonBallUser" property="powerLevel" value="${param.powerLevel}" />
  <jsp:setProperty name="dragonBallUser" property="stamina" value="${param.stamina}" />
</jsp:useBean>

<c:set var="dragonBallUserId" scope="page" value="0" />
<c:set var="dragonBallUserId" value="${dragonBallUserService.createDragonBallUser(dragonBallUser)}"></c:set>
<c:choose>
  <c:when test="${dragonBallUserId > 0}">
    <%
      response.sendRedirect("users-list.jsp");
    %>
  </c:when>
  <c:otherwise>
    <%
      response.sendRedirect("users-error.jsp");
    %>
  </c:otherwise>
</c:choose>

<%-- <c:out value="${dragonBallUserId}"></c:out> --%>
<%-- ${dragonBallUserService.getAllDragonBallUsers()} --%>
<!-- <br/> -->
<%-- <jsp:getProperty property="username" name="dragonBallUser" /> --%>
<%-- <jsp:getProperty property="age" name="dragonBallUser" /> --%>
<%-- <%  out.println(dragonBallUser.getEmail()); %> --%>
<!-- <br/> -->
<%-- <%= request.getParameter("username") %> --%>
<%-- <%= request.getParameter("email") %> --%>
<%-- <c:out value="${param.username}"></c:out> --%>
<%-- <% out.print(dragonBallUser); %> --%>
<!-- <br/> parameters: <br/> -->
<%-- <% --%>
<!--     Enumeration<String> paramNames = request.getParameterNames(); -->

<!--     while(paramNames.hasMoreElements()) { -->
<!--        String paramName = (String)paramNames.nextElement(); -->
<!--        out.print(paramName + " : "); -->
<!--        String paramValue = request.getParameter(paramName); -->
<!--        out.println(paramValue); -->
<!--        out.println("<br/>"); -->
<!--     } -->
<%-- %> --%>
<%--   <c:out value="${dragonBallUserService.getAllDragonBallUsers()}" /> --%>
<%-- ${dragonBallUserService.getAllDragonBallUsers()} --%>