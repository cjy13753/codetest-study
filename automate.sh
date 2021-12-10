#! /bin/bash

declare -A users 
users["재운"]="https://github.com/woonys/coding__test.git"
users["재현"]="https://github.com/jae-kimSeoul/SWJG_weekly.git"
users["준영"]="https://github.com/cjy13753/algo-solutions.git"
users["혁주"]="https://github.com/huckjoo/swjungle_alg.git"

for user in "${!users[@]}";
do
    if [ -d "$user" ]; then
        cd ${user}
        echo "start git-pulling from ${user}'s remote repository"
        git pull
        cd ..
    else
        echo "start creating directory ${user}"
        mkdir ${user}
        echo "in directory ${user}"
        cd ${user}
        echo "start cloning ${user}'s remote repository"
        git clone "${users[$user]}" .
        echo "out of direcotry ${user}"
        cd ..
    fi
done