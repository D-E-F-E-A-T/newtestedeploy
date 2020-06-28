@echo off

REM Foi necessário criar o arquivo push porque o agendador de tarefas executa no system32 e não dentro da pasta que eu precisava executar
cd "%userprofile%\OneDrive - Processor\Área de Trabalho\newtestedeploy.git" && push.cmd

pause
