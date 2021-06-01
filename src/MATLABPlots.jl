module MATLABPlots

import MATLAB

#Basic One Liners
#TODO: SAVE
figure(n::Int) = MATLAB.eval_string("figure($n)")
figure() = MATLAB.eval_string("figure()")
function hold_on()
    MATLAB.mat"hold on"
end
function hold_off()
    MATLAB.mat"hold off"
end
clf(n::Int) = MATLAB.eval_string("clf($n)")
clf() = MATLAB.eval_string("clf()")
subplot(a,b,c) = MATLAB.eval_string("subplot($a,$b,$c)")
export figure,clf,hold_on,hold_off,subplot


#Utilities for Plotting
include("utils.jl")

#(1D and 2D) Plotting
include("2DMatlabPlots.jl")
export plot,semilogx,loglog,semilogy,stairs

#(3D) Plotting
include("3DMatlabPlots.jl")
export plot3,surf,contourf,contour

#(Statistical) Plotting
include("StatisticalMatlabPlotting.jl")
export histogram

#Legends, Axis Labels, GCA
include("Style.jl")
export xlabel,ylabel,zlabel,title,legend,setgca


end