%% Felix Agbavor (fa424@drexel.edu), v 1.0

function [fitresult, gof,xData] = createFit1(x, y)
%CREATEFIT1(X,Y)
%  Create a fit.
%
%  Data for 'curve fit2' fit:
%      X Input : x
%      Y Output: y
%  Output:
%      fitresult : a fit object representing the fit.
%      gof : structure with goodness-of fit info.
%
%  See also FIT, CFIT, SFIT.

%  Auto-generated by MATLAB on 11-Oct-2018 13:09:53


%% Fit: 'curve fit1'.
[xData, yData] = prepareCurveData( x, y );

% Set up fittype and options.
ft = fittype( 'rat53' );
opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
opts.Display = 'Off';
opts.StartPoint = [0.777462074482948 0.357605951488887 0.0253237781112557 0.833779609211363 0.363197813340829 0.788561803113904 0.879659663407538 0.67650784079487 0.545244062198411];

% Fit model to data.
[fitresult,gof] = fit( xData, yData, ft, opts );

gcf
hold on
h = plot( fitresult, xData, yData);
set(h,'linewidth',2)