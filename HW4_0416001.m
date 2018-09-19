 Omega_50=[-pi:pi/50:pi-pi/50];
 Omega_100=[-pi:pi/100:pi-pi/100];
 Omega_200=[-pi:pi/200:pi-pi/200]; 
%%%%% problem a
 M=50;
 wr=ones(1,M+1);
 %%%%%%%%%%%plot a
 figure
 subplot(3,1,1)
 Wr=fftshift(fft(wr,100)); 
 plot(Omega_50, 20*log10(abs(Wr)/max(Wr)))  
 xlabel('Omega')
 ylabel('|W_r| dB:pi/50')
 axis([-pi pi -60 0])
 
 subplot(3,1,2)
 Wr=fftshift(fft(wr,200));
 plot(Omega_100,20*log10(abs(Wr)/max(abs(Wr))))
 xlabel('Omega')
 ylabel('|W_r| dB:pi/100')
 axis([-pi pi -60 0])
 
 subplot(3,1,3)
 Wr=fftshift(fft(wr,400));
 plot(Omega_200,20*log10(abs(Wr)/max(abs(Wr))))
 xlabel('Omega')
 ylabel('|W_r| dB:pi/200')
 axis([-pi pi -60 0]) 
 %%%%%%%%%%%%%%
 %%%%% problem b
 M=50;
 m = [0:M];
 wh=0.5-0.5*cos(2*pi*m/M);
 %%%%%%%%%plot b
 figure
 subplot(3,1,1)
 Wh=fftshift(fft(wh,100));
 plot(Omega_50,20*log10(abs(Wh)/max(abs(Wh))))
 xlabel( 'Omega')
 ylabel('|W_h| dB:pi/50')
 axis([-pi pi -130 0])
 
 subplot(3,1,2)
 Wh=fftshift(fft(wh,200));
 plot(Omega_100,20*log10(abs(Wh)/max(abs(Wh))))
 xlabel('Omega')
 ylabel('|W_h| dB:pi/100')
 axis([-pi pi -130 0]) 

 subplot(3,1,3)
 Wh=fftshift(fft(wh,400));
 plot(Omega_200,20*log10(abs(Wh)/max(abs(Wh))))
 xlabel('Omega')
 ylabel('|W_h| dB:pi/200')
 axis([-pi pi -130 0])
 %%%%%%%%%%%
 %%%%%% problem c
 figure
 subplot(2,1,1)
 plot(Omega,20*log10(abs(Wr)/max(abs(Wr))))
 xlabel('Omega')
 ylabel('|W_r| zoomed')
 axis([-.4 .4 -35 0])
 
 subplot(2,1,2)
 plot(Omega,20*log10(abs(Wh)/max(abs(Wh))))
 xlabel('Omega')
 ylabel('|W_h| zoomed') 
 axis([-.4 .4 -60 0]) 
 %%%%%%problem d
 nd =[-pi:pi/200:pi-pi/200];
 yr = (cos(26*pi/100*[0:M]) + cos(29*pi/100*[0:M])) ;
 yh = (cos(26*pi/100*[0:M]) + cos(29*pi/100*[0:M])) .* (0.5-0.5*cos(2*pi*[0:M]/M));
 Yer = fftshift(fft(yr , 400))
 Yeh = fftshift(fft(yh , 400))
 figure
 subplot(2,1,1)
 plot(nd , 20*log10(abs(Yer)/max(abs(Yer))));
 xlabel('Omega')
 ylabel('|Y_r|')
 axis([-pi pi -40 0])
 
 subplot(2,1,2)
 plot(nd , 20*log10(abs(Yeh)/max(abs(Yeh))))
 xlabel('Omega')
 ylabel('|Y_h|')
 axis([-pi pi -80 0])
 %%%%%%problem e
 ne =[-pi:pi/200:pi-pi/200];
 yr = (cos(26*pi/100*[0:M]) + 0.02*cos(51*pi/100*[0:M])) ;
 yh = (cos(26*pi/100*[0:M]) + 0.02*cos(51*pi/100*[0:M])) .* (0.5-0.5*cos(2*pi*[0:M]/M));
 Yer = fftshift(fft(yr , 400))
 Yeh = fftshift(fft(yh , 400))
 figure
 subplot(2,1,1)
 plot(ne , 20*log10(abs(Yer)/max(abs(Yer))))
 xlabel('Omega')
 ylabel('|Y_r|')
 axis([-pi pi -100 0])
 subplot(2,1,2)
 plot(ne , 20*log10(abs(Yeh)/max(abs(Yeh))))
 xlabel('Omega')
 ylabel('|Y_h|')
 axis([-pi pi -100 0])