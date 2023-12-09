@echo off
chcp 65001 > nul
color 30
title https://github.com/StarkTechRepo

REM Establece el tamaño mínimo del archivo de página en megabytes (recomendado: 4 GB)
REM Nota: Ajusta este valor según tus necesidades, pero evita asignar una cantidad excesiva que pueda causar problemas de espacio en disco. 
set "minPageFileSizeMB=4096"

REM Establece el tamaño máximo del archivo de página como el doble del mínimo
set /a "maxPageFileSizeMB=minPageFileSizeMB * 2"

REM Crea un archivo de página (pagefile.sys) en la unidad C:
wmic pagefileset create name="C:\pagefile.sys"

REM Establece el tamaño inicial del archivo de página
wmic pagefileset where name="C:\pagefile.sys" set InitialSize=%minPageFileSizeMB%

REM Establece el tamaño máximo del archivo de página
wmic pagefileset where name="C:\pagefile.sys" set MaximumSize=%maxPageFileSizeMB%
