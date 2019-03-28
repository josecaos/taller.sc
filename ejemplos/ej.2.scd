// Frecuencia de muestreo
//Leer 'Teorema de Nyquist' ->  Un sonido es fiel a la realidad a partir de tomar 44100 muestras por segundo
// Representa la cantidad de muestras por segundo que se toman de una senal digital de audio, cada muestra dispone una cantidad distinta de amplitud y apartir de esa informacion se puede formar una representacion digital de una onda sonora a travez del tiempo
/*
Clases:
- Son tambien llamados objetos, estos son una coleccion de funciones llamadas metodos, que generan, agregan o definen propiedades de su clase
Metodos:
- Son funciones o subrutinas que pertenecen y son declaradas dentro de una Clase. estas se declaran despues de un punto y se escriben con estilo 'camelCase' siendo la primer letra de la primer palabra, minuscula
*/
.ar -> 44100 hz
.kr -> 7777 hz

/*
Envolvente acustica:
- Es el envoltorio del sonido, este define su comportamiento de amplitudes a travez del tiempo, por medio de 4 nodos:
- - Attack -> tiempo de 0db al maximo de amplitud
- - Decay -> decaimiento inmediato despues del ataque, suele ser un porcentaje de su amplitud
- - Sustain -> tiempo que resuena sostenidamente un sonido
- - Release -> tiempo de su amplitud actual a 0db
*/

//keys
\hola
'hola'

// Arrays
[0,3,7,11,12].choose
(0..12).choose
{EnvGen.kr(Env.perc(0.1,10))}.plot;

(Attack, Release)

// Notas MIDI
0 .. 127
0 -> C0
60 -> C4


// Escalas
Scale.directory;
Scale.hindu.degrees;

// Class
CaosBox.class
CaosBox.superclass;
CaosGear.superclass;

// String
"texto"
