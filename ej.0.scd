Platform.userExtensionDir;
// s = Server.local;
s.boot;

s.scope;
{"hola"}.value;
{}.play;
s.scope;
{SinOsc.ar()!2}.play;
{CaosKick.ar(0.01,0.25,gate:1)}.play;
{CaosKick.ar(0.01,0.25,0.5,0.5,42,40,50,1,)}.play;
{CaosChords.ar('5aug7',0.01,4,48,gate:1)}.play;

(
Tdef(\test,{
	var notas = Pxrand(Scale.hindu.degrees+36,inf).asStream;
	var release = Pxrand([0.1,0.25,0.5,0.75,1],inf).asStream;
	var i = 0;
	{
		// ("CCD" + i).postcln;
		{CaosChords.ar('5dim7',0.01,release.resume,notas.next,60,gate:1)}.play;
		i = i+1;
		0.25.wait;
	}.loop;
}).quant_(4);
);
Tdef(\test).play;
Tdef(\test).stop;