#!/bin/bash
# Indique au système que l'argument qui suit est le programme utilisé pour exécuter ce fichier
# En règle générale, les "#" servent à mettre en commentaire le texte qui suit comme ici
echo Adress of the new site
read sitename
echo Title of the new site
read sitetitle
echo Name of the admin user
read adminuser
echo Password of the admin user
read adminpasswd
echo The email address fo r the admin user
read adminemail


wp core install --url=sitename --title=sitetitle --admin_user=adminuser --admin_password=adminpasswd --admin_email=adminemail
echo Installation de WordPress ...

exit 0