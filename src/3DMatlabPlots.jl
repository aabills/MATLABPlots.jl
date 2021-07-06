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

function surf(X,Y,Z,linespec;options=Dict())
    MATLAB.@mput X
    MATLAB.@mput Y
    MATLAB.@mput Z
    optionsString = namevaluepairs(options)
    plotString = "surf(X,Y,Z"*",\"$lineSpec\""*optionsString*")"
    MATLAB.eval_string(plotString)
end

function contourf(X::Array{T,2},Y::Array{T,2},Z::Array{T,2}) where {T}
    MATLAB.@mput X
    MATLAB.@mput Y
    MATLAB.@mput Z
    MATLAB.eval_string("contourf(X,Y,Z)")
end

function contour(X::Array{T,2},Y::Array{T,2},Z::Array{T,2}) where {T}
    MATLAB.@mput X
    MATLAB.@mput Y
    MATLAB.@mput Z
    MATLAB.eval_string("contour(X,Y,Z)")
end


