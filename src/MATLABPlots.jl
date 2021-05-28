module MATLABPlots

import MATLAB

#Basics
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
#Utilities for Plotting
include("utils.jl")

#(1D and 2D) Plotting
include("2DMatlabPlots.jl")

#(3D) Plotting
include("3DMatlabPlots.jl")

#(Statistical) Plotting
include("StatisticalMatlabPlotting.jl")

#Legends, Axis Labels, GCA
include("Style.jl")


#Export Things That I Use Regularly
export figure,clf,hold_on,plot,hold_off

end