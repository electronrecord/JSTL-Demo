<%--
  Created by IntelliJ IDEA.
  User: pro15
  Date: 30/08/2019
  Time: 16:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body style="text-align: center">

        <h1>My name is: ${name}</h1>

        <h2><c:out value="${name}" /></h2>

<%--        <c:import url="http://www.google.com"></c:import>--%>

        <h2>Student: <c:out value="${student.name}" /></h2>

        <ul>
            <c:forEach items="${students}" var="item">
                <li>
                    <span>ID: ${item.rollno} /</span>
                    <span>Name: ${item.name}</span>
                </li>
            </c:forEach>
        </ul>

        <c:set var="string" value="This is a demo string" />

        <h2>Length of "${string}" is: ${fn:length(string)}</h2>

        <c:forEach items="${fn:split(string, ' ')}" var="item">
            <span>${item}</span>
            <br>
        </c:forEach>

        <h3>Index of demo is: ${fn:indexOf(string, "demo")}</h3>

        <h3>Is the word "This" contained in the string? ${fn:contains(string, "This")}</h3>

        <c:if test='${fn:contains(string, "This")}'>
            <h2>The word "This" is contained in the string.</h2>
        </c:if>

        <h2>JSTL choose syntax:</h2>
        <c:choose>
            <c:when test='${fn:contains(string, "This")}'>
                The word "This" is contained in the string.
            </c:when>
            <c:when test='${fn:contains(string, "JAVA")}'>
                The word "JAVA" is contained in the string.
            </c:when>
            <c:otherwise>
                ...
            </c:otherwise>
        </c:choose>

  </body>
</html>
