#!/usr/bin/env bash

#Set DevEnv variables
export DEVENV="$HOME/DevEnv"
export DEVCONFIG="$DEVENV/config"

# Set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# Add DevEnv Scripts to PATH
#if [ -d "$DEVENV/scripts/" ] ; then
#    PATH="$DEVENV/scripts/:$PATH"
#fi

## Set PATH so it includes ZSH_HOME bin
#if [ -d "$ZSH_HOME/bin" ] ; then
#    PATH="$ZSH_HOME/bin:$PATH"
#fi

# Load Scripts
#PATH="$DEVENV/scripts:$PATH"
. $DEVENV/scripts/functions

# Load functions
#. $DEVENV/functions

# Set configs
. $DEVCONFIG/aliases

# Load ZSH Config
. $DEVCONFIG/zsh/zshconfig