<%@page import="crud.spring.controller.ClienteController"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<nav>
     <div  class="nav-body fd-rojo">
       <div  class="contenedor">
          <a  class="nav-logo">MVC</a>
          <ul  class="lista derecha">
            <li><a  href="<%= ClienteController.RAIZ %>" >Home</a></li>
            <li><a href="<%= ClienteController.path("listado") %>">Listado</a></li>
          </ul>
        </div>
    </div>
 </nav>