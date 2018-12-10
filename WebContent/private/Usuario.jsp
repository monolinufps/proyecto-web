<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
    
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import= " model.Usuario" %> 
<%@ page import= " Dao.MusicaDAO" %> 
<%@ page import= " model.Musica" %> 
<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Usuario</title>
       <link rel="shortcut icon" href="../assets/img/slider/simb.png" type="image/x-icon">
   
    <!-- Bootstrap core CSS -->
    <link href="../assets/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="../assets/css/shop-homepage.css" rel="stylesheet">

  </head>

  <body>
<% //In case, if Admin session is not set, redirect to Login page
Usuario u = (Usuario)request.getSession(false).getAttribute("Usuario");
    		
if((u == null) )
{
	 out.print("<script>location.replace('Inicio.jsp');</script>");
	 }else{
		 
		 
	 
%>
    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
      <div class="container">
        <a class="navbar-brand" href="Usuario.jsp">Bienvenido</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item">
        <a class="navbar-brand" href="../Cerrar">Cerrar</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
<!-- Page Content -->
    <div class="container">

         <div class="row" style="margin-left: -100px;">

        <div class="col-lg-3" style="background-color: #1b344a; color: aliceblue;">

          <h1 class="my-4" style="text-align: center;"><%  out.println(u.getUsuario()); %></h1>
          <div class="list-group">
            <p>Señor  usuario siente libre de escuchar la musica que se le
            suministra en el portal  web, agradecemos cualquier sugerencia o
            reclamo que desee realizar</p>
          </div>
<h1 class="my-4" style="text-align: center;">Como ser  buen usuario</h1>
          <div class="list-group">
            <p>PrudenciaPiense antes de publicar. Las redes son especios calientes
             donde es mejor tener la cabeza fría. Recuerde que todo lo que publique puede 
             ser usado en su contra.InfórmeseNada más valioso en una red social que encontrar contenido original,
              de calidad y verídico. Incluso si su fuerte es el humor, la sátira o la ficción, preocúpese por entregar
               información novedosa e interesante, pues será muy bien valorada por sus seguidores. Los mejores bloggueros, ‘
               Tuitstars’ y generadores de opinión nativos de la red han 
            logrado el reconocimiento por estar bien informados sobre los temas que tratan.</p>
          </div>
        </div>
        <!-- /.col-lg-3 -->

        <div class="col-lg-9">
<br>
<center><h1>Lista de Reproduccion</h1><center>
     
          <!-- lista -->
         <jsp:useBean id="cDao" class="Dao.MusicaDAO" scope="request"></jsp:useBean>

          <div class="row">
            
           <c:forEach var="musica" items="${cDao.list()}">
             
            <div class="col-lg-4 col-md-6 mb-4">
              <div class="card h-100" style="background-color: darkcyan;">
                <img class="card-img-top" src="<c:out value="${musica.img}"/>" alt="">
                <div class="card-body" style="background-color: aliceblue;">
                  <h4 class="card-title">
                    <a>Musica</a>
                  </h4>
                  <h5><c:out value="${musica.id}"/></h5>
                  <p class="card-text"><c:out value="${musica.descripcion}"/></p>
                </div>
                <div class="card-footer">
                
 <audio controls="" style="width: 100%;">
  <source src="<c:out value="${musica.audio}"/>" type="audio/mpeg">
  Your browser does not support the audio element.
  
</audio>
         </div>
            </div>
          </div>
          
                      </c:forEach>
                          
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
