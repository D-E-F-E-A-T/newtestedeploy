@echo off


schtasks /query /tn "NewPush" && cls
if %errorlevel% equ 0 (
    REM Ao Ver essa mensagem acesse seu agendador de terefas para alterar configurações
    REM Reexecutar o script vai sobreescrever as configurações
    msg /w * Tarefa GitAutoPush sera executada ! && schtasks /run /tn "NewPush"
    exit
) else (
    msg /w * Tarefa GitAutoPush ainda nao criada ! && goto criatarefa 

)


:criatarefa
echo "Escolha o horario para definir o deploy automatico."
echo "Exemplo 10:30, 19:00 ou a hora que achar melhor"
echo "O horario deve ser acertivo pois ira agendar assim que executado"
echo.
set /p hora=Horario^>
REM Ao executar esse comando  o agendamento vai executar o script todos os dias nesse horário
schtasks /create /sc daily /tn "NewPush" /tr "%cd%\cron.cmd" /st %hora%
msg /w * Tarefa criada: %hora%


REM "GitAutoPush" 
pause