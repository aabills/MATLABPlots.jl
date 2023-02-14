# MATLABPlots.jl

This package plots Julia variables in matlab. 


# Installation

You can install MATLABPlots.jl by using [Julia's package management system](https://docs.julialang.org/en/v1/stdlib/Pkg/). For now, MATLABPlots is not registered in the Julia General package registry, meaning it can be installed via the github link by typing `Pkg.add(https://github.com/abillscmu/MATLABPlots.jl)`. MATLABPlots is just a collection of functions running on [MATLAB.jl](https://github.com/JuliaInterop/MATLAB.jl), and thus has the restrictions of MATLAB.jl and requires an installation of MATLAB. 


# Usage and documentation
Docs are a work in progress, but usage is almost identical to MATLAB's. A basic plotting command might be:

```
x = rand(100)
y = rand(100)
plot(x,y)
```

To customize the line, just like in MATLAB, one can pass as a third argument (or 4th for a 3d plot) a string corresponding to the same customizations as MATLAB. For example, to plot a series of red plus signs using the same x and y as above:

```
plot(x,y,"r+")
```


One key difference is that rather than using MATLAB's infamous name-value pairs, MATLABPlots takes as an optional keyword argument of options, which is a dictionary with the keys corresponding to names and the values corresponding to values in MATLAB. For example, to plot x and y with a marker size of one:

```
options = Dict("MarkerSize"=>1)
plot(x,y,"r+",options=options)
```

MATLABPlots also contains most of the figure handling capabilities of MATLAB such as `figure(1)` and `clf()`, as well as axis labels, titles, and methods for customizing the `gcf` and `gca` objects. MATLAB's `set(gca,...)` can be accomplished via the `setgca()` function and `set(gcf,...)` via the `setgcf()` function. Again, name-value pairs are accomplished via a dictionary of options. All options are the same as in the MATLAB documentation.

`hold on` and `grid on` can be accomplished via `hold_on()` and `grid_on()` functions provided by MATLABPlots.

Saving can be accomplished via the `printgcf(kwargs...)` function which is identical in syntax to MATLAB's `print(gcf,...)` or via the `saveas` function. 


# Contributing

If you would like to have a feature added, please open an issue or a PR. MATLABPlots does not contain a comprehensive collection of MATLAB's plotting capabilities, and we're open to adding anything that we're missing.
