# OSPREY_setup
Updated install script for RESISTOR protocol from sarisabban/Notes.

Notes:
1. User must be using bash. The scripts are invoked via ./scipt.sh

2. Do not have an existing directory named "software"

3. If you have an existing .bash_profile, remove line 19

4. Run the script in your /home/username/ directory 



View the paper here: https://www.liebertpub.com/doi/full/10.1089/cmb.2022.0254







Updates log:

added code to create + parse install scripts into 3 (to account for shell restarts)

tweaked code to echo into files correctly (no var expansion for paths)

Corrected conda source path in install 2 - missing software/

added terminal prompts

tweaked folder changes (in/out of software/)

corrected for env changes on startup
