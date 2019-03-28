/*
JitLib: Llamada 'Just in time Library' Es una libreria integrada en SC, que genera un ambiente de control inmediato de los nodos generados en el servidor
Creada por: Julian Rohruhber y Alberto de Campo
En su momento, esta libreria expandio las posibilidades de SC, una de muchas ventajas es que responde en tiempo real a los cambios de un objeto mientras existe flujo de tiempo, esto es, puedes declarar un objeto, cambiar un paramentro  reevaluar y este cambiara sin presentar conflictos por 'orden de ejecicion'
Es la libreria y el ambiente mas agil y  mas utilizado para hacer 'live coding' con SC
Este ambiente es declarado con la superclase 'ProxySpace' y una caracteristica Importante es que todos los objetos declarados deben ser variable globales, ej.  '~out' (Siempre comienzan con tilde '~')

*/

p = ProxySpace.push(s.boot);// declara y enciende el servidor

~out.play;// declara un nodo que esta tocando(aun que aun no tiene un valor)

~t = 0.25;//

~x = {LFPulse.ar(60,0,0.1,0.1)*EnvGen.kr(Env.perc,doneAction:2)};//declara una funcion igualada a una variable global

~k = {Demand.kr(Impulse.kr(16),0,Dseq([0,3,7,11,12]+60,inf))};//algo de caosperclib

~bass= {CaosBass.robot(0.01,2,~k.kr,filtminf:60,filtmaxf:12000,filtime:1)};

p.fadeTime = 16;//desvanece la amplitud en 16 segundos
~out = 0;//Iguala el proxy a nada, silencio
~out = ~bass;//Iguala proxy a proxy que generamos, ej. '~bass'
~out = 	~x;// ahora '~out'es otro nodo

//
p.pop;// regresa al ambiente anterior
