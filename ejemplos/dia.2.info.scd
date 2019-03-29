// Operadores logicos o Signos de Comparacion
== // es igual a ...
!= // No es igual a ...
< // Mayor que ...
> // Menor que ...
<= // Menor o igual a ...
>= // Mayor o igual a ...
// ej.
var x = 1;
x === 0 // falso

/*
Variables
Son un espacio en memoria el cual sirve para sostener cualquier tipo de informacion a la cual esta sea igualada
SuperCollider es un lenguaje de programacion "No tipado" esto quiere decir que al declarar una variable no
es necesario senalar que tipo de informacion sera guardada, como sucede en lenguajes como 'C'
- Variables locales -> se escriben con el prefijo 'var' y se llaman locales por que se declaran dentro de una funcion y esta solo tendra valor sobre la misma funcion
- Variables Globales -> existen de dos formas:
 -1- estas se pueden declarar en cualquier parte (normalmente duera de funciones) y se escriben con una tilde antes de la palabra, ej. ~soyvariable
-2- tambien se puede usar un caracter fuera de una funcion sin usar el prefijo 'var' en este caso no pueden ser usadas palabras
ej.
*/
x = 0; //variable global
~x = 0; //variable global
{var x = 0; x.value}.value;//variable local

// Estructuras de control
//If
if(evaluacion, {funcion verdadera}, {funcion falsa});
// Switch
(
switch(variable
	1er comparacion,{ejecuta la funcion, si se cumple la 1er comparacion},
	2da comparacion,{ejecuta la funcion, si se cumple la 2da comparacion},
	3er comparacion,{ejecuta la funcion, si se cumple la 3er comparacion},
	{funcion por default, se ejecuta si todas las comparaciones anteriores fallan}// es siempre la ultima
);
);
// ej.
(// ejecuta esta capsula de codigo
var x = 0;
var y = 1;

if(x == 0, {
	"Si, 'X' es igual a 0".postcln;
},{
	"No, 'X' no es igual a 0".postcln;
});

switch(y,
	0, {"'Y' es igual a 0".postcln},
	1, {"'Y' es igual a 1".postcln},
	2, {"'Y' es igual a 2".postcln},
	{"'Y' no es '1, 2 o 3'".postcln}//funcion default
);//fin switch
)


// Buscar metodos y variables de una clase
Object.browse;
SinOsc.browse;
CaosGear.browse;
CaosGear.superclass;
// Esta clase simple fue hecha en el curso
TallerCCD.browse; //
TallerCCD.new;
TallerCCD.asistencia("Emilio");
TallerCCD.asistencia("Janete");
TallerCCD.asistencia("Carlos");
TallerCCD.asistencia("Yotzin");
//

// Busca dentro de un Array
a = ["Emilio", "Yotzin", "Janete"]; // instancia el array
a.find(["Emilio"]); // Si lo encuentra regresa el indice del elemento -> 0
a.find(["Yotzin"]);// 1
//
