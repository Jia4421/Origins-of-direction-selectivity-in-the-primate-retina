clc
clear
close all

% Soma V
T = readtable('sbac_soma_d412_rf.txt');
t = T.Var1;
V2=T.Var2*1000;
V4=T.Var4*1000;

figure
plot(t,V2,'color',[0.466 0.674 0.188],'LineWidth',2)
hold on
plot(t,V4,'k','LineWidth',2)
yticks([-69 -39]);
ylim([-69 -34]);
xlabel('time(s)','FontSize',18)
ylabel('Voltage(mV)','FontSize',18)
legend('outward','inward','FontSize',14)

% Den Calcium
T = readtable('sbac_ca_d417_rf.txt');
t = T.Var1;
M1=max(T.Var2);
M2=max(T.Var4);
M=max(M1,M2);
C2=T.Var2/M;
C4=T.Var4/M;

figure
plot(t,C2,'color',[0.466 0.674 0.188],'LineWidth',2)
hold on
plot(t,C4,'k','LineWidth',2)
yticks([0 1]);
ylim([0 1.2])
xlabel('time(s)','FontSize',18)
ylabel('Normalized Calcium','FontSize',18)
legend('outward','inward','FontSize',14)


