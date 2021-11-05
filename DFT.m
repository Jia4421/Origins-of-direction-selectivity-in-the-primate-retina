clc
clear
close all
%%
% T1 = readtable('SimulatedDataR146','Range','A66:M573');
% T1 = readtable('SimulatedDataR251','Range','A78:Y585');
% T1 = readtable('Simulation_d309','Range','A88:AI595');
% T1 = readtable('Simulation_d419_Ca','Range','A96:AQ603');
% T1 = readtable('Simulation_d334ts','Range','A86:AG593');
% T1 = readtable('Simulation_d346b','Range','A94:AO601');
% T1 = readtable('Simulation_d349d','Range','A84:AE591');
 T1 = readtable('sbac_soma_d334ts2.xlsx','Range','A1:AO508');

sng_f = 2; %signal frequency in Hz
time = T1.Time1(end);

all_x =[T1.Stim1(5:end) T1.Stim2(5:end) T1.Stim3(5:end) T1.Stim4(5:end) T1.Stim5(5:end)...
    T1.Stim6(5:end) T1.Stim7(5:end) T1.Stim8(5:end) T1.Stim9(5:end)...
    T1.Stim10(5:end) T1.Stim11(5:end) T1.Stim12(5:end) T1.Stim13(5:end)...
    T1.Stim14(5:end) T1.Stim15(5:end) T1.Stim16(5:end) T1.Stim17(5:end)...
    T1.Stim18(5:end) T1.Stim19(5:end) T1.Stim20(5:end)]; % T1.Stim21(5:end)];

F1_magnitude = [];
F2_magnitude = [];
F1_phase = [];
F2_phase = [];
for idx = 1:length(all_x(1,:))
%    figure
    x=all_x(:,idx);
    L=length(x); 
    Fs = L/time;
    y=fft(x); %DFT
    P2 = abs(y/L); %Two side spectrum
    P1 = P2(1:L/2+1); 
    P1(2:end-1) = 2*P1(2:end-1); %single side spectrum
    f = Fs*(0:(L/2))/L; 
    
    df=Fs/length(y); %frequency resolution
    freq=(0:1:length(y)/2)*df; %frequency axis
    M=abs(y)/length(x)*2; %amplitude spectrum
    P=angle(y)*180/pi; %phase spectrum (in deg.)
    
    
    %Find the F1 == signal frequecy and F2 == 2* signal frequecny
    I = find(f== sng_f); %Change the load smaples if error occurs
    F1_magnitude = [F1_magnitude M(I)];
    F1_phase = [F1_phase P(I)];
    I = find(f== (2*sng_f)); %Change the load smaples if error occurs
    F2_magnitude = [F2_magnitude M(I)];
    F2_phase = [F2_phase P(I)];
end
T = array2table([F1_magnitude;F1_phase;F2_magnitude;F2_phase]')


