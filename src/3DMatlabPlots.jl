function plot3(x,y,z,lineSpec::String;options=Dict())
    MATLAB.@mput x
    MATLAB.@mput y
    MATLAB.@mput z
    optionsString = namevaluepairs(options)
    plotString = "plot3(x,y,z"*",\"$lineSpec\""*optionsString*")"
    MATLAB.eval_string(plotString)
end

function plot3(x,y,z;options=Dict())
    MATLAB.@mput x
    MATLAB.@mput y
    MATLAB.@mput z
    optionsString = namevaluepairs(options)
    plotString = "plot3(x,y,z"*optionsString*")"
    MATLAB.eval_string(plotString)
end

#TODO: Improve 3D Plotting
function surf(X,Y,Z;options=Dict())
    MATLAB.@mput X
    MATLAB.@mput Y
    MATLAB.@mput Z
    optionsString = namevaluepairs(options)
    plotString = "surf(X,Y,Z"*optionsString*")"
    MATLAB.eval_string(plotString)
end

function surf(X,Y,Z,lineSpec;options=Dict())
    MATLAB.@mput X
    MATLAB.@mput Y
    MATLAB.@mput Z
    optionsString = namevaluepairs(options)
    plotString = "surf(X,Y,Z"*",\"$lineSpec\""*optionsString*")"
    MATLAB.eval_string(plotString)
end

function surface(X,Y,Z;options=Dict())
    MATLAB.@mput X
    MATLAB.@mput Y
    MATLAB.@mput Z
    optionsString = namevaluepairs(options)
    plotString = "surface(X,Y,Z"*optionsString*")"
    MATLAB.eval_string(plotString)
end

function surface(X,Y,Z,lineSpec;options=Dict())
    MATLAB.@mput X
    MATLAB.@mput Y
    MATLAB.@mput Z
    optionsString = namevaluepairs(options)
    plotString = "surface(X,Y,Z"*",\"$lineSpec\""*optionsString*")"
    MATLAB.eval_string(plotString)
end

function contourf(X,Y,Z;options=Dict())
    MATLAB.@mput X
    MATLAB.@mput Y
    MATLAB.@mput Z
    optionsString = namevaluepairs(options)
    plotString = "contourf(X,Y,Z"*optionsString*")"
    MATLAB.eval_string(plotString)
end

function contourf(X,Y,Z,lineSpec;options=Dict())
    MATLAB.@mput X
    MATLAB.@mput Y
    MATLAB.@mput Z
    optionsString = namevaluepairs(options)
    plotString = "contourf(X,Y,Z"*",\"$lineSpec\""*optionsString*")"
    MATLAB.eval_string(plotString)
end

function contour(X,Y,Z;options=Dict())
    MATLAB.@mput X
    MATLAB.@mput Y
    MATLAB.@mput Z
    optionsString = namevaluepairs(options)
    plotString = "contour(X,Y,Z"*optionsString*")"
    MATLAB.eval_string(plotString)
end

function contour(X,Y,Z,lineSpec;options=Dict())
    MATLAB.@mput X
    MATLAB.@mput Y
    MATLAB.@mput Z
    optionsString = namevaluepairs(options)
    plotString = "contour(X,Y,Z"*",\"$lineSpec\""*optionsString*")"
    MATLAB.eval_string(plotString)
end

function pcolor(C;options=Dict())
    MATLAB.@mput C
    optionsString = namevaluepairs(options)
    plotString = "pcolor(C"*optionsString*")"
    MATLAB.eval_string(plotString)
end

function pcolor(X,Y,C;options=Dict())
    MATLAB.@mput X
    MATLAB.@mput Y
    MATLAB.@mput C
    optionsString = namevaluepairs(options)
    plotString = "pcolor(X,Y,C"*optionsString*")"
    MATLAB.eval_string(plotString)
end
