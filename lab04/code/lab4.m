D = 21903608;
D7 = rem(D, 7);
Mh = 30 + D7;
Nh = 30 + D7;
b = 0.7;
b2 = 0.4;
b3 = 0.1;
x = ReadMyImage('Part4.bmp');
% 
% 
for m=1:Mh-1
    for n=1:Nh-1
        h1 (m, n)= sinc(b*(m-((Mh-1)/2))).*sinc(b*(n-((Nh-1)/2)));
%           h2 (m, n)= sinc(b2*(m-((Mh-1)/2))).*sinc(b2*(n-((Nh-1)/2)));
        h3 (m, n)= sinc(b3*(m-((Mh-1)/2))).*sinc(b3*(n-((Nh-1)/2)));
    end
end
denoised_x =  DSLSI2D(h1,x);
% denoised_x2 =  DSLSI2D(h2,x);
denoised_x3 =  DSLSI2D(h3,x);

% subplot(2,2,1)
% imshow(x);
% subplot(2,2,2)
% imshow(denoised_x, []);
% subplot(2,2,3);

imshow(denoised_x3, []);
% subplot(2,2,4);
% imshow(denoised_x3)

%% Edge Detection 
% x = ReadMyImage('Part5.bmp');
% % DisplayMyImage(x);
% 
% 
% h1 = [0.5 -0.5];
% h2 = [0.5 ; -0.5];
% h3 = 0.5*h1 + 0.5*h2;
% y1 = DSLSI2D(h1,x);
% s1 = y1.*y1;
% figure
% subplot(1,2,1)
% imshow(y1,[]);
% subplot(1,2,2);
% imshow(s1,[]);
% 
% y2 = DSLSI2D(h2,x);
% s2 = y2.*y2;
% figure
% subplot(1,2,1);
% imshow(y2,[]);
% subplot(1,2,2);
% imshow(s2,[]);
% 
% y3 = DSLSI2D(h1,x);
% s3 = y3.*y3;
% figure
% subplot(1,2,1)
% imshow(y3,[]);
% subplot(1,2,2)
% imshow(s3,[])
%% Pattern Recognition
% x6 = ReadMyImage('Part6x.bmp');
% h6 = ReadMyImage('Part6h.bmp');
% y6 = DSLSI2D(h6,x6);
% 
% 
% DisplayMyImage(abs(y6));
% DisplayMyImage((abs(y6)).^3);
% DisplayMyImage((abs(y6)).^5);


%%
function [y]=DSLSI2D(h,x)

Mx = height(x);
Nx = width(x);
Mh = height(h);
Nh = width(h);
N_y = Nx + Nh;
M_y = Mx + Mh;

y = zeros(M_y -1,N_y -1);
for k=0:Mh-1
    for l=0:Nh-1
        y(k+1:k+Mx,l+1:l+Nx)=y(k+1:k+Mx,l+1:l+Nx)+h(k+1,l+1)*x;
    end
end


end
%%
