# Define os caminhos das pastas de origem e destino
$origem = "C:\Origem"
$destinoTextos = "C:\Destino"
$destinoImagens = "C:\Destino\Imagens"
$destinoPDFs = "C:\Destino\PDFs"
$destinoOutros = "C:\Destino\Outros"

# Verifica se as pastas de destino existem e, se não, as cria
if (-not (Test-Path $destinoTextos)) { New-Item -ItemType Directory -Path $destinoTextos -Force }
if (-not (Test-Path $destinoImagens)) { New-Item -ItemType Directory -Path $destinoImagens -Force }
if (-not (Test-Path $destinoPDFs)) { New-Item -ItemType Directory -Path $destinoPDFs -Force }
if (-not (Test-Path $destinoOutros)) { New-Item -ItemType Directory -Path $destinoOutros -Force }

# Obtém a lista de arquivos na pasta de origem
$arquivos = Get-ChildItem -Path $origem

# Para cada arquivo na pasta de origem
foreach ($arquivo in $arquivos) {
    # Determina a extensão do arquivo
    $extensao = $arquivo.Extension.ToLower()

    switch -Wildcard ($extensao) {
        "*.txt" { Move-Item -Path $arquivo.FullName -Destination $destinoTextos }
        "*.jpg" { Move-Item -Path $arquivo.FullName -Destination $destinoImagens }
        "*.pdf" { Move-Item -Path $arquivo.FullName -Destination $destinoPDFs }
        default { Move-Item -Path $arquivo.FullName -Destination $destinoOutros }
    }
}

Write-Host "Arquivos movidos com sucesso!"
