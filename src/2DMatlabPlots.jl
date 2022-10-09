#https://www.mathworks.com/help/matlab/ref/plot.html
function plot(y;options=Dict())
    MATLAB.@mput y
    optionsString = namevaluepairs(options)
    MATLAB.eval_string("plot(y"*optionsString*")")
end

function plot(x::Array{T},y;options=Dict()) where T<:Number
    MATLAB.@mput x
    MATLAB.@mput y
    optionsString = namevaluepairs(options)
    MATLAB.eval_string("plot(x,y"*optionsString*")")
end

function plot(x::Array{T},y,lineSpec::String;options=Dict()) where T<:Number
    MATLAB.@mput x
    MATLAB.@mput y
    optionsString = namevaluepairs(options)
    MATLAB.eval_string("plot(x,y"*",\"$lineSpec\""*optionsString*")")
end

#https://www.mathworks.com/help/matlab/ref/scatter.html
function scatter(x::Array{T},y;options=Dict()) where T<:Number
    MATLAB.@mput x
    MATLAB.@mput y
    optionsString = namevaluepairs(options)
    MATLAB.eval_string("scatter(x,y"*optionsString*")")
end

function scatter(x::Array{T},y,sz;options=Dict()) where T<:Number
    MATLAB.@mput x
    MATLAB.@mput y
    MATLAB.@mput sz
    optionsString = namevaluepairs(options)
    MATLAB.eval_string("scatter(x,y,sz"*optionsString*")")
end

function scatter(x::Array{T},y,str::String;options=Dict()) where T<:Number
    MATLAB.@mput x
    MATLAB.@mput y
    optionsString = namevaluepairs(options)
    MATLAB.eval_string("scatter(x,y,\"$str\""*optionsString*")")
end

function scatter(x::Array{T},y,sz,str::String;options=Dict()) where T<:Number
    MATLAB.@mput x
    MATLAB.@mput y
    MATLAB.@mput sz
    optionsString = namevaluepairs(options)
    MATLAB.eval_string("scatter(x,y,sz,\"$str\""*optionsString*")")
end

function scatter(x::Array{T},y,sz,str::String,filled::String;options=Dict()) where T<:Number
    MATLAB.@mput x
    MATLAB.@mput y
    MATLAB.@mput sz
    optionsString = namevaluepairs(options)
    MATLAB.eval_string("scatter(x,y,sz,\"$str\",\"$filled\""*optionsString*")")
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
    MATLAB.eval_string("semilogx(x,y"*optionsString*")")
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
    MATLAB.eval_string("semilogy(x,y"*optionsString*")")
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
    MATLAB.eval_string("loglog(x,y"*optionsString*")")
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
    MATLAB.eval_string("stairs(x,y"*optionsString*")")
end

function stairs(x,y,lineSpec::String;options=Dict())
    MATLAB.@mput x
    MATLAB.@mput y
    optionsString = namevaluepairs(options)
    MATLAB.eval_string("stairs(x,y"*",\"$lineSpec\""*optionsString*")")
end
function polar(theta,rho;options=Dict())
    MATLAB.@mput theta
    MATLAB.@mput rho
    optionsString = namevaluepairs(options)
    MATLAB.eval_string("polar(theta,rho"*optionsString*")")
end

function polar(theta,rho,lineSpec::String;options=Dict())
    MATLAB.@mput theta
    MATLAB.@mput rho
    optionsString = namevaluepairs(options)
    MATLAB.eval_string("polar(theta,rho"*",\"$lineSpec\""*optionsString*")")
end

