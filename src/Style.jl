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

function setgcf(options::Dict)
    optionString = namevaluepairs(options)
    MATLAB.eval_string("set(gca $optionString)")
end

function printgcf(kwargs...)
    str = ""
    ops = unroll_kwargs(kwargs)
    MATLAB.eval_string("print(gcf $ops)")
end

function xlim(vec)
    MATLAB.eval_string("xlim($vec)")
end

function ylim(vec)
    MATLAB.eval_string("ylim($vec)")
end

function axes(;options=Dict())
    optionString = namevaluepairs(options)
    MATLAB.eval_string("axes($optionString)")
end

function axes(n;options=Dict())
    optionString = namevaluepairs(options)
    MATLAB.eval_string("axes($n,$optionString)")
end

function colormap(map)
    MATLAB.@mput map
    MATLAB.eval_string("colormap($map)")
end

function xticklabels(labels)
    MATLAB.@mput labels
    MATLAB.eval_string("xticklabels($labels)")
end

function yticklabels(labels)
    MATLAB.@mput labels
    MATLAB.eval_string("yticklabels($labels)")
end

function xticks(ticks)
    MATLAB.@mput ticks
    MATLAB.eval_string("xticks($ticks)")
end

function yticks(ticks)
    MATLAB.@mput ticks
    MATLAB.eval_string("yticks($ticks)")
end

function xtickangle(angle)
    MATLAB.@mput angle
    MATLAB.eval_string("xtickangle($angle)")
end

function ytickangle(angle)
    MATLAB.@mput angle
    MATLAB.eval_string("ytickangle($angle)")
end

function box_on()
    MATLAB.eval_string("box on")
end

function box_off()
    MATLAB.eval_string("box off")
end

function text(x,y,str;options=Dict())
    MATLAB.@mput x
    MATLAB.@mput y
    MATLAB.@mput str
    optionString = namevaluepairs(options)
    MATLAB.eval_string("text($x,$y,$str $optionString)")
end

function legend_box_off()
    MATLAB.eval_string("legend boxoff")
end

function legend_box_on()
    MATLAB.eval_string("legend boxon")
end

function colorbar_on()
    MATLAB.eval_string("colorbar")
end

function colorbar_off()
    MATLAB.eval_string("colorbar('off')")
end
