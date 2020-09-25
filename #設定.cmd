

rem vimのパスを通す方がよいが、レジストリを編集したくないので、C:\windows にシンボリックリンクを張る。
rem Windows 10 v1709 以降、bashを入れられるので、個別にUNIXツールを入れる必要は無いが・・・


rem https://www.kaoriya.net/software/vim/


cd /d "%systemroot%"
mklink  vim.exe  c:\bin64\vim\vim.exe
mklink  vi.exe    c:\bin64\vim\vim.exe

mklink  gvim.exe  c:\bin64\vim\gvim.exe
mklink  gvi.exe    c:\bin64\vim\gvim.exe



