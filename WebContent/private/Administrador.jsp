<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import= " model.Administrador" %> 
<%@ page import= " Dao.MusicaDAO" %> 
<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Administrador</title>
 
    <script type="text/javascript" src="./codigo.js"></script>
    <script type="text/javascript" src="./codig.js"></script>
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
    <!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
      <div class="container">
        <a class="navbar-brand" href="Administrador.jsp">Bienvenido</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive"
         aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
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

    <!-- Page Content -->
    <div class="container" >

      <div class="row" style="margin-left: -100px;">

        <div class="col-lg-3" style="background-color: #1b344a; color: aliceblue;">

          <h1 class="my-4" style="text-align: center;"><%out.println(u.getUsuario()); %></h1>
          <div class="list-group">
            <p>en la siguiente session podemos realizar, acciones por las cuales podemos alterar la visita que puede observar el usuario</p>
          </div>
          <div class="list-group">
          <h1 class="my-4" style="text-align: center;">Consejos</h1>
 <p>1. Un buen administrador es un verdadero  motiva y estimula a su gente.</p>
<p>2. Un buen administrador es una persona auto motivada, positiva, disciplinada, comprometida y competente.</p>
<p>3. Un buen administrador se rodea de gente entrenada, comprometida con su propio crecimiento y competente para realizar su trabajo.</p>
<p>4. Un buen administrador reporta y saca de su equipo a los mediocres, cuando éstos no muestran interés en mejorar.</p>
<p>5. Un buen administrador piensa, analiza y busca oportunidades para mejorar más y más el servicio al cliente.</p>
          </div>
        </div>
        <!-- /.col-lg-3 -->

        <div class="col-lg-9">
        <br>
     <div class="contain">
  <form action="../MusicaAg" enctype="multipart/form-data" name="formulario" method="post">
    <label for="fname">Id</label>
    <input type="text" id="Nombre" name="id" placeholder="121212" required>
    <label for="lname">Imagen</label>
    <input type="file" name="img" onchange="cargarArchivo(this)" required/>
  
     <input type="hidden"  name="nombre" value="">
    <label for="lname">Audio</label>
    <input type="file" name="audio" onchange="cargarArchiv(this)" required/>

     <input type="hidden"  name="nombre1" value="">
    <label for="lname">Descripcion</label>
     <input type="text" id="telefono" name="descr" placeholder="Descripcion" required>
    <input type="submit" value="Registrar">
  </form>
</div>
<br> <jsp:useBean id="cDao" class="Dao.MusicaDAO" scope="request"></jsp:useBean>

          <div class="row">
            
             <c:forEach var="Musica" items="${cDao.list()}">
             
            <div class="col-lg-4 col-md-6 mb-4">
              <div class="card h-100" style="background-color: darkcyan;">
                <img class="card-img-top" src="<c:out value="${Musica.img}"/>" alt="">
                <div class="card-body" style="background-color: aliceblue;">
                  <h4 class="card-title">
                    <center><a>Musica</a></center>
                  </h4>
                  <h5 style="text-align: center;"><c:out value="${Musica.id}"/></h5>
                  <p class="card-text" style="text-align: center;"><c:out value="${Musica.descripcion}"/></p>
                </div>
                <div class="card-footer">
            
<form action="../Eliminar"  method="post" >
 <input type="hidden"  name="id" value="<c:out value="${Musica.id}"/>">
<center><input type="submit" class="btn btn-info btn-lg" value="Eliminar" ></center>
</form>

                </div>
              </div>
            
            </div>
            </c:forEach>
          </div>
          <!-- /.row -->
        </div>
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