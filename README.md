# OSPREY_setup
Updated install script for RESISTOR protocol from sarisabban/Notes.

### Requirements:
1. User must be using bash. The scripts are invoked via ./scipt.sh

2. Do not have an existing directory named "software"

3. If you have an existing .bash_profile, remove line 19

4. Run the script in your /home/user/ directory 

### Usage

#### RESISTOR_setup.sh
- Recommendation: If you are a Duke University student, I recommend requesting a Duke VM (virtual machine) and performing the install as an admin.

- Obtain the RESISTOR_setup.sh file from this GitHub page. Move it into your /home/user/ directory, and give permissions (chmod +x RESISTOR_setup.sh). If you are using an IDE such as VSCode, you will notice the color of the file will change, meaning you have successfully been given permissions.

- Invoke the script using ./RESISTOR_setup.sh. You will recieve a terminal output stating the estimated install time. You will then type "yes" (or "y") in response to any prompts from the miniconda3 install.

- NOTE: When prompted, set your PATH for miniconda3 to $HOME/software/miniconda3

- After you are told the script has finished installing, restart your terminal to ensure all downloads are successfull.

#### install_osprey2.sh
- Invoke via ./install_osprey2.sh. There is no need to give permissions for any more files (this is done in the prior script).

- Type "y" in response to any julia download prompts. Once the script has finished, restart your shell.

#### install_osprey3.sh
- Invoke the script via ./install_osprey3.sh




### Troubleshooting

There are a number of areas where this script may fail. If you recieve install errors, the best method is to simply delete all installs (including the "software" directory and .bash_profile) and rerun. If this script is run in an environment with no conflicts (i.e., a preexisting "software" directory, prior install PATHs in .bash_profile, etc.) there should be no hiccups.


View the paper here: https://www.liebertpub.com/doi/full/10.1089/cmb.2022.0254
