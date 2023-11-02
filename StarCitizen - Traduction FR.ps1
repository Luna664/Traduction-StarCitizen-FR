$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$localization1 = Join-Path $ScriptDir "LIVE"
$localization2 = Join-Path $ScriptDir "PTU"
$localization3 = Join-Path $ScriptDir "TECH-PREVIEW"

function Crédit {
    Write-Host "Script créé par:
-Luna664

Contributeurs:
[>ĈIRKAU<] ∞ Pan

Sources des traductions:
SPEEDOU: https://github.com/SPEED0U/StarCitizenFrenchTranslation
Circuspes: https://traduction.circuspes.fr/download"
}

function Menu {
    Clear-Host
    Crédit
    Write-Host "Traduction de SPEEDOU:"
    Write-Host "1. Traduire la version Live"
    Write-Host "2. Traduire la version PTU"
    Write-Host "3. Traduire la version Tech-Preview (Expérimental)"
    Write-Host "4. Aidé à la traduction"
    Write-Host
    Write-Host "Traduction du Cirque Lisoir"
    Write-Host "5. Traduire la version Live"
    Write-Host "6. Traduire la version PTU"
    Write-Host "7. Traduire la version Tech-Preview (Expérimental)"
    Write-Host "8. Aidé à la traduction"
    Write-Host
    Write-Host "Menu:"
    Write-Host "9. Créer un raccourci sur le bureau"
    Write-Host "10. Quitter"
}

function Create-Shortcut {
    $desktopPath = [System.Environment]::GetFolderPath('Desktop')
    $shortcutFile = Join-Path $desktopPath "StarCitizen - Traduction FR.ps1.lnk"
    $shell = New-Object -ComObject WScript.Shell
    $shortcut = $shell.CreateShortcut($shortcutFile)
    $shortcut.TargetPath = $PSCommandPath
    $shortcut.WorkingDirectory = $ScriptDir
    $shortcut.Save()
    Write-Host "Raccourci créé sur le bureau : $shortcutFile"
}

