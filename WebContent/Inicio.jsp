<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=ISO-8859-1" /> 
<title>Musica</title>

    <link rel="shortcut icon" href="assets/img/slider/simb.png" type="image/x-icon">
    <link href="assets/css/font-awesome.css" rel="stylesheet">
    <link href="assets/css/bootstrap.css" rel="stylesheet">   
    <link href="assets/css/theme-color/contactenos.css" rel="stylesheet">   
    <link rel="stylesheet" type="text/css" href="assets/css/slick.css">          
    <link id="switcher" href="assets/css/theme-color/default-theme.css" rel="stylesheet">          
    <link href="assets/css/style.css" rel="stylesheet">    
</head>
<body>
<nav id="mainNav" class="navbar navbar-default navbar-fixed-top navbar-custom">
        <div class="container">
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span> Menu <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand" href="#inicio">Inicio</a>
            </div>
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li class="hidden">
                        <a href="#page-top"></a>
                    </li>
                    <li class="page-scroll">
                <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#registro">Registro</a>
                    </li>
                </ul>
            </div>

        </div>
    </nav>
   <div id="inicio" style="display:inline;">
<section id="mu-slider">
    <div class="mu-slider-single">
      <div class="mu-slider-img">
        <figure>
          <img src="assets/img/slider/musica4.jpg" alt="img">
        </figure>
      </div>
      
    </div>
    <div class="mu-slider-single">
      <div class="mu-slider-img">
        <figure>
          <img src="assets/img/slider/musica2.jpg" alt="img">
        </figure>
      </div>
    </div>
    <div class="mu-slider-single">
      <div class="mu-slider-img">
        <figure>
          <img src="assets/img/slider/musica3.jpg" alt="img">
        </figure>
      </div>
    </div>
  </section>
<section id="mu-service">
    <div class="container">
      <div class="row">
        <div class="col-lg-12 col-md-12">
          <div class="mu-service-area">
            <!-- Start single service -->
            <div class="mu-service-single" >
              <span class="fa fa-book"></span>
              <h3>Nosotros</h3>
              <p>Si quiere saber mas sobre nosotros ingrese al siguiente boton</p>
              <br />
                <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#conoce">Informacion</a>
            </div>
        
            <div class="mu-service-single" >
              <span class="fa fa-users"></span>
              <h3>Ingreso</h3>
              <p>Iniciar como usuario para asegurar uno de nuestros planes</p>
             <br />
                <button type="button" class="btn btn-info btn-lg"  data-toggle="modal" data-target="#login">Ingreso</a>
              
                
            </div>
         
            <div class="mu-service-single" >
              <span class="fa fa-table"></span>
              <h3>Contactenos</h3>
              <p>Escribenos para solicitar informacion mas detallas de los planes</p>
              <br />
               <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#contactenos">Contactos</a>
               
            </div>
         
          </div>
        </div>
      </div>
    </div>
  </section> 
  </div>
</div>

  <!----modales ventanas--->
  <div class="modal fade" id="conoce" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" style="color:red;">&times;</button>
          <h4 class="modal-title"><center>Conocenos</center></h4>
        </div>
        <div class="modal-body">
          <p>A veces, en Esgalla celebramos dias de creatividad. Esto significa que os traemos 
          variedad de artistas  que hacen cosas creativas e increibles que vale 
          la pena que se conozcan. A lo largo de las decadas se va
           incluyendo a algunos de los mejores representantes de cada tecnica. Hoy, toca
           hablar sobre musica, y para ello os traemos una 
          particular seleccion de  musica que no os dejara indiferente.</p>
        </div>
      </div>
      
    </div>
  </div>
  <!----modales ventanas--->
  <div class="modal fade" id="contactenos" style="margin-top:-20px" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
      <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" style="color:red;">&times;</button>
          <h4 class="modal-title"><center>Formulario</center></h4>

  <div class="contain" >
  <form action="Mensaje" method="post">
    <label for="fname">Nombre</label>
    <input type="text" id="nombre" name="nombre" placeholder="Nombre completo">
    <label for="lname">Correo</label>
    
    <input type="email" id="correo" name="correo" placeholder="correo">
    <label for="lname">Telefono</label>
    
    <input type="text" id="telefono" name="telefono" placeholder="Telefono">

    <label for="subject">Descripcion</label>
    <textarea id="subject" name="subject" placeholder="Descripba peticion.." style="height:200px"></textarea>
     <button type="submit" class="btn btn-info btn-lg">Enviar</button>
  </form>
</div>
    </div></div>
  </div></div>
  
  <!----modales ventanas--->
  <div class="modal fade" id="registro" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
      <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" style="color:red;">&times;</button>
          <h4 class="modal-title"><center>Registro</center></h4>

  <div class="contain">
  <form action="Registro" method="post">
    <label for="fname">Nombre</label>
    <input type="text" id="Nombre" name="nombre" placeholder="Nombre completo">
    <label for="fname">Usuario</label>
    <input type="text" id="Nombre" name="usuario" placeholder="Nombre usuario">
    <label for="lname">edad</label>
    <input type="text" id="Nombre" name="edad" placeholder="18">
     <label for="lname">fecha</label>
    <input type="date" id="correo" name="fecha" placeholder="01/01/2000">
    <label for="lname">Correo</label>
    <input type="email" id="correo" name="correo" placeholder="correo">
    <label for="lname">Genero</label>
    <select name="genero">
  <option value="M">M</option>
  <option value="F">F</option>
</select> 
    <label for="lname">Telefono</label>
    <input type="text" id="telefono" name="telefono" placeholder="Telefono">
    <label for="lname">Clave</label>
    <input type="password" id="telefono" name="clave" placeholder="password">
    <input type="submit" value="Registrar">
  </form>
</div>
    </div></div>
  </div></div>
    <!----modales ventanas--->
  <div class="modal fade" id="login" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
      <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" style="color:red;">&times;</button>
          <h4 class="modal-title"><center>Ingreso</center></h4>

  <div class="contain">
  <form action="Login" method="post">
    <label for="fname">Usuario</label>
    <input type="text" id="Nombre" name="usuario" placeholder="usuario">
    <label for="lname">Clave</label>
    <input type="password" id="correo" name="clave" placeholder="correo">
    <input type="submit" name="ingresar" value="Ingresar">
  </form>
</div>
    </div></div>
  </div></div>
  <%
  if(request.getAttribute("error")!=null){
	  %>${error}<%
  }
  %>
  <!----notici-->
  <p>
  
    <!----relleno---->
   
    <!---- colegio---->
  <script src="assets/js/jquery.min.js"></script>  

  <script src="assets/js/bootstrap.js"></script>   

  <script type="text/javascript" src="assets/js/slick.js"></script>
 <script src="assets/js/custom.js"></script> 
   

    <!-- Bootstrap Core JavaScript
     -moz-border-radius: 0 300px 300px 0;
     -webkit-border-radius: 0 300px 300px 0;
     border-radius: 0  300px 300px 0;
     -->
    

    <!-- Plugin JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>

    <!-- Contact Form JavaScript -->
    <script src="js/jqBootstrapValidation.js"></script>
    <script src="js/contact_me.js"></script>

    <!-- Theme JavaScript -->
    <script src="js/freelancer.min.js"></script>

  

  <!--  
  
  
  
  <script type="text/javascript" src="assets/js/waypoints.js"></script>
  <script type="text/javascript" src="assets/js/jquery.counterup.js"></script>  
  -->
  
  
</body>
</html>
