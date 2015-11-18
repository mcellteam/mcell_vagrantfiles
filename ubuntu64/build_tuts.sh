#!/bin/bash

set -e

pip3 install --user virtualenv

git clone https://github.com/mcellteam/mcell_qrg
cd mcell_qrg
python3 -m virtualenv .
source bin/activate
pip3 install -r requirements.txt
make latexpdf
deactivate
cd ..

git clone https://github.com/mcellteam/cellblender_tutorials
cd mcell_qrg
python3 -m virtualenv .
source bin/activate
pip3 install -r requirements.txt
make latexpdf
make html
deactivate
cd ..
