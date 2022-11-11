# Les Choucas Cellois

## Informations générales

Ceci est le site Web des Choucas Cellois.

Le site est hébergé par Github Pages.

La construction du site utilise Jekyll
([documentation](https://docs.github.com/en/pages/setting-up-a-github-pages-site-with-jekyll)).

Le thème choisi est
[Minimal Mistakes](https://github.com/mmistakes/minimal-mistakes).

## Contenu du site

Le fichier de configuration principal est [_config.yml](_config.yml).

La barre de navigation est configurée dans
[_data/navigation.yml](_data/navigation.yml).

La page principale se trouve dans [index.md](index.md).

Les autres pages du site se trouvent dans
le répertoire [_pages](_pages/).

Les posts de blog se trouvent dans
le sous-répertoire [_posts](_posts/).
Voir par exemple
[_posts/2022-05-29-ardennes.md](_posts/2022-05-29-ardennes.md).
Les images associées se trouvent dans
le répertoire [assets/2022-05-29-ardennes](assets/2022-05-29-ardennes/).

Les images (autres que celles associées à un post de blog)
se trouvent dans [assets/images](assets/images/).

La construction du bandeau principal se fait dans
[assets/images/bandeaux](assets/images/bandeaux/).

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
