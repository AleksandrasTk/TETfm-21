%% Fuzzy Edge Detection
clc;
clear;
Irgb=imread('dalis.jpg'); 
[Ieval]=fuzzyedge(Irgb);
FuzzyEdge=imcomplement(Ieval);