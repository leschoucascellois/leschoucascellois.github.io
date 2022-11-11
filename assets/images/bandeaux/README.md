# Bandeau animé

On trouve dans ce répertoire `assets/images/bandeaux` les images qui
servent à former le bandeau animé qui est utilisé ensuite pour toutes
les pages du site, dont la page principale.

Pour chaque image, il faut deux fichiers: un fichier `mon-image.jpg`
contenant l'image et un fichier `mon-image.txt` contenant le titre
que l'on veut sur-imprimer sur l'image.

La résolution de chaque image doit être 2048x900 pixels.

À partir de ces fichiers image et texte, le fichier `animation.webp`
est créé automatiquement. Il suffit pour cela de taper `make`. Voir
le fichier [Makefile](Makefile) pour plus de détails.

Ce processus nécessite que les programmes `magick`, `cwebp` et `webpmux`
soient installés. Pour les installer, sous MacOS, tapez `brew install magick
webp`.
