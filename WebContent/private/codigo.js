function cargarArchivo(elemento){
	var file = elemento.files[0];
	var objHidden = document.formulario.nombre;
	objHidden.value =file.name;
	//document.formulario.target="null";
	//document.formulario.submit();
	
}
function cargarA(elemento){
	var file = elemento.files[0];
	var objHidden = document.formulario1.nombre;
	objHidden.value =file.name;
	//document.formulario.target="null";
	//document.formulario.submit();
	
}