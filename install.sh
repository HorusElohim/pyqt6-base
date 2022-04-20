#! /bin/bash

I='(install): '

DIR_ENV="venv"
if [ -d "$DIR_ENV" ]; then
  ### VENV EXIST ###
  echo "$I Python Virtual Environment is already installed ${DIR_ENV}. [OK]"
else
  ###  VENV NOT exists ###
  echo "$I Python Virtual Environment need to be installed ${DIR_ENV}. [NOK]"
  pushd scripts
    . create_env.sh
  popd
fi

# Sourcing env
source source.sh
# Install Dep
pushd scripts
  . install_dep.sh
popd