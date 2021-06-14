function jlang {
    local launch_dir=$(pwd)
    pushd ${JLANG_DIR:-${GIT:-$HOME/git}/jlang} > /dev/null
    make
    popd > /dev/null
}
