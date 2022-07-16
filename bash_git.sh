#!/bin/bash
echo "Введите ваш комментарий"
read message
git add .
git commit -m"${message}"
if [ -n "$(git status - porcelain)" ];
then
  echo "ЧИСТО"
  else
    git status
    echo "Pushing data to remove server!!!"
    git push -u origin
fi




