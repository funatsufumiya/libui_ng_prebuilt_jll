module libui_ng_prebuilt_jll

using Artifacts

function get_artifact_path()
    return artifact"libui_ng_prebuilt_jll"
end

function get_lib_path()
    libui_lib = "libui.so"

    @static if Sys.iswindows()
        libui_lib = "libui.dll"
    elseif Sys.isapple()
        libui_lib = "libui.dylib"
    else
        libui_lib = "libui.so"
    end

    p = joinpath(get_artifact_path(), "lib", libui_lib)
    if isfile(p)
        return p
    else
        return nothing
    end
end

end # module libui_ng_prebuilt_jll