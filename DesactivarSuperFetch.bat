@echo off
chcp 65001 > nul
color 30
title https://github.com/StarkTechRepo

sc config SysMain start=disabled
net stop SysMain
