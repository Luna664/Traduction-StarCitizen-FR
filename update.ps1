$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
function Show-Menu {
    Clear-Host
    Write-Host "1. Télécharger le script"
    Write-Host "2. Créer un raccourci sur le bureau"
    Write-Host "3. Quitter"
}

function Create-Shortcut {
    # Crée un raccourci vers le script PowerShell sur le bureau
    $desktopPath = [System.Environment]::GetFolderPath('Desktop')
    $shortcutFile = Join-Path $desktopPath "Update StarCitizen - Traduction FR.ps1.lnk"
    $shell = New-Object -ComObject WScript.Shell
    $shortcut = $shell.CreateShortcut($shortcutFile)
    $shortcut.TargetPath = $PSCommandPath
    $shortcut.WorkingDirectory = $ScriptDir  # Spécifiez le répertoire de travail ici
    $shortcut.Save()
    Write-Host "Raccourci créé sur le bureau : $shortcutFile"
}

while ($true) {
    Show-Menu
    $choice = Read-Host "Choisissez une option"

    switch ($choice) {
        '1' {
            Clear-Host
            Write-Host "Téléchargement du script en cours..."
            Invoke-WebRequest -Uri "https://raw.githubusercontent.com/Luna664/Traduction-StarCitizen-FR/main/StarCitizen%20-%20Traduction%20FR.ps1" -OutFile "$ScriptDir\StarCitizen - Traduction FR.ps1"

            Write-Host "Téléchargement du script terminé."
            Read-Host "Appuyez sur Entrée pour continuer..."
            }

        '2' {
            Clear-Host
            Write-Host "Création du raccourci sur le bureau : $shortcutFile"
            Create-Shortcut
            Read-Host "Appuyez sur Entrée pour continuer..."
        }

        '3' {
            Exit
            }

        default {
            Clear-Host
            Write-Host "Choix invalide. Veuillez choisir une option valide."
            Read-Host "Appuyez sur Entrée pour continuer..."
        }
    }
}