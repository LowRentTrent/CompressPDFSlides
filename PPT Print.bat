@ECHO OFF


FOR %%F in ("%~1") DO (
	SET Outfile=%%~nF
)

COLOR F1 
mode con: cols=80 lines=30
ECHO Printing PDF from PPT file to %Outfile% now, please wait...
ECHO.

SET Outfile=C:\TEMP\%Outfile%_Cmprs_%Savestamp%.pdf

"C:\Program Files\Microsoft Office\root\Office16\POWERPNT.EXE" /pt "Microsoft Print to PDF" "" "" "%~1"


Pause