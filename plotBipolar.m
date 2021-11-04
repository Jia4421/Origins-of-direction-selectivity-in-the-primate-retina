clc
clear

T1 = readtable('cs2c.txt');

%cs2c
t=0.001:0.001:1.981;
Vcs1_out = (T1.Var2(1294:3274))*1000;
Vcs1_in = (T1.Var2(4854:6834))*1000;

Vc1_out = (T1.Var3(1294:3274))*1000;
Vc1_in = (T1.Var3(4854:6834))*1000;

Vs1_out = (T1.Var4(1294:3274))*1000;
Vs1_in = (T1.Var4(4854:6834))*1000;

% T1 = readtable('cs1c.txt');

% %cs1c
% t=0.001:0.001:2.079;
% Vcs1_out = (T1.Var2(1024:3102))*1000;
% Vcs1_in = (T1.Var2(4257+85+124:6507-87+124))*1000;
% 
% Vc1_out = (T1.Var3(1024:3102))*1000;
% Vc1_in = (T1.Var3(4257+85+124:6507-87+124))*1000;
% 
% Vs1_out = (T1.Var4(1024:3102))*1000;
% Vs1_in = (T1.Var4(4257+85+124:6507-87+124))*1000;

figure
subplot(3,2,1)
plot(t,Vcs1_out,'k','LineWidth',1)
title('outward','fontsize',16)
ylabel('center-surround','fontsize',16)
% ylim([-0.061 -0.047])
% yticks([-0.06 -0.05])
ylim([-67 -41])
yticks([-67 -41])

subplot(3,2,2)
plot(t,Vcs1_in,'k','LineWidth',1)
title('inward','fontsize',16)
ylim([-67 -41])
yticks([-67 -41])

subplot(3,2,3)
plot(t,Vc1_out,'k','LineWidth',1)
ylabel('center','fontsize',16)
ylim([-67 -41])
yticks([-67 -41])

subplot(3,2,4)
plot(t,Vc1_in,'k','LineWidth',1)
ylim([-67 -41])
yticks([-67 -41])

subplot(3,2,5)
plot(t,Vs1_out,'k','LineWidth',1)
xlabel('time(s)','fontsize',16)
ylabel('surround','fontsize',16)
ylim([-67 -41])
yticks([-67 -41])

subplot(3,2,6)
plot(t,Vs1_in,'k','LineWidth',1)
xlabel('time(s)','fontsize',16)
ylim([-67 -41])
yticks([-67 -41])

 suptitle('Peripheral bipolar cell')
% suptitle('Proximal bipolar cell')
