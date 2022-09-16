function [newmat,mini] = BG1(mat)
%BG1 Summary of this function goes here
%   Detailed explanation goes here
mini=zeros(length(mat(1,:)),1);
for i=1:length(mat(:,1))
%nbins=round(sqrt(length(mat(i,:))));
nbins=108;
[counts,centers] = hist(mat(i,:),nbins);
mini(i)=centers(find(counts==max(counts)));


end

newmat=mat-mini;
newmat(length(mat(:,1)),:)=[];

end

