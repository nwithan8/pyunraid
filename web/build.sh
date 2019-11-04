#/bin/bash
pip install -U sphinx
pip install -e ../.
make -C ../docs html
mkdir public/docs
cp -r ../docs/_build/html public/docs
npm install
brunch build --production
