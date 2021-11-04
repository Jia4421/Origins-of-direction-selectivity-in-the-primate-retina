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
% yticks([-68 -53]);
% ylim([-68 -50]);
% yticks([-70 -22]);
% ylim([-70 -13]);
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


% % sine wave
% figure
% 
% fmsg=0.5;	%Message signal frequency
% Fs=1000;	%sampling frequency
% t=0:0.001:5; % Time duaration defined
% 
% Amsg=1*ones(size(t));
% x=-Amsg.*cos(2*pi*fmsg*t);
% 
% plot(t,x,'k','LineWidth',0.7)
% ylim([-2 2])
% xlim([-1 6])

% % square wave
% figure
% 
% fc=0.5;
% t=0:0.001:5;
% Ac=ones(size(t));
% y=Ac+Ac.*square(-2*pi*fc*t);
% y=y/2;
% plot(t,y,'k','LineWidth',0.7)
% ylim([-1 2])
% xlim([-1 6])

