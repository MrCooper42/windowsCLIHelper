adding persistant alias 
in cmd
1:
```mkdir Bin & echo "So Cool!" > c:\users\********YOURUSERNAMEHERE******\Bin\cmdrc.cmd```
2:make sure to add your own user name in the last bit after c:/
```reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Command Processor" /v "Autorun" /d "\"c:\Users\**************YOURUSERNAMEHERE***************\Bin\cmdrc.cmd\""```
3: open up your cmdrc.cmd file in an editor to add your own alias start with pasting in something like  (change your own path where my \matthew.cooper\development\BenefitPointDev\ is
```echo "Matt is awesome sauce!"
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
doskey new     = start cmd.exe

doskey ~       = cd c:\Users\matthew.cooper
doskey go      = cd c:\Users\matthew.cooper\development\BenefitPointDev\
doskey mci     = mvn clean install -P wldev
doskey mcia    = cd c:\Users\matthew.cooper\development\BenefitPointDev ^&^& mvn clean install -P wldev
doskey startserver = cd c:\Users\matthew.cooper\development\BenefitPointDev\ui ^&^& start cmd.exe /k grunt server ^&^& cd c:\Users\matthew.cooper\development\BenefitPointDev\weblogic\dev\bin ^&^& startWebLogic.cmd 
doskey startwork = cd c:\Users\matthew.cooper\development\BenefitPointDev ^&^& mvn clean install -P wldev ^&^& cd c:\Users\matthew.cooper\development\BenefitPointDev\ui ^&^& start cmd.exe /k grunt server ^&^& cd c:\Users\matthew.cooper\development\BenefitPointDev\weblogic\dev\bin ^&^& startWebLogic.cmd

:: Common directories

::DOSKEY box=cd "C:\Users\matthew.cooper\Box SyncS\$*"" 
```