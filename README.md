# df_java cookbook

this cookbook writes a recipe for local installation of Oracle based Java for the system. It only works with a system based on 
# Requirements
This is only tested on the following Operating systems, so there is no guarantee that it works for others. Odds are it is pretty universally translatable.

**NOTE** Please look at the .kitchen.yml file and adjust the synced folder from what we have run or it won't work

* CentOS 6.4, 6.5
* Ubuntu 12.04

# Usage
This cookbook is consumed by instances that use the java to perform various functions. In this case it is just about everything in the world.

# Attributes
default['df_1']['path'] : This is a non-consumed attribute that we are going to keep to modify the cookbook as soon as we figure out the bug. At this point due to the modularity for the cookbook, this is going to be designed as a placeholder until we figure out a better approach.
# Recipes

* default: Pretty self explanatory, am I right?
* set_java_home: this sets the path to the JVM which is necessary for other programs to function properly. This is written as a case statement due to the installation difference between Ubuntu and CentOS based distributions.

do you feel like general buffer would a terrible name for a polishing spokesman?
bananas in pajamas are coming down the stairs

# Author

Author:: Jeff Carapetyan (<YOUR_EMAIL>)
