p = ProxySpace.push(s.boot);

~out.play;

~t = 0.25;

~k = {Demand.kr(Impulse.kr(16),0,Dseq([0,3,7,11,12]+60,inf))};

~bass= {CaosBass.robot(0.01,2,~k.kr,filtminf:60,filtmaxf:12000,filtime:1)};

~x = {LFPulse.ar(60,0,0.1,0.1)*EnvGen.kr(Env.perc,doneAction:2)}

p.fadeTime = 16;
~out = 0;
~out = ~bass;
~out = 	~x;
p.pop;


