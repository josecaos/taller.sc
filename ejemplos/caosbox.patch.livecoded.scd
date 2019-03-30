/*
Archovo generado durante la presentacion de proyectos del curso
en el auditorio del Centro de Cultura Digital Mexico
*/
c = CaosBox;
c.enviroment;

c.soundcheck(\pink);

c.play;
c.freqAnalyzer(true);

k = CaosGear.new;
k.kick();
k.kick(50,0.01,0.4,1,0.5,42,62);
k.toTrack(0,false);
k.toTrack(2,false);
k.toTrack(4,false);
k.toTrack([0,16],false);

h = CaosGear.new;
h.hihats(50,0.01,0.5);
h.hihats(50,0.01,0.5,4408);
h.hihats(60,0.01,0.15,12200,0.5,1,0.7,0.5);
h.hihats(56,0.01,0.15);
h.toTrack(0,false);
h.toTrack(Array.series(12,2,2));
//
t = CaosGear.new;
t.snare(50);
t.snare(52);
t.toTrack([8,24],false);
h.toTrack(Array.series(12,2,2));

b = CaosGear.new;
b.bass(64,~mainmelody.melody(~degrees,24),\rand)
b.toTrack(0);

c.fx(\grains,1,1);
c.autoFx(\grains,true,\normal,[0.1,0.3,0.5,0.7,0.9],[0.1,0.3,0.5,0.7,0.9]);
c.autoFx(\delay,true,\normal,[0.01,0.03,0.05],0.25);
c.autoFx(\pitch,true,\fast,[1,1.2,1.5,0.75],0,0);

c.openDefaults;

c.toggleMetric;
c.randomTime(true,true,[30,60,120,180,240]);
c.randomTime(false,true,[30,60,120,180,240]);

c.bpm(60*2);

c.stop