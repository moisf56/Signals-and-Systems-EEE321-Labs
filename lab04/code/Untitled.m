%% Edge Detection 
x = ReadMyImage('Part5.bmp');
% DisplayMyImage(x);
h1= zeros(512,512);
h1(1:1,1:1) = 0.5;
h1(1:1,2:2) = -0.5;
h2 = zeros(512,512);
h2(1:1,1:1) = 0.5;
h2(1:1,1:1) = -0.5;
y1 = DSLSI2D(h1,x);
s1 = y1^2;
DisplayMyImage(s1);
y2 = DSLSI2D(h2,x);
s2 = y2^2;
% DisplayMyImage(s1);