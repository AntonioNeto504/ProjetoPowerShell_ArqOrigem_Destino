# Script de Automação em PowerShell

Este script automatiza o processo de organização de arquivos, movendo-os de uma pasta de origem para pastas de destino com base em suas extensões.

## Pré-Requisitos

- PowerShell no Windows 10.
- Docker instalado no sistema.

## Configuração dos Caminhos

Antes de executar o script, certifique-se de definir os caminhos corretos das pastas de origem e destino no início do script, conforme necessário.

## Execução do Script PowerShell

1. Abra o prompt do PowerShell.
2. Navegue até o diretório onde o código está armazenado.
3. Execute o script PowerShell digitando o nome do arquivo.
## Resultado

O script moverá os arquivos da pasta de origem para as pastas de destino correspondentes, organizando-os de acordo com suas extensões.

![ExecuçãoCódigo](https://github.com/AntonioNeto504/ProjetoPowerShell_ArqOrigem_Destino/assets/143558933/c5655e9e-e0f6-476a-b3f5-c260622bee91)
## Execução do Docker

1. Certifique-se de ter o Docker instalado em seu sistema. Você pode baixá-lo e instalá-lo a partir do site oficial do Docker.
2. Abra o terminal ou prompt de comando.
3. Navegue até o diretório onde o arquivo Dockerfile está localizado, o qual deve ser o mesmo diretório onde o seu script PowerShell está localizado.
4. Execute o comando `docker build -t nome-da-imagem .`, substituindo "nome-da-imagem" pelo nome que você deseja dar à sua imagem Docker. Este comando construirá a imagem Docker usando as instruções do seu Dockerfile. Certifique-se de incluir o ponto `.` no final para indicar que o Dockerfile está no diretório atual.
5. Após a construção da imagem, você pode executar um contêiner Docker usando o comando `docker run`. Por exemplo, se você quiser executar um contêiner interativo a partir da imagem que acabou de criar, você pode usar o comando `docker run -it nome-da-imagem`.

Certifique-se de que seu Dockerfile e seu script PowerShell estão configurados corretamente para serem executados em um contêiner Docker. Você pode precisar ajustar algumas configurações dependendo do que seu script faz e dos requisitos do seu ambiente Docker.

![Docker](https://github.com/AntonioNeto504/ProjetoPowerShell_ArqOrigem_Destino/assets/143558933/bd39d55e-5eae-41d2-b106-2d81b30b3aed)

Obs: O docker não possui nenhuma interação para com caminhos de pasta, logo o código dara erro caso não haja a configuração de caminhos adquados para rodar num conteiner
