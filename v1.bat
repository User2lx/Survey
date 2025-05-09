@echo off
title Survey

echo Welcome to the Survey. Are you ready to begin?...
echo (Don't worry, it's completely safe...) 
echo.
pause

:: Ask creepy questions
set /p name="What is your full name? "
echo Name: %name% >> survey_results.txt

set /p age="How old are you? "
echo Age: %age% >> survey_results.txt

set /p location="Where are you located right now? "
echo Location: %location% >> survey_results.txt

set /p question="Do you hear someone knocking at the door? (yes/no) "
echo Knocking: %question% >> survey_results.txt

set /p fear="On a scale from 1 to 10, how scared are you right now? "
echo Fear level: %fear% >> survey_results.txt

set /p question="Would you like to hear a story? (yes/no) "
echo Story: %question% >> survey_results.txt

echo.
echo **Thank you for completing the survey...**

:: Self-destruct countdown
echo.
echo WARNING: Self Destructing in 10.00
timeout /t 8 /nobreak

:: Create the text file before shutdown (on their desktop)
echo Just a joke lol > "%USERPROFILE%\Desktop\self_destruct_message.txt"

:: Shutdown with a brief delay
shutdown /s /f /t 2

