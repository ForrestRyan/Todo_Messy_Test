#! /bin/bash


# get current absolute path
current_path=$(cd "$(dirname "$0")"; pwd)

# print current path
echo "current path: $current_path"

cd $current_path/prj

prj_list=(
    "linux_cmake_spdlog_Test"
    "linux_cmake_gtest_Test"
    "linux_cmake_cJSON_Test"
    "linux_cmake_Json11_Test"
)

for prj in ${prj_list[@]}; do
    echo "********************** [$prj] Start... ********************"
    cd $current_path/prj/$prj
    ./build.sh
    cd $current_path
    echo "********************** [$prj] Done! ***********************"
    read -p "Press any key to continue..."
done
echo "All build Done!"
# read -p "Press any key to continue..."