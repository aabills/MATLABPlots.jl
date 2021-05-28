#https://www.mathworks.com/help/matlab/ref/matlab.graphics.chart.primitive.histogram.html
function histogram(X;options=Dict())
    MATLAB.@mput X
    optionString = namevaluepairs(options)
    MATLAB.eval_string("histogram(X "*optionString*")")
end
