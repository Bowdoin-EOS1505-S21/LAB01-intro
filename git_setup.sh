#!/bin/bash
# This script will set up some GLOBAL
# items in your gitconfig.  This means
# these items will be set for all
# repositories that you work with
# on a given computer system.  These
# configurations changes are stored
# in a file in your home directory,
# so they will apply for any instance
# on this system.
#
# The contents of this file are
# not important for the purposes of
# this class.  We just need to
# run these lines of code once to 
# sidestep annoying/distracting
# configuration questions later.

# This software is distributed under
# the terms of the GNU GPL, v3 or
# any later version.
#
# Copyright, Stefan  Gary, 2020

#===================================
echo "Enter your name as you want it to appear in GitHub Classroom."
echo "Then press return.  Only use Aa-Zz, 0-9, and - characters."
echo "No spaces, please."
echo " "
read username

echo "Setting git user.name to: "${username}
git config --global --replace-all user.name ${username}

#====================================
echo "Enter your e-mail as you want it to appear in GitHub Classroom."
echo " "
read useremail

echo "Setting git e-mail to: "${useremail}
git config --global --replace-all user.email ${useremail}

#====================================
# Set the default text editor.
git config --global core.editor vi

#====================================
# Set the default name for base branch
# if a new repository is created here.
git config --global init.defaultBranch main

#====================================
# Set the behavior for how git detects
# which branch to merge to on GitHub.com.
git config --global push.default simple

#====================================
# Done!

