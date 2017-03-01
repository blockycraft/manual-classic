# Blockycraft Manual
[![License][license-badge]][license-link]
[![Download][download-badge]][download-link]

# Abstract

Blockycraft is a Minecraft inspired world meant to demonstrate specific graphical techniques in an interactive demo application.  Blockycraft is focused on demonstrating techniques such as Perlin Noise, Shadows and Ambient Occlusion, Light Emitting and World Lighting.   The Blockycraft manual was built as part of the documentation for the Blockycraft project.

The Blockycraft manual is meant to explain usage of the interactive demo as opposed to defining the requirements of the project.

## Development

If you are developing on Windows, it is recommended to install the IDE [Texmaker](http://www.xm1math.net/texmaker/), the universal LaTeX editor.  This will ensure that the necessary TexLive packages are installed (or can be installed) as well as enabling development.  

### Building

You can build the image using `latexmk`.  To build with `latexmk`, you can do the following:

```console
latexmk -pdf manual.tex
```

### GitLab CI

This project's manual is built by [GitLab CI](https://about.gitlab.com/gitlab-ci/), following the steps
defined in [`.gitlab-ci.yml`](.gitlab-ci.yml):

```
compile_pdf:
  image: jrbeverly/latex:full
  stage: build
  script:
    - sh build.sh
  only:
    - master
  artifacts:
    paths:
      - manual.pdf
```

## Blockycraft

The Blockycraft project involves an OpenGL C++ interaction demo that can be viewed at [Blockycraft](https://gitlab.com/jrbeverly-blockycraft/blockycraft)

[license-badge]: https://img.shields.io/badge/license-MIT-blue.svg?maxAge=2592000
[license-link]: LICENSE

[download-badge]: https://img.shields.io/badge/artifacts-manual.pdf-red.svg?maxAge=2592000
[download-link]: /../builds/artifacts/master/download?job=compile_pdf