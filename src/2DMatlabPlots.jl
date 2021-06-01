#https://www.mathworks.com/help/matlab/ref/plot.html
function plot(y;options=Dict())
    MATLAB.@mput y
    optionsString = namevaluepairs(options)
    MATLAB.eval_string("plot(y"*optionsString*")")
end

function plot(x,y;options=Dict())
    MATLAB.@mput x
    MATLAB.@mput y
    optionsString = namevaluepairs(options)
    MATLAB.eval_string("plot(x,y"*optionsString*")")
end

function plot(x,y,lineSpec::String;options=Dict())
    MATLAB.@mput x
    MATLAB.@mput y
    optionsString = namevaluepairs(options)
    MATLAB.eval_string("plot(x,y"*",\"$lineSpec\""*optionsString*")")
end


#https://www.mathworks.com/help/matlab/ref/semilogx.html
function semilogx(y;options=Dict())
    MATLAB.@mput y
    optionsString = namevaluepairs(options)
    MATLAB.eval_string("semilogx(y"*optionsString*")")
end

function semilogx(x,y;options=Dict())
    MATLAB.@mput x
    MATLAB.@mput y
    optionsString = namevaluepairs(options)
    MATLAB.eval_string("semilogx(x,y"*",\"$lineSpec\""*optionsString*")")
end

function semilogx(x,y,lineSpec::String;options=Dict())
    MATLAB.@mput x
    MATLAB.@mput y
    optionsString = namevaluepairs(options)
    MATLAB.eval_string("semilogx(x,y"*",\"$lineSpec\""*optionsString*")")
end

#https://www.mathworks.com/help/matlab/ref/semilogy.html
function semilogy(y;options=Dict())
    MATLAB.@mput y
    optionsString = namevaluepairs(options)
    MATLAB.eval_string("semilogy(y"*optionsString*")")
end

function semilogy(x,y;options=Dict())
    MATLAB.@mput x
    MATLAB.@mput y
    optionsString = namevaluepairs(options)
    MATLAB.eval_string("semilogy(x,y"*",\"$lineSpec\""*optionsString*")")
end

function semilogy(x,y,lineSpec::String;options=Dict())
    MATLAB.@mput x
    MATLAB.@mput y
    optionsString = namevaluepairs(options)
    MATLAB.eval_string("semilogy(x,y"*",\"$lineSpec\""*optionsString*")")
end

#https://www.mathworks.com/help/matlab/ref/loglog.html
function loglog(y;options=Dict())
    MATLAB.@mput y
    optionsString = namevaluepairs(options)
    MATLAB.eval_string("loglog(y"*optionsString*")")
end

function loglog(x,y;options=Dict())
    MATLAB.@mput x
    MATLAB.@mput y
    optionsString = namevaluepairs(options)
    MATLAB.eval_string("loglog(x,y"*",\"$lineSpec\""*optionsString*")")
end

function loglog(x,y,lineSpec::String;options=Dict())
    MATLAB.@mput x
    MATLAB.@mput y
    optionsString = namevaluepairs(options)
    MATLAB.eval_string("loglog(x,y"*",\"$lineSpec\""*optionsString*")")
end

#https://www.mathworks.com/help/matlab/ref/stairs.html
function stairs(y;options=Dict())
    MATLAB.@mput y
    optionsString = namevaluepairs(options)
    MATLAB.eval_string("stairs(y"*optionsString*")")
end

function stairs(x,y;options=Dict())
    MATLAB.@mput x
    MATLAB.@mput y
    optionsString = namevaluepairs(options)
    MATLAB.eval_string("stairs(x,y"*",\"$lineSpec\""*optionsString*")")
end

function stairs(x,y,lineSpec::String;options=Dict())
    MATLAB.@mput x
    MATLAB.@mput y
    optionsString = namevaluepairs(options)
    MATLAB.eval_string("stairs(x,y"*",\"$lineSpec\""*optionsString*")")
end

