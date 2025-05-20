@ECHO OFF
REM ****************************************************************************************
REM **
REM ** The purpose of this script is to get fsh working with FHIR STU3 (normally it only supports R4)
REM ** The running of fsh (sushi) has been decoupled from the running of the IG publisher tool
REM ** (This has been done by putting fsh in a separate "fsh-tank", not the standard folders that sushi creates)
REM **
REM ** This script puts it all back together again:
REM **  - Runs sushi
REM **  - ===> Runs a custom script that adjusts the R4 fsh outputs to be STU3 compatible
REM **  - Copies the resulting structure definitions etc into the input folder to drive the IG publisher
REM **  - Runs the IG Publisher tool (this supports any FHIR version, given the correct inputs)
REM **
REM ****************************************************************************************
SET original_cd=%CD%

cd scripts\tweak-website
call npm install

cd %original_cd%

ECHO Running the publisher tool

call "%CD%\_genonce"


REM Here we call a script that tweaks the website to hide UKCore content
ECHO .
ECHO .
call node "%CD%\scripts\tweak-website"


