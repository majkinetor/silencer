# installer trid identifiers: http://mark0.net/soft-trid-deflist.html
# value = silent args, dir arg
@{

#https://msdn.microsoft.com/en-us/library/windows/desktop/aa367988(v=vs.85).aspx
'Microsoft Windows Installer'                       = '/quiet /norestart'

#http://www.jrsoftware.org/ishelp/index.php?topic=setupcmdline
'Inno Setup installer'                              = '/VERYSILENT /SUPPRESSMSGBOXES /SP- /NORESTART /NOCANCEL', '/DIR'

#http://nsis.sourceforge.net/Docs/Chapter3.html
'NSIS - Nullsoft Scriptable Install System'         = '/SD', '/D'

#http://helpnet.flexerasoftware.com/installshield19helplib/helplibrary/IHelpSetup_EXECmdLine.htm
'InstallShield setup'                               = '/s /sms'
}