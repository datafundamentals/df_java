# df_java cookbook

this cookbook writes a recipe for local installation of Oracle based Java for the system. It only works with a system based on 
# Requirements
You must use one of the following OS to be considered relevant

* CentOS
* Ubuntu

# Usage
This cookbook is consumed by instances that use the java to perform various functions. In this case it is just about everything in the world

# Attributes
default['df_1']['path'] : This is a non-consumed attribute that we are going to keep to modify the cookbook as soon as we figure out the bug.
# Recipes

* default: Pretty self explanatory, am I right?
* set_java_home: this sets the path to the JVM which is necessary for other programs to function properly. This is written as a case statement due to the installation difference between Ubuntu and CentOS based distributions.


# Author

Author:: Jeff Carapetyan (<YOUR_EMAIL>)
