# RESISTOR_setup
Updated install script for RESISTOR protocol from sarisabban/Notes.

Notes:

1. Do not have an existing directory named "software"

2. If you have an existing .bash_profile, remove line 19



View the paper here: https://www.liebertpub.com/doi/full/10.1089/cmb.2022.0254







Updates log:

added code to create + parse install scripts into 3 (to account for shell restarts)

tweaked code to echo into files correctly (no var expansion for paths)

Corrected conda source path in install 2 - missing software/

added terminal prompts

tweaked folder changes (in/out of software/)

corrected for env changes on startup
