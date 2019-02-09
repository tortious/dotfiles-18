#!/usr/bin/env sh

# the path to this script (resolving symbolic links)
script_path=$(readlink -f $0)
# the name of this script (for display purposes)
script_basename=${script_path##*/}

# the dir that is used to find all of the config files
# here, the parent dir of this script
config_dir=${script_path%/*}

# the distination for all the config files
dest=$config_dir/alacritty.yml

# Display path of sourced file to stdout and then
# add that file to the end of the desination file
# ARGS:
#      1: The path to the sourced file
source_file() {
    echo "Sourcing $1"
    cat $1 >>$dest
}

# reset config file
echo "# This config was autogenerated by $script_basename" >$dest

# source every arbitrary configuration layer
for config in $(find $config_dir/layers -name '*.yml'); do
    source_file $config
done
