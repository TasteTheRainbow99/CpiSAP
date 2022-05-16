@if (@CodeSection == @Batch) @then


@echo off

rem Use %SendKeys% to send keys to the keyboard buffer
set SendKeys=CScript //nologo //E:JScript "%~F0"


timeout /t 4

:x
echo Hello! !
timeout /t 600
	
	%SendKeys% "{ENTER}"
	
goto x
	



goto :EOF

@end

var WshShell = WScript.CreateObject("WScript.Shell");
WshShell.SendKeys(WScript.Arguments(0));


