*** Settings ***
# ***Setting*** is there for the robot framework to recognize that here in the file there will be setting and key info

# Here under the setting tab you should import all libraries that the project will use
# including all of the Python files with custom logic
# Examples:
# Library                         SeleniumLibrary
# Library                         Keywords/MagicFunction.py
Library                        	  SeleniumLibrary
Library                          String
Library                          Collections
Library                          Keywords/pricesStuff.py

# Most used Robot Framework Libraries are:
# Builtin
# Selenium
# String
# Collections
# You can add them prom File > Settings > Project > Project Interpreter


# Variables
# Under variable section we should add all paths to the variables with information for forms and constants
Variables                       Variables/GlobalVariables.py
Variables                       Variables/Forms/RegisterPageVariables.py
Variables                       Variables/Forms/ProductVariables.py

# Locators
# Under locators section we should add all paths for locators files
Variables                       Variables/Locators/RegisterUserLocators.py
Variables                       Variables/Locators/BasketLocators.py
Variables                       Variables/Locators/GlobalLocators.py

# Keywords
# Under keywords section we should add as a resource the path for all keywords files that are used in the project
# and are stored in Keywords directory
# Example:
Resource                        Keywords/GlobalKeywords.robot
Resource                        Keywords/RegisterUserKeywords.robot
Resource                        Keywords/BasketKeywords.robot
Resource                        Keywords/SearchEngineKeywords.robot


# In case you didn't noticed when something starts with # it is a comment :)
