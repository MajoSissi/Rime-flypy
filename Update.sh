#!/bin/sh
wget -O rime-ice.zip https://github.com/iDvel/rime-ice/archive/refs/heads/main.zip

if (( $? != 0 )) 
then 
	rm -rf rime-ice.zip
	echo "[Error] Download Failed!"
	sleep 10
	exit 
fi

unzip rime-ice.zip

files=(cn_dicts en_dicts opencc)
for item in "${files[@]}"
do
    cp -rf ./rime-ice-main/$item .
done

rm -rf rime-ice-main rime-ice.zip

echo "[Info] Update Completed!"
