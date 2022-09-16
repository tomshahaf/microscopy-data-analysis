function [newmat] = importentonly(mat,a)
%IMPORTENTONLY Summary of this function goes here
%   Detailed explanation goes here
if nargin==1
    a=0.1;
end
[hight,lenght]=size(mat);

delta=max(mat(30:lenght,:))-min(mat(30:lenght,:));
VECTOR=find(delta>=a*min(min(mat(1:(lenght-1),:),[],'omitnan')));
newmat=mat(:,VECTOR);

    
end

