
<%@page import="crud.spring.controller.ClienteController"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "form" uri = "http://www.springframework.org/tags/form" %>
<%@ include file='header/header.html' %>
<%@ include file='header/nav.jsp' %>


<div class="contenedor mar-6">
	
	<h5 class="mab-2 a-c">Formulario registro</h5>
	<form:form action="insertar" modelAttribute="cliente" method="POST" class="mab-4">
		<form:hidden path="id"/>
		<div  class="form-grupo">
    		<label  for="correo">Nombre</label>
        	<form:input  path="nombre" />
    	</div>
    	<div  class="form-grupo">
        	<label  for="apellido">Apellido</label>
        	<form:input path="apellido"/>
    	</div>
    	<div  class="form-grupo">
        	<label  for="correo">Correo</label>
        	<form:input  path="correo" />
    	</div>
    	
    	<div class=" mar-2">
    		<input type="submit" value="Insertar" class="btn fd-rojo">
    	</div>
    	
    	
	</form:form>
	<a class="link mar-10" href="<%= ClienteController.path("listado") %>">Volver al listado</a>
</div>

<%@ include file='footer/footer.html' %>