function [ outim ] = BinaryShift( im )
% Author: Oliver Johansson
%
% Function information:
% Converts the image into an inverted binary image

%find a threshold
level = graythresh(im);

%create a binary image
%if imbinarize doesn't work use im2bw
BW = imbinarize(im, (level + 0.05));
BW = rgb2gray(im2uint8(BW));

%inverted binary image
outim = imcomplement(BW);




