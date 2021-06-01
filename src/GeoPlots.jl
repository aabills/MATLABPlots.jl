#https://www.mathworks.com/help/matlab/ref/geoplot.html
function geoplot(lat,lon;options=Dict())
    MATLAB.@mput lat
    MATLAB.@mput lon
    optionsString = namevaluepairs(options)
    MATLAB.eval_string("geoplot(lat,lon"*optionsString*")")
end

function geoplot(lat,lon,lineSpec;options=Dict())
    MATLAB.@mput lat
    MATLAB.@mput lon
    optionsString = namevaluepairs(options)
    MATLAB.eval_string("geoplot(lat,lon"*",\"$lineSpec\""*optionsString*")")
end