
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<script>
function inicializa() {
<%
if (true) {
out.write("alert(\"Condición verdadera\");");
}
%>

<body onload="inicializa()">
</body>
.
.

}
</script> 
<% //In case, if Admin session is not set, redirect to Login page
session = request.getSession();
System.err.println(session.getAttribute("Usuario"));
session.removeAttribute("Usuario");

session.invalidate();
response.sendRedirect("Inicio.jsp");
%>
 