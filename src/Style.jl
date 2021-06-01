function legend(list_of_names::Array{String,1};options=Dict())
    optionString = namevaluepairs(options)
    str = string(list_of_names)
    MATLAB.eval_string("legend($str"*optionString*")")
end

function title(t::String;options=Dict())
    optionString = namevaluepairs(options)
    MATLAB.eval_string("title(\"$t\""*optionString*")")
end

function xlabel(t::String;options=Dict())
    optionString = namevaluepairs(options)
    MATLAB.eval_string("xlabel(\"$t\""*optionString*")")
end

function ylabel(t::String;options=Dict())
    optionString = namevaluepairs(options)
    MATLAB.eval_string("ylabel(\"$t\""*optionString*")")
end

function zlabel(t::String;options=Dict())
    optionString = namevaluepairs(options)
    MATLAB.eval_string("zlabel(\"$t\""*optionString*")")
end

function setgca(options::Dict)
    optionString = namevaluepairs(options)
    MATLAB.eval_string("set(gca $optionString)")
end