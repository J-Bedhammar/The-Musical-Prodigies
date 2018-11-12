function [im] = HorProj(inimage)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
im = inimage;
imshow(im)
x = sum(im,2);
figure
     plot(x,1:size(im,1))
     
[peaks,locals] = findpeaks(x);
maxpeak = max(peaks);

removelist = peaks<=maxpeak*0.8;
peaks(removelist) = [];
locals(removelist) = [];

for v = locals
        im(v-1,:) = 0;
        im(v,:) = 0;
        im(v+1,:) = 0;
end
    
figure 
imshow(im);

%%outputArg1 = inputArg1;
%outputArg2 = inputArg2;
end

