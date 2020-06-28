@echo off

REM Foi necessário criar o arquivo push porque o agendador de tarefas executa no system32 e não dentro da pasta que eu precisava executar
start "C:\Users\vinicius.pereira\OneDrive - Processor\Área de Trabalho\newtestedeploy.git" && push.cmd
REM "C:\Users\vinicius.pereira\OneDrive - Processor\Área de Trabalho\newtestedeploy.git\push.cmd"

pause