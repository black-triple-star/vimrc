@echo off
cls

rem echo %~dp0
rem echo "%1"

rem gVim をタブエディタ風にする！
rem https://www.mk-mode.com/octopress/2012/06/04/04002036/
rem 但し、ファイル名にスペースが入ってると、スペースでファイル名が区切られるので、開けない()
rem 二重引用符で括ってると駄目、引用符を外すと平気
rem start /b %~dp0\gvim.exe -p  --remote-tab-silent  "%1"

rem 但し、ディレクトリ名に#が入っている場合、\マークが消える（エスケープされるようだ）ので、開けない
rem ファイル名に#が入っている場合は読める
rem start /b %~dp0\gvim.exe -p  --remote-tab-silent  %1


rem \ を / に変換すればコマンドプロンプト上では動作するが、cmdファイル上で実行すると動作しない
set FN=%1
set FN=%FN:\=/%
set FN=%FN:#=\#%
echo %FN%
rem これは動作しない。（コマンドプロンプト上でコピペすると動作するが）
rem start /b %~dp0\gvim.exe -p  --remote-tab-silent  %FN%
rem 

rem これも動作しない。
echo %~dp1
echo %~nx1

cd /d %~dp1
echo %cd%
start /b %~dp0\gvim.exe -p  --remote-tab-silent  .\%~nx1

pause
