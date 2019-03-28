// Frecuencia de muestreo
//Leer 'Teorema de Nyquist' ->  Un sonido es fiel a la realidad a partir de tomar 44100 muestras por segundo
// Representa la cantidad de muestras por segundo que se toman de una senal digital de audio, cada muestra dispone una cantidad distinta de amplitud y apartir de esa informacion se puede formar una representacion digital de una onda sonora a travez del tiempo
/*
Clases:
- Son tambien llamados objetos, estos son una coleccion de funciones llamadas metodos, que generan, agregan o definen propiedades de su clase
- Herencia: Todas las clases heredan los metodos de 'Object'
- Polimorfismo: Un mismo mensaje puede afectar a dos o mas objetos, ej. Crear tu propio metodo y llamarlo como el de 'Object', esto puede ser util en algunas ocaciones
*/
CaosBox.class// El mismo
CaosBox.superclass;// Hereda de 'Object'
CaosGear.superclass;// Hereda de 'CaosBox'
/*
Metodos:
- Son funciones o subrutinas que pertenecen y son declaradas dentro de una Clase. estas se declaran despues de un punto y se escriben con estilo 'camelCase' siendo la primer letra de la primer palabra, minuscula
ej:
*/
Object.ar //Reproduce a -> 44100 hz
Object.kr -> // Reproduce el objeto a 1 muestra por cada 64 muestras de la muestra de sampleo que se este utilizando

/*
Envolvente acustica:
- Es el envoltorio del sonido, este define su comportamiento de amplitudes a travez del tiempo, por medio de 4 nodos:
- - Attack -> tiempo de 0db al maximo de amplitud
- - Decay -> decaimiento inmediato despues del ataque, suele ser un porcentaje de su amplitud
- - Sustain -> tiempo que resuena sostenidamente un sonido
- - Release -> tiempo de su amplitud actual a 0db
*/
{EnvGen.kr(Env.perc(0.01,1),1,doneAction:2)}.plot;//Envolvente con Ataque: 0.01 seg. - release: 1 seg.

//keys -> son llaves que sirve como identificadores ej. El nombre de un 'Synthdef'
\hola // se pueden escribir de esta manera
'hola' // o esta otra

// Arrays -> Grupo de elementos, puede ser cualquier tipo de dato, estos se pueden declarar de varias maneras
// El indice de sus elementos siempre se cuenta desde cero
Array.series(5,0,1);//Con Clase + metodo
[0,1,2,3,4]// de manera literal -> entre corchetes '[]'
(0..4)// o de manera corta
// existen otras maneras de generar arrays

// Notas MIDI - Los valores MIDI van del 0 al 127
0 .. 127
0 -> C0 // Cero es el DO mas grave de la tesitura
60 -> C4// 60 equivale a un DO 4 o DO central
57 -> A3// 57 es LA 3
//El movimiento de un numero a otro equivale a un medio tono musical,
// Es decir si tenemos un array: [60,64,67,71] viso en intervalos seria [\do,\mi,\sol,\do] acorde de Do mayor

// Escalas
Scale.directory;// regresa directorio de escalas
Scale.hindu.degrees;//define una escala hindu y regresa los intervalos
// ej:
[ 0, 2, 4, 5, 7, 8, 10 ] //escala hindu en DO indice 0 -> octava mas grave
[ 0, 2, 4, 5, 7, 8, 10 ]+60 //escala hindu desde DO central
// suma 60 a cada elemento de la escala
[ 0, 2, 4, 5, 7, 8, 10,12 ]+ 48 // es igual a [48,50,52,53,55,56,58,60] es igual a [\do,\re,\mi,\fa,\sol,\la_bemol,\do_siguiente octava]

// String  = Texto dentro del codigo, siempre se escribe entre comillas dobles
"Soy Texto"
"Texto".postln;// imprime el string en el 'Post Window'
"Texto".postcln;// imprime el string en el 'Post Window', comentado
