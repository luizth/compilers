@echo off

REM Copyright 2020, Gerwin Klein, Régis Décamps, Steve Rowe
REM SPDX-License-Identifier: BSD-3-Clause
REM
REM Please adjust JFLEX_HOME and JFLEX_VERSION to suit your needs
REM (please do not add a trailing backslash)

if not defined JAVA_HOME set JAVA_HOME=C:\Program Files\Java\jdk-22
if not defined JFLEX_HOME set JFLEX_HOME=C:\Users\luizt\AppData\Local\jflex-1.9.1
if not defined JFLEX_VERSION set JFLEX_VERSION=1.9.1

java -Xmx128m -jar "%JFLEX_HOME%\lib\jflex-full-%JFLEX_VERSION%.jar" %*
