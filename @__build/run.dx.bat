SET ROM_FILE="Bugs Bunny Crazy Castle 2, The (USA).gb"
SET ROM_FILE_0="Bugs Bunny Crazy Castle 2, The (USA).0.dx.gb"


SET ASM_FILE="@__build/crazy_castle2.dx.asm.txt"

SET PATCH_FILE="dx_basic.ips"



copy %ROM_FILE_0% %ROM_FILE%


armips -definelabel BUILD_LEVEL 1 %ASM_FILE%
rgbfix -fgh %ROM_FILE%


flips --create --exact --ignore-checksum --ips %ROM_FILE_0% %ROM_FILE% %PATCH_FILE%


copy %ROM_FILE% "C:\Roms\sgb\__gb"
pause
