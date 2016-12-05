function[pa, pb, ang, bas] = tiro(pa, pb, ang, bas)
puntoA = pa; %iguales si es a ras de piso
puntoB = pb; %direfentes si el salto es hacia arriba o hacia abajo
t=-puntoA:.1:puntoB; %tiempo

%x=45*t; %angulo
val = [90, 80, 70, 60, 50, 40, 30, 20, 10, 1];
index = floor(ang/10);
x = val(index)*t; %angulo


%y=-9.8/2*t.^2+20;
bases = bas;
y=-9.8/10*t.^2+4+(bases);


for i=1:length(t)
%plot(-200,0)
%hold on
plot(200,10)
plot(x(i),y(i),'.') %movimiento
plot(x(1:i),y(1:i),'.') %rastro
pause(.05)
end