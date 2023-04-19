# OSPREY_setup
Updated install script for RESISTOR protocol from sarisabban/Notes.

### Requirements:
1. User must be using a Linux environment. This script will not work if attempting to install to a Windows environment. The scripts are invoked via ./script.sh

2. Do not have an existing directory named "software"

3. If you have an existing .bash_profile, remove line 19

4. Run the script in your /home/user/ directory 

- Recommendation: If you are a Duke University student, I recommend requesting a Duke VM (virtual machine) and performing the install as an admin. I recommend performing all file prep (preparing a YAML file) on the VM, then submitting to the CS cluster for any redesigns. 

***

### Usage

#### 1. RESISTOR_setup.sh

- Obtain the RESISTOR_setup.sh file from this GitHub page. Move it into your /home/user/ directory, and give permissions (chmod +x RESISTOR_setup.sh). If you are using an IDE such as VSCode, you will notice the color of the file will change, meaning you have successfully given permissions.

- Invoke the script using ./RESISTOR_setup.sh. You will recieve a terminal output stating the estimated install time. You will then type "yes" (or "y") in response to any prompts from the miniconda3 install.

- IMPORTANT: When prompted, set your PATH for miniconda3 to $HOME/software/miniconda3

- After you are told the script has finished installing, restart your terminal to ensure all downloads are successfull.

#### 2. install_osprey2.sh
- Invoke via ./install_osprey2.sh. There is no need to give permissions for any more files (this is done in the prior script).

- Type "y" in response to any julia download prompts. Once the script has finished, restart your shell.

#### 3. install_osprey3.sh
- Invoke the script via ./install_osprey3.sh

***

### Running OSPREY protocols
- When performing calculations, such as K*, you will need to ensure the environments are properly activated.

- Upon login to the VM (or wherever the install script was run), activate your conda environment with:

source software/miniconda3/etc/profile.d/conda.sh

- Activate your AmberTools env with:

conda activate AmberTools22

***

### Troubleshooting

There are a number of areas where this script may fail. If you recieve install errors, the best method is to simply delete all installs (including the "software" directory and .bash_profile) and rerun. Most errors arise from attempting to install in an environment with conflicts (i.e., a preexisting "software" directory, prior install PATHs in .bash_profile, etc.).

If you recieve the "julia --version: command not found" error, perform the following:

source $HOME/.bash_profile

***

View the K* paper here: https://www.liebertpub.com/doi/full/10.1089/cmb.2022.0254
