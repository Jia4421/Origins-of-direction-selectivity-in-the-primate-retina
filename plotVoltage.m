clc
clear

T = readtable('sbac_soma_d419_rf.txt');

figure
% t = T.Var1;
t = 0:0.001:1.001;

x4 = T.Var4*1000;
x4 = [x4;x4];

x16 = T.Var16*1000;
x16 = [x16;x16];

x22 = T.Var22*1000;
x22 = [x22;x22];
V2 = [x4 x16 x22];
handle2 = stackedplot(t,V2,'k','LineWidth',2)

for i = 1:numel(handle2.AxesProperties)
    handle2.AxesProperties(i).YLimits = [-70 0]; %soma V
  % handle2.AxesProperties(i).YLimits = [0 1E-4]; %dendritic calcium
end

xlabel('time(s)');