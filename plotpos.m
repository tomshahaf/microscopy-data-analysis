function []=plotpos()
filename=uigetfile('.csv');
mat=csvread(filename,1,12);
[h,l]=size(mat);
mat(mat == 0) = NaN;
x=mat(:,3:4:l);
y=mat(:,4:4:l);
mesure=mat(:,1:4:l);
area=mat(:,2:4:l);
figure;hold on;for i=1:l/4; plot(x(:,i),y(:,i));end
title('track')
xlabel('X [pixles]')
ylabel('Y [pixels]')
figure;hold on;for i=1:l/4; plot([1:h].*10,mesure(:,i));end
xlabel('time [minute]')
ylabel('YFP [A.U]')
figure;hold on;for i=1:l/4; plot([1:h].*10,smooth(mesure(:,i)));end
xlabel('time [minute]')
ylabel('YFP [A.U]')
figure;hold on;for i=1:l/4; plot([1:h].*10,area(:,i));end
xlabel('time [minute]')
ylabel('cell area [pixels^2]')
figure;hold on;for i=1:l/4; plot([1:h].*10,smooth(area(:,i)));end
xlabel('time [minute]')
ylabel('cell area [pixels^2]')
