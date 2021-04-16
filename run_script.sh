#!/usr/bin/env bash
#Create environment
bash create_assignment_venv.sh

#Environment name
VENVNAME=as6env

#Activate environment
source $VENVNAME/bin/activate

#Upgrade pip
pip install --upgrade pip

# problems when installing from requirements.txt
test -f requirements.txt && pip install -r requirements.txt

#Change directory to data folder
cd src

#Run the scripts
python LogisticRegression.py $@
python DL_model.py $@

deactivate
echo "build $VENVNAME"
