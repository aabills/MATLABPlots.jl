module MATLABPlots

import MATLAB

#Basic One Liners
figure(n::Int) = MATLAB.eval_string("figure($n)")
figure() = MATLAB.eval_string("figure()")
function hold_on()
    MATLAB.mat"hold on"
end
function hold_off()
    MATLAB.mat"hold off"
end
function grid_on()
    MATLAB.mat"grid on"
end
clf(n::Int) = MATLAB.eval_string("clf($n)")
clf() = MATLAB.eval_string("clf()")
subplot(a,b,c) = MATLAB.eval_string("subplot($a,$b,$c)")
export figure,clf,hold_on,hold_off,subplot,grid_on


#Utilities for Plotting
include("utils.jl")

#(1D and 2D) Plotting
include("2DMatlabPlots.jl")
export plot,semilogx,loglog,semilogy,stairs

#Timeseries
using Dates
include("timeseries.jl")

#(3D) Plotting
include("3DMatlabPlots.jl")
export plot3,surf,contourf,contour,surface,pcolor

#(Statistical) Plotting
include("StatisticalMatlabPlotting.jl")
export histogram

#Geo Plotting
include("GeoPlots.jl")
export geoplot

#Legends, Axis Labels, GCA
include("Style.jl")
export xlabel,ylabel,zlabel,title,legend,setgca,setgcf,printgcf,xlim,ylim,axes,colormap


# Saving Plots
function saveas(filename)
	MATLAB.eval_string("saveas(gcf,\"$filename\")")
end
export saveas 
end
