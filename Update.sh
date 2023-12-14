#!/bin/sh
wget -O rime-ice.zip https://github.com/iDvel/rime-ice/archive/refs/heads/main.zip
if (( $? != 0 )) 
then 
	rm -rf rime-ice.zip
	echo "[Error] Download Failed!"
	sleep 5
	exit 
fi
unzip rime-ice.zip
cp -rf ./rime-ice-main/cn_dicts .
cp -rf ./rime-ice-main/en_dicts .
cp -rf ./rime-ice-main/opencc .
rm -rf rime-ice-main rime-ice.zip

wget -O aux-code.zip https://github.com/HowcanoeWang/rime-lua-aux-code/archive/refs/heads/main.zip
if (( $? != 0 )) 
then 
	rm -rf aux-code.zip
	echo "[Error] Download Failed!"
	sleep 5
	exit 
fi
unzip aux-code.zip
cp -rf ./rime-lua-aux-code-main/lua/aux_code.lua ./lua/aux_code
cp -rf ./rime-lua-aux-code-main/lua/flypy_full.txt ./lua/aux_code
rm -rf rime-lua-aux-code-main aux-code.zip
