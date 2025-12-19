#!/bin/bash

count_files() {
    ls -1 | wc -l
}

correct=$(count_files)

echo "Devinez combien de fichiers se trouvent dans le répertoire actuel :"

while true
do
    read guess

    if [[ ! $guess =~ ^[0-9]+$ ]]; then
        echo "Veuillez entrer un nombre valide."
    elif [[ $guess -lt $correct ]]; then
        echo "Trop bas. Réessayez :"
    elif [[ $guess -gt $correct ]]; then
        echo "Trop élevé. Réessayez :"
    else
        echo "Félicitations ! Bonne réponse 🎉"
        break
    fi
done


