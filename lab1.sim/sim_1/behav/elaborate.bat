@echo off
set xv_path=C:\\Xilinx\\Vivado\\2014.4\\bin
call %xv_path%/xelab  -wto 91a1456cc1ce42bcab5c6d544f4e5b75 -m64 --debug typical --relax -L xil_defaultlib -L secureip --snapshot fa3_behav xil_defaultlib.fa3 -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
