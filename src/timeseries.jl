"""
plots a timeseries 
"""
function plot(jl_dateTimes::Array{DateTime},y;options=Dict())
    #Make everything a string
    dateTimeStrings = string.(jl_dateTimes)
    #Not sure if this line is really necessary, but change format to matlab format
    dateTimeStrings = replace.(dateTimeStrings,"T"=>" ")
    lengthDTStrings = length.(dateTimeStrings)
    #Ensure Consistent formatting
    locationsOfShortStrings = findall(lengthDTStrings.==19)
    dateTimeStrings[locationsOfShortStrings].=dateTimeStrings[locationsOfShortStrings].*".000"
    MATLAB.@mput dateTimeStrings
    #Convert to MATLAB DateTime
    MATLAB.eval_string("x = datetime(dateTimeStrings,\"InputFormat\",\"yyyy-MM-dd HH:mm:ss.SSS\")")
    MATLAB.@mput y
    #Plot!
    optionsString = namevaluepairs(options)
    MATLAB.eval_string("plot(x,y"*optionsString*")")
end

"""
plots a timeseries 
"""
function plot(jl_dateTimes::Array{DateTime},y,lineSpec;options=Dict())
    #Make everything a string
    dateTimeStrings = string.(jl_dateTimes)
    #Not sure if this line is really necessary, but change format to matlab format
    dateTimeStrings = replace.(dateTimeStrings,"T"=>" ")
    lengthDTStrings = length.(dateTimeStrings)
    #Ensure Consistent formatting
    locationsOfShortStrings = findall(lengthDTStrings.==19)
    dateTimeStrings[locationsOfShortStrings].=dateTimeStrings[locationsOfShortStrings].*".000"
    MATLAB.@mput dateTimeStrings
    #Convert to MATLAB DateTime
    MATLAB.eval_string("x = datetime(dateTimeStrings,\"InputFormat\",\"yyyy-MM-dd HH:mm:ss.SSS\")")
    MATLAB.@mput y
    #Plot!
    optionsString = namevaluepairs(options)
    MATLAB.eval_string("plot(x,y"*",\"$lineSpec\""*optionsString*")")
end

