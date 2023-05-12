clear all;
close all;
clc;

load ws_efficiency_powerCast

%%%%% fitted function
x_dBm_plot = [sens_powerCast_dBm  : 0.001 : satur_powerCast_dBm];
 f_opt_eff_powerCast = polyfunct( w_opt, x_dBm_plot ) ;
% x_dBm_n
x_mWatt_plot = 10.^(x_dBm_plot/10);

 figure1 = figure;


% Create axes
axes1 = axes('Parent',figure1,'FontSize',13,'FontName','Times New Roman');
%% Uncomment the following line to preserve the X-limits of the axes
 box(axes1,'on');
hold(axes1,'on');

% Create plot
% plot(x_mWatt_plot , f_opt_eff_powerCast,'DisplayName','Fitted Polynomial','LineWidth',2);
% 
% % Create plot
% plot(10.^(x_dBm_powerCast/10), y_effic_powerCast(1:end),'DisplayName','Actual Data Points','Marker','square',...
%     'Color',[1 0 0]);
z = (10.^(x_dBm_powerCast/10)).*transpose(y_effic_powerCast(1:end)) ; 
plot(10.^(x_dBm_powerCast/10),z,'DisplayName','Actual Data Points','Marker','square',...
    'Color',[1 0 0]);
xlim(axes1,[0.06 0.12]);
ylim(axes1,[0 0.02]);

% Create xlabel
% xlabel({'mWatt'},'FontSize',15,'FontName','Times New Roman',...
%     'Interpreter','latex');
% 
% % Create ylabel
% ylabel({'Efficiency'},'FontSize',15,'FontName','Times New Roman',...
%     'Interpreter','latex');
% 
% % Create title
% title({'PowerCast Module'});
% 
% % Create legend
% legend1 = legend(axes1,'show');
% set(legend1,'Location','southeast','FontSize',15);