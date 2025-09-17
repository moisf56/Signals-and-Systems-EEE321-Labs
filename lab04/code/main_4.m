% x = [1 0 2; -1 3 1;-2 4 0];
% h = [1 -1; 0 -2];
% y = DSLSI2D(h,x);
% disp(y)

%% Part 4
x = ReadMyImage('Part4.bmp');
% DisplayMyImage(x)
% D = 21903608;
% D7 = rem(D, 7);
% Mh = 30 + D7;
% Nh = 30 + D7;
% b = 0.7;
% b2 = 0.4;
% b3 = 0.1;

for m=1:Mh-1
    for n=1:Nh-1
        h1 (m, n)= sinc(b*(m-((Mh-1)/2))).*sinc(b*(n-((Nh-1)/2)));
        h2 (m, n)= sinc(b2*(m-((Mh-1)/2))).*sinc(b2*(n-((Nh-1)/2)));
        h3 (m, n)= sinc(b3*(m-((Mh-1)/2))).*sinc(b3*(n-((Nh-1)/2)));
    end
end
%%
denoised_x =  lab4_main(h1,x);
denoised_x2 =  lab4_main(h2,x);
denoised_x3 =  lab4_main(h3,x);
figure 
subplot(1,3,1)
imshow(denoised_x);
subplot(1,3,2);
imshow(denoised_x2);
subplot(1,3,3);
imshow(denoised_x3)