# libui_ng_prebuilt_jll

## Develop

see https://github.com/funatsufumiya/libui_ng_prebuilt_jll_packager.jl

## Check

```julia
julia> using ArtifactUtils

julia> import Pkg; path = Pkg.ensure_artifact_installed("libui_ng_prebuilt_jll", "Artifacts.toml")
"C:\\Users\\xxx\\.julia\\artifacts\\4c60793c0d54666de9b276d5cd7a07c619fea6a0"

julia> path
"C:\\Users\\xxx\\.julia\\artifacts\\4c60793c0d54666de9b276d5cd7a07c619fea6a0"

julia> readdir(path)
3-element Vector{String}:
 "include"
 "lib"
 "share"

julia> readdir(joinpath(path, "lib"))
1-element Vector{String}:
 "libui.dll"
```