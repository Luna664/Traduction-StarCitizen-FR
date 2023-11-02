# Traduction-StarCitizen-FR
Se repos a pour but d'héberger un script PowerShell pour télécharger la plupart des traductions françaises connues pour Star Citizen, pour le moment seule la traduction de SPEEDOU et du Cirque Lisoir sont disponibles, d'autres traductions seront ajoutées dans le temps.


Si vous souhaitez proposer votre traduction pour qu'elle soit présente dans le script, n'hésitez pas à me contacter via Discord (Luna664) ou de faire un ticket ici: https://github.com/Luna664/Traduction-StarCitizen-FR/issues.

## Installation du script
1. Télécharger le script ``Update.ps1`` ici: https://github.com/Luna664/Traduction-StarCitizen-FR/releases .
2. Déplacer le script dans le dossier ``StarCitizen`` l'emplacement par défaut est: ``C:\Program Files\Roberts Space Industries\StarCitizen``.
3. Faite un clic droit sur le script ``Update.ps1`` et séléctionné ``Exécuter avec PowerShell``.
4. Selectionner l'option 1 pour téléchargé le script principal, puis l'option 3 pour quitter.
5. Faite un clic droit sur ``StarCitizen - Traduction FR.ps1`` puis séléctionné une nouvelle fois ``Exécuter avec PowerShell``, vous pourrez ensuite télécharger la traduction que vous souhaitez.
6. Lancez votre jeux et fly safe citoyen(ne) !

 ⚠️ *Notez qu'il est vivement recommandé de refaire la manipulation à partir de l'étape* ***3*** *pour être sûr d'être à jour, le script peut proposer de nouvelles traductions et les traductions elles même peuvent être mises à jour par leurs créateurs* ⚠️

## Supprimer la traduction
1. Allez dans votre dossier ``StarCitizen`` Le chemin par défaut est: ``C:\Program Files\Roberts Space Industries\StarCitizen``.
2. (Falcultatif) Supprimez les script ``StarCitizen - Traduction FR.ps1`` et ``Update.ps1`` ℹ️ (Note: *Vous pouvez garder les script dans votre dossier ``StarCitizen si vous le souhaiter, cette mannipulation à uniquement pour but de libéré de l'espace disque si jamais vous ne souhaité plus du tout les utilisé, si cette étape est sauté la traduction seras quand même supprimer en suivant les étapes suivante, il est aussi a noté qu'il n'est pas nécessaire de supprimé la traduction pour la mettre à jour, relancé le script est sufisant pour cela.*) ℹ️
3. Allez ensuite dans le dossier de la ou les version que vous avez séléctionné (Par exemple LIVE)
4. Supprimé le fichier ``user.cfg``
5. Allez ensuite dans le dossier ``Data``
6. Supprimer le dossier ``Localization``
7. Lancez votre jeux, il devrais être a nouveau dans son état d'origine, fly safe citoyen(ne).

## Explication des scripts
- Le script ``StarCitizen - Traduction FR.ps1`` est le script principal, c'est celui-ci que vous devrez exécuter pour télécharger les traductions.
- Le script ``Update.ps1`` sert quand à lui uniquement à mettre à jour le script principal, il est recommander de l'exécuter à chaque fois avant d'exécuter le script principal pour être sur d'avoir la dernière version et avoir un choix plus large de traductions. 
