# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What this is

Source of [budovatel.cz](http://budovatel.cz/) — a Jekyll 4.4 static site (Ruby 3.4, pinned in `.ruby-version`), with the minima theme and kramdown, deployed by Netlify on push to `master`. It archives Czech/Slovak socialist-era songs, poems, articles and pictures. All content and UI text is in Czech. There are no tests, linters or CI.

## Commands

```sh
bundle install
bundle exec jekyll serve     # local preview at http://localhost:4000 (restart after editing _config.yml)
bundle exec jekyll build     # output to _site/ (gitignored)
```

The system Ruby on the maintainer's Mac is too old; build in Docker instead:

```sh
docker run --rm -v "$PWD":/srv -w /srv ruby:3.4.8 bash -c 'bundle config set --local path vendor/bundle && bundle install && bundle exec jekyll build'
```

## Architecture

Nearly all work is adding content files; commits are typically just a new `.md` named after the piece.

### Collections (`_config.yml`)

| Folder | Layout | URL | Front matter |
|---|---|---|---|
| `_pisne` (songs) | `pisen` | `/pisen.phtml/:title` | `title`, `music`, `text`, `preklad`, `youtube` |
| `_poezie` (poems) | `poezie` | `/poezie.phtml/:title` | `title`, `autor`, `vydal`, `youtube` |
| `_state` (articles) | `poezie` | `/state.phtml/:title` | `title`, `autor`, `vydal` |
| `_obrazky` (pictures) | `obrazek` | `/obrazky.phtml/:title` | `name`, `autor`, `galery: true` |

- `preklad` may be a YAML list when there are several translators; templates normalize it with `join: "|" | split: "|"`.
- `youtube` is just the video ID (rendered by `_includes/youtube.html`).
- Filenames are ASCII with accents stripped and spaces as `_` (e.g. `Armade_zdar.md`); some older entries are `.html`.
- Song/poem bodies are Markdown where each verse line ends with two trailing spaces to force a line break — preserve them.
- The `*.phtml/index.html` directories are the listing pages (the `.phtml` names preserve URLs from the original PHP site). `autori.phtml` and `vydal.phtml` build author/publisher indexes by collecting the `music`/`text`/`preklad`/`autor`/`vydal` values across collections, so these front-matter values must be spelled identically across entries to group together.

### Static-file matching by filename

Media are linked automatically, not via front matter:

- `_includes/media.html` (used by `pisen`/`poezie` layouts) finds files in `noty/{jpg,midi,mp3,ps,pdf,lylipond}` whose name matches the page id (e.g. `noty/midi/Armade_zdar.midi`, `noty/lylipond/Armade_zdar.ly`). The `_config.yml` defaults tag those folders with flags (`midi: true`, …) that the include filters on. Sheet-music images in `noty/jpg` are `.gif`.
- The `obrazek` layout with `galery: true` shows every file under `img/` whose path contains the page title, displayed with the bundled `unitegallery` jQuery plugin.

### Netlify

`netlify.toml` holds only redirects for renamed pages (keep old URLs working when renaming a content file); build command and publish dir are set in the Netlify UI.
