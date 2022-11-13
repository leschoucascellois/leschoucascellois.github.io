# Les Choucas Cellois

## Informations générales

Ce dépôt contient le site Web des Choucas Cellois.

Le site est hébergé par [Github Pages](https://pages.github.com/).

Son adresse publique est [https://www.leschoucascellois.org](https://www.leschoucascellois.org). Cette adresse est en fait redirigée (au niveau DNS) vers [https://leschoucascellois.github.io/](https://leschoucascellois.github.io/).

Ce site est *statique*, ce qui signifie qu'il ne contient que des pages au format HTML et CSS. Cela le rend plus simple, plus rapide. Cela garantit qu'il ne dépose aucun cookie chez les visiteurs, ne collecte aucune donnée personnelle, et ne contient pas de failles de sécurité.

Ces fichiers HTML et CSS sont *construits* à partir de fichiers dans différents formats, décrits dans la partie [Contenu du site](#contenu-du-site) ci-dessous.

Ce processus de construction utilise [Jekyll](https://jekyllrb.com/),
un générateur de sites statiques,
dont voici la
[documentation](https://docs.github.com/en/pages/setting-up-a-github-pages-site-with-jekyll).
Le processus de construction se fait automatiquement chez Github:
par conséquent, pour modifier le site,
vous n'avez pas besoin d'installer Jekyll sur votre machine.
Cela dit, installer Jekyll vous permet de construire le site
et de le pré-visualiser sur votre machine avant de le déployer.
Pour plus d'informations sur l'installation et l'utilisation de Jekyll, consultez la section [Outils](#outils) ci-dessous.

Jekyll propose plusieurs "thèmes", ou plusieurs modèles de sites plus ou moins prêts à l'emploi.
Le thème choisi pour notre site est
[Minimal Mistakes](https://github.com/mmistakes/minimal-mistakes), dont voici la [documentation](https://mmistakes.github.io/minimal-mistakes/docs/configuration/).

## Contenu du site

Le fichier de configuration principal est [_config.yml](_config.yml).
Différents réglages,
dont la configuration de la barre inférieure,
se trouvent dans ce fichier.

La barre supérieure de navigation est configurée dans
[_data/navigation.yml](_data/navigation.yml).

La page principale se trouve dans [index.md](index.md).

L'image animée, ou *bandeau* que l'on trouve sur la page principale, se trouve dans le fichier
[assets/images/bandeaux/animation.webp](assets/images/bandeaux/animation.webp).
Ce fichier est normalement construit à partir des images au format `.jpg` et de leurs légendes au format `.txt` qui se trouvent dans le répertoire [assets/images/bandeaux](assets/images/bandeaux).
Pour plus d'informations, consultez le
[mode d'emploi](assets/images/bandeaux/README.md) situé dans ce répertoire.

Les autres pages du site se trouvent dans
le répertoire [_pages](_pages/).
Chaque page est stockée dans un fichier `.md`.

Les posts de blog se trouvent dans
le répertoire [_posts](_posts/).
Voir par exemple
[_posts/2022-05-29-ardennes.md](_posts/2022-05-29-ardennes.md).
Les images associées se trouvent dans
le répertoire [assets/2022-05-29-ardennes](assets/2022-05-29-ardennes/).

Toutes les images du site (excepté celles associées à un post de blog)
se trouvent dans [assets/images](assets/images/).

L'adresse email de contact des Choucas est indiquée en deux points:
la barre inférieure et la barre supérieure.

## Format des fichiers

Les fichiers `.md` sont au format [kramdown](https://kramdown.gettalong.org/syntax.html), une extension du format [markdown](https://daringfireball.net/projects/markdown/syntax).

De plus, au début de chaque fichier `.md`, on trouve un en-tête au format [YAML](https://docs.fileformat.com/programming/yaml/),
délimité par deux marqueurs `---`. Les informations contenues dans cet en-tête sont lues et interprétées par Jekyll et par le thème Minimal Mistakes.

Pour des utilisations avancées, dans un fichier `.md`, on peut aussi utiliser le langage [Liquid](https://github.com/Shopify/liquid/wiki/Liquid-for-Designers).

## Édition

Le contenu du site peut être modifié soit directement en ligne, soit de façon locale, en modifiant d'abord une copie située sur votre propre machine.

La première méthode peut sembler plus simple mais ne permet pas de pré-visualisation. Dès qu'un changement est effectué et enregistré, il est répercuté sur le site en production. C'est acceptable pour des changements mineurs (par exemple, pour modifier une phrase), mais pour des changements structurels plus profonds, la seconde méthode est recommandée.

### Première méthode: édition directe en ligne

Ouvrez d'abord le [dépôt](https://github.com/leschoucascellois/leschoucascellois.github.io) dans votre navigateur. Ensuite,

* Cliquez sur le nom du fichier que vous souhaitez modifier, par exemple [index.md](https://github.com/leschoucascellois/leschoucascellois.github.io/blob/main/index.md).
* Cliquez sur l'icône *crayon* (située en haut à droite de la page) pour modifier le contenu du fichier.
* Effectuez les changements souhaités.
* Une fois vos changements terminés, dans la partie **Commit changes** située en bas de la page, tapez un titre et une description de vos changements (tous deux à usage interne).
* Si vous souhaitez que vos changements deviennent visibles en production immédiatement, choisissez *commit directly to the main branch*. Sinon, choisissez *create a new branch* et tapez un nom (à usage interne) pour votre nouvelle branche. Dans ce cas, vos changements seront enregistrés mais ne seront pas visibles tant que votre branche n'aura pas été intégrée à la branche principale, nommée *main*.

### Seconde méthode: édition locale sur votre machine

L'outil `git` doit être installé sur votre machine. Dans la suite, nous supposons (espérons) que vous disposez d'une machine sous MacOS. Dans ce cas, `git` est pré-installé; vous n'avez rien à faire pour l'installer.

De plus, vous devez avoir un compte [Github](https://github.com/), et vous devez être membre de l'organisation [leschoucascellois](https://github.com/leschoucascellois). Si ce n'est pas encore le cas, demandez au président du club ou au responsable du site Web de vous envoyer une invitation.

Pour créer une copie locale du dépôt, tapez (dans un terminal) la commande suivante:

```bash
  git clone git@github.com:leschoucascellois/leschoucascellois.github.io.git
```

Cette commande crée sur votre machine un répertoire `leschoucascellois.github.io` dans lequel on trouve tout le contenu du site.

Pour descendre dans ce répertoire, tapez (toujours dans le terminal) la commande suivante:

```bash
  cd leschoucascellois.github.io
```

Vous pouvez ensuite éditer n'importe quel fichier à l'aide d'un éditeur de texte ordinaire, comme [Visual Studio Code](https://code.visualstudio.com/).

À tout moment, pour vérifier quels changements vous avez effectués, vous pouvez taper (toujours dans le terminal) la commande

```bash
  git status
```

qui vous montre une liste des fichiers que vous avez modifiés (ou supprimés, ou renommés, ou ajoutés). Pour plus de détails,
la commande

```bash
  git diff
```

vous indique quels changements vous avez effectués dans chaque fichier.

À tout moment, si vous le souhaitez, vous pouvez pré-visualiser vos changements: voir la partie [Outils](#outils) ci-dessous.

Lorsque vous êtes satisfait de vos modifications, vous pouvez les ajouter à l'historique local (situé sur votre machine) à l'aide des deux commandes suivantes:

```bash
  git add .
  git commit -m "Mes modifs."
```

Ces commandes ajoutent une entrée à l'historique local. Elles ne modifient pas le dépôt public situé sur `github.com`. Pour cela, il faut utiliser `git push` (voir plus bas).

Si au contraire vous n'êtes pas satisfait de vos modifications, vous pouvez les supprimer et revenir au dernier point de l'historique local, à l'aide de la commande suivante:

```bash
  git reset --hard
```

Attention, cette commande *détruit* vos modifications.

Enfin, une fois vos modifications enregistrées dans l'historique local, vous pouvez les rendre publiques (et visibles sur le site en production) via la commande suivante:

```bash
  git push
```

Cette commande envoie les données de votre machine vers `github.com`.

Inversement, si quelqu'un a fait des modifications sur `github.com`, et si vous voulez importer ces modifications sur votre machine, vous pouvez le faire via la commande

```bash
  git pull
```

Pour en savoir plus, consultez la [documentation de git](https://git-scm.com/book/fr/v2) en français. C'est un gros pavé, mais les chapitres 1 et 2 devraient vous suffire.

## Outils

Pour installer Ruby sous MacOS, suivez ces instructions:

```bash
  brew install asdf
  asdf --version
  asdf plugin add ruby
  asdf install ruby latest
  asdf global ruby 3.1.2
  # Faire le nécessaire pour que Ruby soit dans le PATH, par exemple:
  source /usr/local/Cellar/asdf/0.10.2/libexec/asdf.sh
```

Puis, pour installer Jekyll:

```bash
  gem install bundler jekyll
```

Ces outils vous permettent ensuite de construire le site
sur votre propre machine, sans accès à Internet:

```bash
  make serve
```

Une fois le serveur lancé, il vous reste à accéder au site
à l'aide de votre navigateur favori:

```bash
  open http://localhost:4000/
```
