# dotfiles

![macos_workflow](https://github.com/apeduru/dotfiles/actions/workflows/dotfiles.yml/badge.svg?branch=master)

## Prerequisites 

## Install

Install dotfiles using this curl

`curl -fsSL https://raw.githubusercontent.com/apeduru/dotfiles/master/install | bash`

## Usage

Run pre-up hooks, symlink dotfiles, and run post-up hooks

`make up`

Symlink dotfiles only

`make sym`

Run pre-down hooks, unsymlink dotfiles, and run post-down hooks

`make down`

List all the symlinks

`make ls`

