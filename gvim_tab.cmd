@echo off
cls

rem echo %~dp0
rem echo "%1"

rem gVim ���^�u�G�f�B�^���ɂ���I
rem https://www.mk-mode.com/octopress/2012/06/04/04002036/
rem �A���A�t�@�C�����ɃX�y�[�X�������Ă�ƁA�X�y�[�X�Ńt�@�C��������؂���̂ŁA�J���Ȃ�()
rem ��d���p���Ŋ����Ă�ƑʖځA���p�����O���ƕ��C
rem start /b %~dp0\gvim.exe -p  --remote-tab-silent  "%1"

rem �A���A�f�B���N�g������#�������Ă���ꍇ�A\�}�[�N��������i�G�X�P�[�v�����悤���j�̂ŁA�J���Ȃ�
rem �t�@�C������#�������Ă���ꍇ�͓ǂ߂�
rem start /b %~dp0\gvim.exe -p  --remote-tab-silent  %1


rem \ �� / �ɕϊ�����΃R�}���h�v�����v�g��ł͓��삷�邪�Acmd�t�@�C����Ŏ��s����Ɠ��삵�Ȃ�
set FN=%1
set FN=%FN:\=/%
set FN=%FN:#=\#%
echo %FN%
rem ����͓��삵�Ȃ��B�i�R�}���h�v�����v�g��ŃR�s�y����Ɠ��삷�邪�j
rem start /b %~dp0\gvim.exe -p  --remote-tab-silent  %FN%
rem 

rem ��������삵�Ȃ��B
echo %~dp1
echo %~nx1

cd /d %~dp1
echo %cd%
start /b %~dp0\gvim.exe -p  --remote-tab-silent  .\%~nx1

pause
