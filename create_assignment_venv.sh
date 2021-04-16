#!/usr/bin/env bash

VENVNAME=as6env

python3 -m venv $VENVNAME
source $VENVNAME/bin/activate
pip install --upgrade pip

test -f requirements.txt && pip install -r requirements.txt 
#Download en_core_web nlp
python -m spacy download en_core_web_sm


deactivate
echo "build $VENVNAME"



