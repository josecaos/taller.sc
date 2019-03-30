//CaosBox
//Es un secuenciador escrito sobre supercollider que permite hacer livecoding

// Instancia la clase
c = CaosBox;
//Inicia el secuenciador
c.enviroment;
// prueba de sonido
c.soundcheck(\pink)// args: \pink, \white,\brown
// Abre las funciones por default
c.freqAnalyzer(true);// enciende analizador de frecuencia
c.freqAnalyzer(false);// apaga analizador de frecuencia

c.play;// Echa a andar la caosbox
// c.stop;

c.bpm(192);//cambia los BPMs


/*
CaosGear es una clase hija de CaosBox
Esta es la clase encargada de los instrumentos y las melodias
- Es importante notar que los instrumentos de percucion kick, kick2, snare, snare2, hihats, hihats2
se tratan como timbres estaticos, esto quiere decir que puedes instanciar varias veces el instrumento en la misma variable y los parametros anteriores  permaneceran mientras esten en el secuenciador, esto permite que tengas el mismo  instrumento con varios parametros en el mismo canal del secuenciador
-  Es importante notar que los intrumentos bass, bass2, pad, pad2, chords, chords2
se tratan como timbres dinamicos, esto es que una vez instanciados y colocados en el secuenciador, al crear cambios en el instrumento, el timbre cambiara mientras es secuenciado
*/

k = CaosGear.new;// Instancia un CaosGear
k.kick();// Aplicale un instrumento
k.kick(64,0.01,1);// Cambia los parametros de un instrumento
k.toTrack(Array.series(16,0,2));// Agrega ese instrumento al secuenciador
k.toTrack([0,16]);

//
c.randomTime(true,true,[30,60,120,240]);// Tiempos random de caosbox entre los parametros declarados en el array
c.openDefaults;// Abre archivo de parametros default
c.toggleMetric;// Cambia metrica de cuartos a Tercios

c.fx// permite generar cambios en los parametros de los efectos
c.autoFx// permite declarar automatizacion de efectos


// ... continuara en el dia 3
