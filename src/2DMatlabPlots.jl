function plot(x,y)
    MATLAB.@mput x
    MATLAB.@mput y
    MATLAB.eval_string("plot(x,y)")
end

function plot(y)
    MATLAB.@mput y
    MATLAB.eval_string("plot(y)")
end

function plot(x,y,options::Dict)
    MATLAB.@mput x
    MATLAB.@mput y
    optionsString=""
    for option in options
        optionName = option[1]
        optionValue = option[2]
        if optionValue isa String
            optionsString *= ",\"$optionName\",\"$optionValue\""
        else
            optionsString *= ",\"$optionName\",$optionValue"
        end
    end
    plotString = "plot(x,y"*optionsString*")"
    print(plotString)
    MATLAB.eval_string(plotString)
end

function plot(x,y,easyOptions::String,options::Dict)
    MATLAB.@mput x
    MATLAB.@mput y
    optionsString=""
    for option in options
        optionName = option[1]
        optionValue = option[2]
        if optionValue isa String
            optionsString *= ",\"$optionName\",\"$optionValue\""
        else
            optionsString *= ",\"$optionName\",$optionValue"
        end
    end
    plotString = "plot(x,y"*",\"$easyOptions\""*optionsString*")"
    MATLAB.eval_string(plotString)
end

function plot(x,y,easyOptions::String)
    MATLAB.@mput x
    MATLAB.@mput y
    optionsString=""
    plotString = "plot(x,y"*",\"$easyOptions\""*")"
    MATLAB.eval_string(plotString)
end

