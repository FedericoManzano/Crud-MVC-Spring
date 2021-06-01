<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ include file='header/header.html' %>
<%@ include file='header/nav.jsp' %>



 <div class="contenedor mar-10">
	<h5 class="mab-3 a-c"> Esto es el inicio del CRUD MVC Spring</h5>
		<table class="borde-vertical">
		<thead>
			<tr>
				<td>Nombre</td>
				<td>Apellido</td>
				<td>Correo</td>
				<td class="ancho-10">Modificar</td>
				<td class="ancho-10">Borrar</td>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="cli" items="${clientes}">
				<c:url var="buscarCliente" value="/buscar">
					<c:param name="id" value="${ cli.id }"></c:param>
				
				</c:url>
			
				<tr>
					<td>${ cli.nombre }</td>
					<td>${ cli.apellido }</td>
					<td>${ cli.correo }</td>
					<td><a class="btn-sm fd-verde" href="${ buscarCliente }">
						<span class='bs-refresh-2'></span>
					</a></td>
					<td><a class="btn-sm fd-rojo" href="${ buscarCliente }">
						<span class='bs-cancel'></span>
					</a></td>
				</tr>
				
			</c:forEach>
			</tbody>
		</table>
		
            <a  class="btn-sm fd-azul-ve mar-3 ancho-10" href="<%= ClienteController.path("formulario") %>">
                <span class='bs-add-2'></span>
               
            </a>
	</div>
	
	<p class="c-rojo">${ mjeError }</p>

<%@ include file='footer/footer.html' %>