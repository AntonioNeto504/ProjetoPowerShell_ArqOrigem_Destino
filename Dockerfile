# Use a imagem oficial do PowerShell
FROM mcr.microsoft.com/powershell:latest

# Copie o script para o contêiner
COPY ScriptPw.ps1 /scripts/

# Execute o script ao iniciar o contêiners
CMD ["pwsh", "-File", "/scripts/ScriptPw.ps1"]