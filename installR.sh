export R_LIBS=$HOME/R
mkdir $R_LIBS
echo 'export R_LIBS=$HOME/R' >> ~/.bashrc
curl -O https://afni.nimh.nih.gov/pub/dist/src/scripts_src/@add_rcran_ubuntu.tcsh
sudo tcsh @add_rcran_ubuntu.tcsh
rPkgsInstall -pkgs ALL
