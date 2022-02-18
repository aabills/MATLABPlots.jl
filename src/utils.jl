#https://discourse.julialang.org/t/meshgrid-function-in-julia/48679/4
function meshgrid(x,y)
    lx = length(x)
    ly = length(y)
    X = x'.*ones(lx)
    Y = ones(ly)'.*y
    return X,Y
end

#Unrolls the dictionary to form name-value pairs of the form 
function namevaluepairs(options)
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
    return optionsString
end

#Unrolls the dictionary to form name-value pairs of the form 
function unroll_kwargs(kwarg_tuple)
    optionsString=""
    for arg in kwarg_tuple
        optionsString *= ",\"$arg\""
    end
    return optionsString
end