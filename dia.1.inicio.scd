//Instala supercollider en tu SO favorito
// https://supercollider.github.io/download
// Descarga librerias (rama: master):
// caosperclib: https://github.com/josecaos/caosperclib
// caosbox: https://github.com/josecaos/caosbox
// Instalalas en:
Platform.userExtensionDir;// obtienes directorio de extenciones para tu SO
/*
SC es un lenguaje de programacion y un software que consta de 3  partes
1- sclang -> interpreta el codigo y lo envia al servidor
2- scsynth -> recibe el mensaje del interprete y responde en el 'post window'
3- scide -> IDE oficial desarrollado por la comunidad de SC, es opcional, existen  implenmentaciones para otros
IDEs como Atom, vim, Emacs, Gedit
*/
// Enciende el servidor para que produzca sonido, el servidor puede escuchar por opciones y palgunas clases de configuracion, aun apagado ej. el stream de un Tdef, no necesita de el servidor encendido,
// 's' es ahora una variable global de SC
// s = Server.local; // antes se escribia esto
s.boot;//ahora directo // Instancia la clase 'Server' a la variable 's'
s.scope;// Osciloscopio
//
// Funciones -> se escriben entre llaves '{...}'
{"hola"}.value;// Devuelve el valor de la funcion
{"String"}.play;// El metodo '.play' es la manera semantica musical de llamar el valor de una funcion
s.scope;// Osciloscopio: Visualiza la Amplitud, forma de onda y longitud de onda
{SinOsc.ar()!2}.play;// Regresa una onda sinusoidal, suenan los valores default de la clase 'SinOsc'
{SinOsc.ar(42)!2}.play;// Regresa una onda sinusoidal con parametro frecuencia en 42, suenan 42Hz de una onda sin armonicos
{CaosKick.ar(0.01,0.25,gate:1)}.play;// Utiliza la caosperclib dentro de una funcion
{CaosKick.ar(0.01,0.25,0.5,0.5,42,40,50,1,)}.play;// cambia sus parametros
{CaosChords.ar('5aug7',0.01,4,48,gate:1)}.play;//Utiliza otra clase de la libreria

/*
Como podemos usar las clases de manera dinamica, cambiando sus parametros automaticamente?
Una de varias formas es con un:'Tdef'
*/

/*
Tdef - Es una superclase encargada de generar tareas pormedio de flujos a traves del tiempo, con el metodo 'loop' o '.do'
Sus argumentos son (\nombre_key,funcion a ejecutar)

{..}.loop; es lo mismo que inf.do({..})
*/

(//encapsula el codigo entre parentesis, para evaluar el bloque o capsula
Tdef(\test,{
	var notas = Pxrand(Scale.hindu.degrees+36,inf).asStream;// genera un stream iterando dentro de un array
	var release = Pxrand([0.1,0.25,0.5,0.75,1],inf).asStream;// genera un stream iterando dentro de un array
	var i = 0;//iterante
	//Distribuye las variables donde las necesites
	{//inicia loop
		("CCD" + i).postcln;// Itera escribiendo "CCD" sumando el numero a la derecha
		i = i+1;//suma 1 a la variable i, cada vez que pases por aqui
		{CaosChords.ar('5dim7',0.01,release.resume,notas.next,60,gate:1)}.play;//funcion a tocar, cada que pase por aqui
		0.25.wait;//espera 1/4 de segundo para repetir el loop
	}.loop;//fin de loop
}).quant_(4);//quantiza la espera basada en el clock interno, para efectuar cambios al Tdef
);
Tdef(\test).play;//inicia Tdef
Tdef(\test).stop;//para Tdef