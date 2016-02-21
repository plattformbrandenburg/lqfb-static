#!/bin/bash

################################################################################
### How to use this script                                                   ###
################################################################################
#                                                                            ###
# 1. Change the path of your LiquidFeedback frontend files below             ###
# 2. Run this script using sudo: sudo ./install.sh                           ###
#                                                                            ###
################################################################################

# Enter the path of the LiquidFeedback frontend
lqfb_path=/opt/liquid_feedback_frontend/;

#### You do not need to change the script below this line! ####

printf 'Installation of the alternative icon set to: $lqfb_path\n\n';


# check if script run in past already

if [ -f ./original-icons/created.txt ];

  then 

    printf 'original files already stored in: ./original-icons \n\n';

  else

    # Create directory to store existing icons      

    mkdir ./original-icons;

    # Copy default icons to a tmp directory
    
    printf 'Backing up original icon files to\n\n'

    cp -v $lqfb_path/static/avatar.jpg ./original-icons/;
    cp -v $lqfb_path/static/icons/16/bullet_yellow.png ./original-icons/;
    cp -v $lqfb_path/static/icons/16/comment.png ./original-icons/;
    cp -v $lqfb_path/static/delegation_arrow_24_horizontal.png ./original-icons/;
    cp -v $lqfb_path/static/icons/16/eye.png ./original-icons/;
    cp -v $lqfb_path/static/icons/48/eye.png ./original-icons/;
    cp -v $lqfb_path/static/icons/16/group.png ./original-icons/;
    cp -v $lqfb_path/static/icons/48/info.png ./original-icons/;
    cp -v $lqfb_path/static/icons/16/magnifier.png ./original-icons/;
    cp -v $lqfb_path/static/star.png ./original-icons/;
    cp -v $lqfb_path/static/icons/48/star.png ./original-icons/;
    cp -v $lqfb_path/static/icons/32/support_satisfied.png ./original-icons/;
    cp -v $lqfb_path/static/icons/32/support_satisfied_via_delegation.png ./original-icons/;
    cp -v $lqfb_path/static/icons/32/support_unsatisfied.png ./original-icons/;
    cp -v $lqfb_path/static/icons/32/support_unsatisfied_via_delegation.png ./original-icons/;
    cp -v $lqfb_path/static/icons/16/text_list_bullets.png ./original-icons/;
    cp -v $lqfb_path/static/icons/32/voted_no.png ./original-icons/;

    # change owner to user

    printf '\n\n removing root user and group and setting current user as owner.'
    sudo chown -R $(whoami):$(whoami) original-icons/;

    # create a flag that shows that this script was running in past already 
    # in order to avoid to overwriting icons again and again.

    date > ./original-icons/created.txt;
    printf 'DO NOT DELETE THIS FILE!' >> ./original-icons/created.txt;
    printf '\n\n Backup finished! \n\n'


fi
