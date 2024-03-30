# Define os caminhos das pastas de origem e destino
$origem = "C:\Caminho\da\Pasta\de\Origem"
$destinoTextos = "C:\Caminho\da\Pasta\de\Destino\Textos"
$destinoImagens = "C:\Caminho\da\Pasta\de\Destino\Imagens"
$destinoPDFs = "C:\Caminho\da\Pasta\de\Destino\PDFs"
$destinoOutros = "C:\Caminho\da\Pasta\de\Destino\Outros"


if (-not (Test-Path $destinoTextos)) { New-Item -ItemType Directory -Path $destinoTextos }
if (-not (Test-Path $destinoImagens)) { New-Item -ItemType Directory -Path $destinoImagens }
if (-not (Test-Path $destinoPDFs)) { New-Item -ItemType Directory -Path $destinoPDFs }
if (-not (Test-Path $destinoOutros)) { New-Item -ItemType Directory -Path $destinoOutros }

$arquivos = Get-ChildItem -Path $origem

# Para cada arquivo na pasta de origem
foreach ($arquivo in $arquivos) {
    # Determina a extensão do arquivo
    $extensao = $arquivo.Extension.TrimStart('.')

    switch -Wildcard ($extensao) {
        "*.txt" { Move-Item -Path $arquivo.FullName -Destination $destinoTextos }
        "*.jpg" { Move-Item -Path $arquivo.FullName -Destination $destinoImagens }
        "*.pdf" { Move-Item -Path $arquivo.FullName -Destination $destinoPDFs }
        default { Move-Item -Path $arquivo.FullName -Destination $destinoOutros }
    }
}
