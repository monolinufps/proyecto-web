<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ page import= " model.Administrador" %> 
     <%@ page import= " Dao.ContactoDAO" %> 
     <%@ page import= " model.Contacto" %> 
<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Administrador</title>
          <link rel="shortcut icon" href="../assets/img/slider/simb.png" type="image/x-icon">
   
    <!-- Bootstrap core CSS --> <!-- Bootstrap core CSS -->
    <link href="../assets/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="../assets/css/shop-homepage.css" rel="stylesheet">
    <link href="../assets/css/theme-color/contactenos.css" rel="stylesheet">   
    <link rel="stylesheet" type="text/css" href="../assets/css/slick.css">          
    <link id="switcher" href="../assets/css/theme-color/default-theme.css" rel="stylesheet">          
    <link href="../assets/css/style.css" rel="stylesheet">   
    <link href="../assets/css/shop-homepage.css" rel="stylesheet">
  </head>

  <body>
<% //In case, if Admin session is not set, redirect to Login page
Administrador u = (Administrador)request.getSession(false).getAttribute("Administrador");
    		
if((u == null) )
{
	 out.print("<script>location.replace('Inicio.jsp');</script>");
	 }else{
		 
		 
	 
%>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
      <div class="container">
        <a class="navbar-brand" href="Administrador.jsp">Bienvenido</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
             <li class="nav-item">
 <a class="navbar-brand" href="AdministradorEmple.jsp">Contactos</a>            </li>
            <li class="nav-item">
             <a class="navbar-brand" href="../CerrarAd">Cerrar</a>
       
            </li>
          </ul>
        </div>
      </div>
    </nav>
    <br><center>
<h1>listado de todos los mensajes que llegan al adminitrador</h1></center>
    <!-- Page Content -->
    <div class="container">

      <div class="row">
        <!-- /.col-lg-3 -->
<table class="table">
    <thead>
      <tr>
        <th>Tipo</th>
        <th>id</th>
        <th>nombre</th>
        <th>correo</th>
        <th>descripcion</th>
        <th>celular</th>
      </tr>
    </thead>
    <jsp:useBean id="cDao" class="Dao.ContactoDAO" scope="request"></jsp:useBean>
     <c:forEach var="Contacto" items="${cDao.list()}">
    <tbody>
      <tr>
        <td><c:out value="${Contacto.tipoQueja.id}"/></td>
        <td><c:out value="${Contacto.id}"/></td>
        <td><c:out value="${Contacto.nombre}"/></td>
        <td><c:out value="${Contacto.correo}"/></td>
        <td><c:out value="${Contacto.descr}"/></td>
        <td><c:out value="${Contacto.telefono}"/></td>
      </tr>
    </c:forEach>
   
    </tbody>
  </table>
        <!-- /.col-lg-9 -->

      </div>
      <!-- /.row -->

    </div>
    <!-- /.container -->

  

    <!-- Bootstrap core JavaScript -->
    <script src="../assets/js/jquery.min.js"></script>
    <script src="../js/bootstrap.bundle.min.js"></script>

  </body>

</html>
<% }%>