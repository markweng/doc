#/bin/bash
cd ./doc/
&& npm config set registry https://registry.npm.taobao.org \
&& npm run install \
&& npm run serve 