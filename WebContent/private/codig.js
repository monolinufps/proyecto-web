function cargarArchiv(elemento){
	var file = elemento.files[0];
	var objHidden = document.formulario.nombre1;
	objHidden.value =file.name;
	//document.formulario.target="null";
	//document.formulario.submit();
	
}
function cargarAr(elemento){
	var file = elemento.files[0];
	var objHidden = document.formulario1.nombre3;
	objHidden.value =file.name;
	//document.formulario.target="null";
	//document.formulario.submit();
	
}