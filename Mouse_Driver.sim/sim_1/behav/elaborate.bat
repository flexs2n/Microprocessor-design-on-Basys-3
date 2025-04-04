@echo off
set xv_path=C:\\Vivado\\2015.2\\bin
call %xv_path%/xelab  -wto 0e4951a581144f4cb234cefb020ddc35 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot Top_TB_behav xil_defaultlib.Top_TB xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
