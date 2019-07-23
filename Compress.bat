@ECHO OFF

SET Savestamp=%DATE:/=%_%TIME::=%
SET Savestamp=%Savestamp: =%
SET Savestamp=%Savestamp:,=%
SET Savestamp=%Savestamp:.=%

FOR %%F in ("%~1") DO (
	SET Outfile=%%~nF
)

COLOR F1 
mode con: cols=80 lines=30
ECHO Compressing %Outfile% now, please wait...
ECHO.

SET Outfile=C:\TEMP\%Outfile%_Cmprs_%Savestamp%.pdf

"C:\Program Files\gs\gs9.26\bin\gswin64c.exe" -sDEVICE=pdfwrite -dPDFSETTINGS=/screen -dCompatibilityLevel=1.4 -dEmbedAllFonts=true -dSubsetFonts=true -dAutoRotatePages=/None -dColorImageDownsampleType=/Bicubic -dColorImageResolution=50  -dNOPAUSE -dBATCH -dGrayImageDownsampleType=/Bicubic -dGrayImageResolution=50 -dMonoImageDownsampleType=/Bicubic -dMonoImageResolution=50 -sOutputFile="%Outfile%" "%~1"

Pause