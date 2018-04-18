cp $HOME/abin/AFNI.afnirc $HOME/.afnirc
suma -update_env
cd
curl -O https://afni.nimh.nih.gov/pub/dist/edu/data/CD.tgz
tar xvzf CD.tgz
cd CD
tcsh s2.cp.files . ~
cd ..
rm ./CD.tgz
afni_system_check.py -check_all
