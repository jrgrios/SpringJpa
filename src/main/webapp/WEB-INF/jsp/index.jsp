<%@page import="es.salesianos.model.Console"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ page import="java.io.*,java.util.*,es.salesianos.model.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>

<a href="/">Insertar y listar consolas</a><br/>
<a href="/console">Ver Tablas Base de datos la jdbc url es jdbc:h2:mem:testdb el usuario sa y la password vacia</a><br/>
<br/><br/><br/><br/><br/><br/><br/><br/>



    <form action="/insertconsole" method="get" >
        <span>Nombre:</span>
        <input  type="text" name="name"/>
        <input type="submit"/>
    </form>

<form action="/listconsole" method="get">
    <input type="submit" value="ver listado">
</form>

<table border="1">
    <thead>
        <tr>
            <td>Name</td>
        </tr>
    </thead>
    <tbody>
        <c:forEach var="console" items="${consoles}">
            <tr>
                <td><c:out value="${console.name}"/> </td>
            </tr>
        </c:forEach>
    </tbody>
</table>


</body>
</html>