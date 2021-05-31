<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ include file='header/header.html' %>
<%@ include file='header/nav.jsp' %>



 <div class="contenedor mar-3">
	<h4> Esto es el inicio del CRUD MVC Spring</h4>
		<table>
			<tr>
				<td>Nombre</td>
				<td>Apellido</td>
				<td>Correo</td>
			</tr>
			<c:forEach var="cli" items="${clientes}">
				<tr>
					<td>${ cli.nombre }</td>
					<td>${ cli.apellido }</td>
					<td>${ cli.correo }</td>
				</tr>
			</c:forEach>
		</table>
	</div>

<%@ include file='footer/footer.html' %>