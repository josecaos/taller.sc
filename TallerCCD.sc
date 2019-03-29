//Cramos una clase simple
// los archivos para extensiones del lenguaje (Clases) deben tener la extension '.sc'
// y deben estar en la carpeta de extensiones de SuperCollider
// los metodos de clase llevan un prefijo '*' los metodos de instancia no lo llevan
TallerCCD { // Nombra tu clase

	var x = 0;// Variable de instancia esta afecta solo al objeto instanciado
	classvar z = 0;// Variable de clase, esta afecta a  todas las clases

	// Declara un nuevo metodo para la clase
	*new {

		super.new;// este paso es importante para que la clase pueda ser instanciada

		^"666"; //usa el simbolo '^' como 'return', esto aplica para todos los metodos
	}

	*asistencia {|nombre, toco = false|

		var asistentes = ["Emilio", "Yotzin", "Janete"];
		var asistente;
		asistente = asistentes.find([nombre]);

		if(asistente.isNil , {
			(nombre + " N0 Asistio al curso").postcln;
			}, {
				(nombre + " Si Asistio al curso").postcln;
		});

		^asistente ;
	}

}