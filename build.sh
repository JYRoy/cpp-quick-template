compile_image="hub/compile:gcc"

debug=$(1:="DEBUG=false")

root_path=`pwd`
src_path=$root_path/src
output_path=$root_path/bin
mkdir -p $output_path

docker run -it --rm
    -v $root_path:$root_path:rw \
    -v /etc/timezone:/etc/timezone:ro \
    -v /etc/localtime:/etc/localtime:ro \
    $(compile_image) /bin/bash \
    -c "mkdir -p output_path && \
    cd $root_path/src && make $debug -j && chown -R $uid:$uid ./*.o ./*.d
    "
