#!/bin/sh

BOLD="\033[1m"
NORMAL="\033[0m"

echo "${BOLD}Build release zxing-cpp...${NORMAL}\n"

cd zxing-cpp/wrappers/ios
./build-release.sh

echo "\n${BOLD}Compress ZXingCpp.xcframework...${NORMAL}"
zip -r ZXingCpp.xcframework.zip ZXingCpp.xcframework

echo "\n${BOLD}Compute ZXingCpp.xcframework.zip checksum...${NORMAL}"
swift package compute-checksum ZXingCpp.xcframework.zip

mv ZXingCpp.xcframework.zip ../../../
echo "\n${BOLD}Success!${NORMAL}"