////////////////////////////////////
//Conexion MIDI
////////////////////////////////////
MIDIIn.connectAll;//Conecta todos los perifericos
// o
MIDIIn.connect(2);//Conecta un periferico especifico
//
(//Con este codigo puedes mapear las perillas de tu controlador
MIDIIn.control={|src,chan,num,val|
	[src,chan,num,val].postcln;//regresa los argumentos
	switch(num,
		12,{"Si la perilla que moviste es la numero 12, estaras leyendo esto en el 'Post Window'".postcln},
		26,{"Si la perilla que moviste es la numero 26, estaras leyendo esto en el 'Post Window'".postcln},
		25,{"Si la perilla que moviste es la numero 25, estaras leyendo esto en el 'Post Window'".postcln},
		24,{"Si la perilla que moviste es la numero 24, estaras leyendo esto en el 'Post Window'".postcln},
		{"Si la perilla que moviste es la numerono esta declarada en el 'switch', estaras leyendo esto en el 'Post Window'".postcln}
	)
};
);
// MIDIFunc es una funcion optimizada para detectar o enviar mensajes MIDI
(
MIDIFunc.noteOn( {|src,chan,num,val| //metodo para deteccion de nota
	[src,chan,num,val].postln;//regresa los valores midi de los argumentos
});
)
// Existen varios metodos de MIDIFunc para detectar mensajes ej.
MIDIFunc.noteOff( {|src,chan,num,val| //metodo para deteccion al soltar la nota de un controlador
	[src,chan,num,val].postln;//regresa los valores midi de los argumentos
});
)