function plot3(x,y,z,easyOptions::String,options::Dict)
    MATLAB.@mput x
    MATLAB.@mput y
    MATLAB.@mput z
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
    plotString = "plot3(x,y,z"*",\"$easyOptions\""*optionsString*")"
    MATLAB.eval_string(plotString)
end

function plot3(x,y,z,options::Dict)
    MATLAB.@mput x
    MATLAB.@mput y
    MATLAB.@mput z
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
    plotString = "plot3(x,y,z"*optionsString*")"
    MATLAB.eval_string(plotString)
end

function plot3(x,y,z,easyOptions::String)
    MATLAB.@mput x
    MATLAB.@mput y
    MATLAB.@mput z
    plotString = "plot3(x,y,z"*",\"$easyOptions\""*")"
    MATLAB.eval_string(plotString)
end

