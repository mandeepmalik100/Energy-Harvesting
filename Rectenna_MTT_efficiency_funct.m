clear all;
close all;
clc;

load ws_efficiency_rectenna_MTT

%%%%% fitted function
x_dBm_plot = [sens_MTT_rectenna_dBm  : 0.01 : satur_MTT_rectenna_dBm];
f_opt_eff_MTT_rect = polyfunct( w_opt, x_dBm_plot ) ;
% x_dBm_n
x_mWatt_plot = 10.^(x_dBm_plot/10);

figure1 = figure;


% Create axes
axes1 = axes('Parent',figure1,'FontSize',13,'FontName','Times New Roman');
%% Uncomment the following line to preserve the X-limits of the axes
% xlim(axes1,[-11 15]);
box(axes1,'on');
hold(axes1,'on');

% Create plot
plot(x_mWatt_plot , f_opt_eff_MTT_rect,'DisplayName','Fitted Polynomial','LineWidth',2);

% Create plot
plot(x_dBm_MTT_rect, y_effic_MTT_rect(1:end),'DisplayName','Actual Data Points','Marker','square',...
    'Color',[1 0 0]);

% Create xlabel
xlabel({'mWatt'},'FontSize',15,'FontName','Times New Roman',...
    'Interpreter','latex');

% Create ylabel
ylabel({'Efficiency'},'FontSize',15,'FontName','Times New Roman',...
    'Interpreter','latex');

% Create title
title({'MTT Rectenna'});

% Create legend
legend1 = legend(axes1,'show');
set(legend1,'Location','southeast','FontSize',15);