# Install script for OSPREY's RESISTOR Protocol
#================================
# create files 
touch $HOME/install_osprey1.sh
touch $HOME/install_osprey2.sh
touch $HOME/install_osprey3.sh
#==========================
# code for install 1
echo "
# installs JAVA, conda
# ===============
mkdir software
cd software
echo 'Downloading openjdk-17.0.2'
wget -q https://download.java.net/java/GA/jdk17.0.2/dfd4a8d0985749f896bed50d7138ee7f/8/GPL/openjdk-17.0.2_linux-x64_bin.tar.gz
echo 'Extracting openjdk-17.0.2'
tar -xf openjdk-17.0.2_linux-x64_bin.tar.gz
rm openjdk-17.0.2_linux-x64_bin.tar.gz
touch \$HOME/.bash_profile
echo 'export JAVA_HOME=\$HOME/software/jdk-17.0.2' >> \$HOME/.bash_profile
echo 'export PATH=\$PATH:\$JAVA_HOME/bin' >> \$HOME/.bash_profile
echo '' >> \$HOME/.bash_profile
source \$HOME/.bash_profile
echo ''
echo \$JAVA_HOME
java -version
echo ''
echo 'Downloading Miniconda'
wget -q https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
sh Miniconda3-latest-Linux-x86_64.sh
rm Miniconda3-latest-Linux-x86_64.sh
echo 'export PATH="\$HOME/software/miniconda3/bin:\$PATH"' >> \$HOME/.bash_profile
echo '' >> \$HOME/.bash_profile
source \$HOME/.bash_profile
echo ''
echo 'Completed RESISTOR install 1. Please restart your shell and run install_osprey2.sh'
" > install_osprey1.sh
#===================================
# code for install 2
echo "
# installs conda setup, AmberTools
# ===========
echo 'Beginning Part 2 of RESISTOR Installation'
echo 'Estimated install time: 10 minutes'
echo ''
conda config --set auto_activate_base false
source software/miniconda3/etc/profile.d/conda.sh # Need to run everytime to activate conda after reboot
conda create --name AmberTools22
conda activate AmberTools22
conda install -c conda-forge ambertools=22 compilers
	# Follow instructions
antechamber -h
cd software
wget https://julialang-s3.julialang.org/bin/linux/x64/1.8/julia-1.8.5-linux-x86_64.tar.gz
tar -xf julia-1.8.5-linux-x86_64.tar.gz
rm julia-1.8.5-linux-x86_64.tar.gz
echo 'export JULIA_HOME=\$HOME/software/julia-1.8.5' >> \$HOME/.bash_profile
echo 'export PATH=\$PATH:\$JULIA_HOME/bin' >> \$HOME/.bash_profile
echo '' >> \$HOME/.bash_profile
source \$HOME/.bash_profile
echo 'Completed RESISTOR install 2. Please restart your shell and run install_osprey3.sh'
" > install_osprey2.sh
#========================================
#code for install 3
echo "
# Installs OSPREY
# ======================
echo 'Beginning Part 3 of RESISTOR Installation'
echo 'Estimated install time: <1 minute'
echo ''
source software/miniconda3/etc/profile.d/conda.sh
conda activate AmberTools22
source \$HOME/.bash_profile
julia --version
cd software
wget -q https://github.com/donaldlab/OSPREY3/releases/download/3.3-resistor/osprey-3.3.tar
tar --file osprey-3.3.tar --extract
rm osprey-3.3.tar
echo 'export OSPREY_HOME=\$HOME/software/osprey-3.3' >> \$HOME/.bash_profile
echo 'export PATH=\$PATH:\$OSPREY_HOME/bin' >> \$HOME/.bash_profile
source \$HOME/.bash_profile
osprey --help
rm \$HOME/install_osprey1.sh
rm \$HOME/install_osprey2.sh
rm \$HOME/install_osprey3.sh
echo ''
echo 'RESISTOR installation complete!'
echo 'Note: run the following commands on startup to prepare the environment'
echo ''
echo 'source software/miniconda3/etc/profile.d/conda.sh'
echo 'conda activate AmberTools22'
echo ''
echo 'Please begin step 6: Obtaining the Sequence and Structure Files in the RESISTOR protocol'
" > install_osprey3.sh
#=====================================
#give permissions + run
chmod +x install_osprey1.sh
chmod +x install_osprey2.sh
chmod +x install_osprey3.sh
echo 'Beginning Part 1 of RESISTOR Installation'
echo 'Estimated install time: <2 minutes'
echo 'Note: Please set the conda path to $HOME/software/miniconda3 after viewing the license agreement'
echo ''
./install_osprey1.sh
