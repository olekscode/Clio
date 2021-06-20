# Clio

[![Build status](https://github.com/olekscode/Clio/workflows/CI/badge.svg)](https://github.com/olekscode/Clio/actions/workflows/test.yml)
[![Coverage Status](https://coveralls.io/repos/github/olekscode/Clio/badge.svg?branch=master)](https://coveralls.io/github/olekscode/Clio?branch=master)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](https://raw.githubusercontent.com/olekscode/Clio/master/LICENSE)

**Clio** is a tool for exploring the history of a project (e.g. getting API entities that were available at a given commit)

In Greek mythology, [Clio](https://en.wikipedia.org/wiki/Clio) is the muse of history.

## How to install it?

To install `Clio`, go to the Playground (`Ctrl+OW`) in your [Pharo](https://pharo.org/) image and execute the following Metacello script (select it and press `Do-it` button or `Ctrl+D`):

```Smalltalk
Metacello new
  baseline: 'Clio';
  repository: 'github://olekscode/Clio/src';
  load.
```

## How to depend on it?

If you want to add a dependency on `Clio` to your project, include the following lines into your baseline method:

```Smalltalk
spec
  baseline: 'Clio'
  with: [ spec repository: 'github://olekscode/Clio/src' ].
```

If you are new to baselines and Metacello, check out the [Baselines](https://github.com/pharo-open-documentation/pharo-wiki/blob/master/General/Baselines.md) tutorial on Pharo Wiki.

## How to use it?


