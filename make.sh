#!/bin/zsh

rm -r dist 
rm -r src/dcoded.egg-info
echo "[project]\nname = 'dcoded'\nversion = '${1}'\nauthors = [\n{ name = 'Dylan Rogers', email = 'opendylan@proton.me' },\n]\ndescription = 'dcoded - the Python package for everything'\nreadme = 'README.md'\nrequires-python = '>=2.0'\nclassifiers = [\n	'Programming Language :: Python',\n	'License :: OSI Approved :: MIT License',\n	'Operating System :: OS Independent',\n]\n\n[project.urls]\n'Homepage' = 'https://github.com/dylanopen/dcoded-python'\n'Bug Tracker' = 'https://github.com/dylanopen/dcoded-python/issues'" > pyproject.toml
mkdir "v/${1}"
cp -r . "v/${1}"
cd v/$1
python3 -m build
python3 -m twine upload --repository pypi v/$1/dist/* --username __token__ --password pypi-AgEIcHlwaS5vcmcCJDk1ODcyNGEzLTA0YWYtNGM0My1hMzQ0LWI3M2EwOWMwZmRiZgACKlszLCIzNWQwNjUyNi0yZWQwLTQ2YTAtODI4Ny04N2Q2OWU5ZjQzYTUiXQAABiCoAbYCmyeQrCGUSF_I1LBuHFcbS51ARMzlB212d-h_Qg
git add .
git commit -m "{$1}"
git push origin master
pip install --upgrade dcoded
pip install --upgrade dcoded