# The Moving Pictures Tutorial source

[![Copier](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/copier-org/copier/master/img/badge/badge-grayscale-inverted-border-orange.json)](https://github.com/copier-org/copier)

To build this documentation locally for development purposes, first create your development environment.

```
cd moving_pictures_tutorial
conda env create -n moving-pictures-tutorial --file environment-files/readthedocs.yml
conda activate moving-pictures-tutorial
q2doc refresh-cache
```

Then, use one or more of the following make commands.

Build the book, but don't format or run commands:

```
make fast-preview
```

Build the book, and format but don't run commands:

```
make preview
```

Build the book, formatting and running commands:

```
make html
```