while ($true) {
    Menu
    $choice = Read-Host "Choisissez une option"
    Switch ($choice) {
        # Traduction SPEEDOU
        '1' {
            Clear-Host
            Write-Host "Traduction de la version Live."
            Write-Host "Vérification de la présence du Live."
            if (-not (Test-Path -Path $localization1 -PathType Container)) {
            Write-Host "La version Live n'a pas été trouvé, Vérifier que le script est placé dans le dossier StarCitizen et que le dossier LIVE s'y trouve, puis recommencé. (Aucune modifications n'a eu lieu)"
            Read-Host "Appuyez sur Entrée pour revenir au menu principal..."
            }
            else {
            Write-Host "Création du fichier user.cfg dans la version Live..."
            Set-Content -Path "$localization1\user.cfg" -Value 'g_language = french_(france)
g_languageAudio = english'
            Write-Host "Création du fichier user.cfg effectuer."
            Write-Host "Création des dossier nécessaire dans la version Live..."
            $liveLocalizationDir = Join-Path $localization1 "data\Localization\french_(france)"
            if (-not (Test-Path -Path $liveLocalizationDir -PathType Container)) {
                New-Item -Path $liveLocalizationDir -ItemType Directory -Force
            }
            Write-Host "Création des dossier effectuer."
            Write-Host "Téléchargement du fichier de traduction dans la version Live..."
            Invoke-WebRequest -Uri "https://raw.githubusercontent.com/SPEED0U/StarCitizenFrenchTranslation/main/global.ini" -OutFile "$liveLocalizationDir\global.ini"
            Write-Host "Téléchargement du dernier fichier de traduction dans la version Live terminé, Vous pouvez maintenant quité et lancé votre jeux, il est recommandé de retéléchargé la traduction de temps en temps pour recevoir la dernière version."
            Read-Host "Appuyez sur Entrée pour revenir au menu principal..."
        }
    }
        '2' {
            Clear-Host
            Write-Host "Traduction de la version PTU."
            Write-Host "Vérification de la présence du PTU."
            if (-not (Test-Path -Path $localization2 -PathType Container)) {
                Write-Host "La version PTU n'a pas été trouvé, Vérifier que le script est placé dans le dossier StarCitizen et que le dossier PTU s'y trouve, puis recommencé. (Aucune modifications n'a eu lieu)"
                Read-Host "Appuyez sur Entrée pour revenir au menu principal..."
            }
            else {
            Write-Host "Création du fichier user.cfg dans la version PTU..."
            Set-Content -Path "$localization2\user.cfg" -Value 'g_language = french_(france)
g_languageAudio = english'
            Write-Host "Création du fichier user.cfg effectuer."

            Write-Host "Création des dossier nécessaire dans la version PTU..."
            $ptuLocalizationDir = Join-Path $localization2 "data\Localization\french_(france)"
            if (-not (Test-Path -Path $ptuLocalizationDir -PathType Container)) {
                New-Item -Path $ptuLocalizationDir -ItemType Directory -Force
            }
            Write-Host "Création des dossier effectuer."
            Write-Host "Téléchargement du fichier de traduction dans la version PTU..."
            Invoke-WebRequest -Uri "https://raw.githubusercontent.com/SPEED0U/StarCitizenFrenchTranslation/main/global.ini" -OutFile "$ptuLocalizationDir\global.ini"
            Write-Host "Téléchargement du dernier fichier de traduction dans la version PTU terminé, Vous pouvez maintenant quité et lancé votre jeux, il est recommandé de retéléchargé la traduction de temps en temps pour recevoir la dernière version."
            Read-Host "Appuyez sur Entrée pour revenir au menu principal..."
        }
    }
        '3' {
            Clear-Host
            Write-Host "Traduction de la version Tech-Preview."
            Write-Host "Vérification de la présence de la Tech-Preview."
            if (-not (Test-Path -Path $localization3 -PathType Container)) {
                Write-Host "La version Tech-Preview n'a pas été trouvé, Vérifier que le script est placé dans le dossier StarCitizen et que le dossier TECH-PREVIEW s'y trouve, puis recommencé. (Aucune modifications n'a eu lieu)"
                Read-Host "Appuyez sur Entrée pour revenir au menu principal..."
            }
            else {
            Write-Host "Création du fichier user.cfg dans la version Tech-Preview..."
            Set-Content -Path "$localization3\user.cfg" -Value 'g_language = french_(france)
g_languageAudio = english'
            Write-Host "Création du fichier user.cfg effectuer."

            Write-Host "Création des dossier nécessaire dans la version Tech-Preview..."
            $techpreviewLocalizationDir = Join-Path $localization3 "data\Localization\french_(france)"
            if (-not (Test-Path -Path $techpreviewLocalizationDir -PathType Container)) {
                New-Item -Path $techpreviewLocalizationDir -ItemType Directory -Force
            }
            Write-Host "Création des dossier effectuer."
            Write-Host "Téléchargement du fichier de traduction dans la version Tech-Preview..."
            Invoke-WebRequest -Uri "https://raw.githubusercontent.com/SPEED0U/StarCitizenFrenchTranslation/main/global.ini" -OutFile "$techpreviewLocalizationDir\global.ini"
            Write-Host "Téléchargement du dernier fichier de traduction dans la version Tech-preview terminé, Vous pouvez maintenant quité et lancé votre jeux, il est recommandé de retéléchargé la traduction de temps en temps pour recevoir la dernière version. Amuse toi bien sur Pyro citoyen(ne) !"
            Read-Host "Appuyez sur Entrée pour revenir au menu principal..."
        }
    }
        '4' {
            Clear-Host
            Write-Host "Merci de contribuer à la traduction, votre aide seras certainement d'une grande aide!"
            Write-Host "Ouverture de la page internet..."
            Start-Process "https://tradsc.nightriderz.world/fr"
            Read-Host "Appuyez sur Entrée pour revenir au menu principal..."
        }
        # Traduction Cirque Lisoir
        '5' {
            Clear-Host
            Write-Host "Traduction de la version Live."
            Write-Host "Vérification de la présence du Live."
            if (-not (Test-Path -Path $localization1 -PathType Container)) {
            Write-Host "La version Live n'a pas été trouvé, Vérifier que le script est placé dans le dossier StarCitizen et que le dossier LIVE s'y trouve, puis recommencé. (Aucune modifications n'a eu lieu)"
            Read-Host "Appuyez sur Entrée pour revenir au menu principal..."
            }
            else {
            Write-Host "Création du fichier user.cfg dans la version Live..."
            Set-Content -Path "$localization1\user.cfg" -Value 'g_language = french_(france)
g_languageAudio = english'
            Write-Host "Création du fichier user.cfg effectuer."
            Write-Host "Création des dossier nécessaire dans la version Live..."
            $liveLocalizationDir = Join-Path $localization1 "data\Localization\french_(france)"
            if (-not (Test-Path -Path $liveLocalizationDir -PathType Container)) {
                New-Item -Path $liveLocalizationDir -ItemType Directory -Force
            }
            Write-Host "Création des dossier effectuer."
            Write-Host "Téléchargement du fichier de traduction dans la version Live..."
            Invoke-WebRequest -Uri "https://traduction.circuspes.fr/download/global.ini" -OutFile "$liveLocalizationDir\global.ini"
            Write-Host "Téléchargement du dernier fichier de traduction dans la version Live terminé, Vous pouvez maintenant quité et lancé votre jeux, il est recommandé de retéléchargé la traduction de temps en temps pour recevoir la dernière version."
            Read-Host "Appuyez sur Entrée pour revenir au menu principal..."
        }
    }
        '6' {
            Clear-Host
            Write-Host "Traduction de la version PTU."

            Write-Host "Vérification de la présence du PTU."
            if (-not (Test-Path -Path $localization2 -PathType Container)) {
                Write-Host "La version PTU n'a pas été trouvé, Vérifier que le script est placé dans le dossier StarCitizen et que le dossier PTU s'y trouve, puis recommencé. (Aucune modifications n'a eu lieu)"
                Read-Host "Appuyez sur Entrée pour revenir au menu principal..."
            }
            else {
            Write-Host "Création du fichier user.cfg dans la version PTU..."
            Set-Content -Path "$localization2\user.cfg" -Value 'g_language = french_(france)
g_languageAudio = english'
            Write-Host "Création du fichier user.cfg effectuer."

            Write-Host "Création des dossier nécessaire dans la version PTU..."
            $ptuLocalizationDir = Join-Path $localization2 "data\Localization\french_(france)"
            if (-not (Test-Path -Path $ptuLocalizationDir -PathType Container)) {
                New-Item -Path $ptuLocalizationDir -ItemType Directory -Force
            }
            Write-Host "Création des dossier effectuer."
            Write-Host "Téléchargement du fichier de traduction dans la version PTU..."
            Invoke-WebRequest -Uri "https://traduction.circuspes.fr/download/global.ini" -OutFile "$ptuLocalizationDir\global.ini"
            Write-Host "Téléchargement du dernier fichier de traduction dans la version PTU terminé, Vous pouvez maintenant quité et lancé votre jeux, il est recommandé de retéléchargé la traduction de temps en temps pour recevoir la dernière version."
            Read-Host "Appuyez sur Entrée pour revenir au menu principal..."
        }
    }
        '7'{
Clear-Host
            Write-Host "Traduction de la version Tech-Preview."
            Write-Host "Vérification de la présence de la Tech-Preview."
            if (-not (Test-Path -Path $localization3 -PathType Container)) {
                Write-Host "La version Tech-Preview n'a pas été trouvé, Vérifier que le script est placé dans le dossier StarCitizen et que le dossier TECH-PREVIEW s'y trouve, puis recommencé. (Aucune modifications n'a eu lieu)"
                Read-Host "Appuyez sur Entrée pour revenir au menu principal..."
            }
            else {
            Write-Host "Création du fichier user.cfg dans la version Tech-Preview..."
            Set-Content -Path "$localization3\user.cfg" -Value 'g_language = french_(france)
g_languageAudio = english'
            Write-Host "Création du fichier user.cfg effectuer."

            Write-Host "Création des dossier nécessaire dans la version Tech-Preview..."
            $techpreviewLocalizationDir = Join-Path $localization3 "data\Localization\french_(france)"
            if (-not (Test-Path -Path $techpreviewLocalizationDir -PathType Container)) {
                New-Item -Path $techpreviewLocalizationDir -ItemType Directory -Force
            }
            Write-Host "Création des dossier effectuer."
            Write-Host "Téléchargement du fichier de traduction dans la version Tech-Preview..."
            Invoke-WebRequest -Uri "https://raw.githubusercontent.com/SPEED0U/StarCitizenFrenchTranslation/main/global.ini" -OutFile "$techpreviewLocalizationDir\global.ini"
            Write-Host "Téléchargement du dernier fichier de traduction dans la version Tech-preview terminé, Vous pouvez maintenant quité et lancé votre jeux, il est recommandé de retéléchargé la traduction de temps en temps pour recevoir la dernière version. Amuse toi bien sur Pyro citoyen(ne) !"
            Read-Host "Appuyez sur Entrée pour revenir au menu principal..."
        }
    }
        '8'{
            Clear-Host
            Write-Host "Merci de contribuer à la traduction, votre aide seras certainement d'une grande aide!"
            Write-Host "Ouverture de la page internet..."
            Start-Process "https://traduction.circuspes.fr/fr/starcitizen"
            Read-Host "Appuyez sur Entrée pour revenir au menu principal..."
        }
    #Menu
        '9'{
            Clear-Host
            Write-Host "Création du raccourci sur le bureau : $shortcutFile"
            Create-Shortcut
            Read-Host "Appuyez sur Entrée pour revenir au menu principal"
        }
        '10'{
            Exit
        }
        default {
            Clear-Host
            Write-Host "Choix invalide, veuillez saisir un chiffre valide."
            Read-Host "Appuyez sur Entrée pour revenir au menu principal..."
        }
    }
}