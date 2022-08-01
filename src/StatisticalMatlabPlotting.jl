#https://www.mathworks.com/help/matlab/ref/matlab.graphics.chart.primitive.histogram.html
function histogram(X;options=Dict())
    MATLAB.@mput X
    optionString = namevaluepairs(options)
    MATLAB.eval_string("histogram(X "*optionString*")")
end

#https://www.mathworks.com/help/matlab/ref/area.html
function area(X,Y::Array;options=Dict())
    MATLAB.@mput X
    MATLAB.@mput Y
    optionString = namevaluepairs(options)
    MATLAB.eval_string("area(X,Y$optionString)")
end

#https://www.mathworks.com/help/matlab/ref/area.html
#this one is scalar
function area(X,baseline::Real;options=Dict())
    MATLAB.@mput X
    MATLAB.@mput baseline
    optionString = namevaluepairs(options)
    MATLAB.eval_string("area(X,Y$optionString)")
end


