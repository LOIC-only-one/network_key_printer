@echo off
title Wifi_Key_Printer by Teilen 03/06/21
echo Click On "Entry" to continue
pause 
echo Réseaux Enregistre trouves : > pass.txt 
netsh wlan show profiles >> pass.txt 
echo Fichier cree avec succes sur /bureau
set /p s=Entrez le nom du reseaux a choisir:  
netsh wlan show profile %s% key=clear >> pass.txt
echo Pour finir regarde dans le fichier test.txt !
pause 
exit