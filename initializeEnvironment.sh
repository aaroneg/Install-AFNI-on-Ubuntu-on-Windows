echo "export DISPLAY=:0.0" >> ~/.bashrc
echo "setenv DISPLAY :0.0" >> ~/.cshrc
sudo apt-get update
sudo apt-get install -y tcsh xfonts-base python-qt4       \
                        gsl-bin netpbm gnome-tweak-tool   \
                        libjpeg62 xvfb xterm vim curl     \
                        gedit evince                      \
                        libglu1-mesa-dev libglw1-mesa     \
                        libxm4 build-essential            \
                        gnome-terminal nautilus           \
                        gnome-icon-theme-symbolic         \
                        libcurl4-gnutls-dev
cd
curl -O https://afni.nimh.nih.gov/pub/dist/bin/linux_ubuntu_16_64/@update.afni.binaries
tcsh @update.afni.binaries -package linux_ubuntu_16_64  -do_extras
