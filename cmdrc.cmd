@echo off

:: Temporary system path at cmd startup

:: Add to path by command 

:: Commands 
doskey ls      = dir $*
doskey cat     = type $*
doskey cp      = copy $*
doskey clear   = cls
doskey touch   = copy nul $* > nul
doskey cpr     = xcopy $*
doskey grep    = find $*
doskey history = doskey /history
doskey kill    = taskkill /PID $*
doskey man     = help $*
doskey mv      = move $*
doskey ps      = tasklist $*
doskey pwd     = cd
doskey rm      = del $*
doskey rmr     = deltree $*
doskey sudo    = runas /user:administrator $*
doskey ..    = cd ..\$*
doskey ...   = cd ..\..\$*
doskey ....  = cd ..\..\..\$*
doskey ..... = cd ..\..\..\..\$*
doskey new     =start cmd.exe

doskey ~       = cd c:\Users\Tippy
doskey go      = cd c:\Users\Tippy\workspace\

:: Common directories

::DOSKEY box=cd "C:\Users\matthew.cooper\Box SyncS\$*"" 

cowsay -s "suppppp"
