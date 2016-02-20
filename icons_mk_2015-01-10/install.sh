#!/bin/bash

# path of the LiquidFeedback frontend
lqfb_path=/opt/liquid_feedback_frontend/

# check if script run in past already

# Create tmp directory to store existing icons
mkdir ./tmp

#Copy default icons to a tmp directory

cp $lqfb_path/static/avatar.jpg ./tmp/
cp $lqfb_path/static/icons/16/bullet_yellow.png ./tmp/
cp $lqfb_path/static/icons/16/comment.png ./tmp/
cp $lqfb_path/static/delegation_arrow_24_horizontal.png ./tmp/
cp $lqfb_path/static/icons/16/eye.png ./tmp/
cp $lqfb_path/static/icons/48/eye.png ./tmp/
cp $lqfb_path/static/icons/16/group.png ./tmp/
cp $lqfb_path/static/icons/48/info.png ./tmp/
cp $lqfb_path/static/icons/16/magnifier.png ./tmp/
cp $lqfb_path/static/star.png ./tmp/
cp $lqfb_path/static/icons/48/star.png ./tmp/
cp $lqfb_path/static/icons/32/support_satisfied.png ./tmp/
cp $lqfb_path/static/icons/32/support_satisfied_via_delegation.png ./tmp/
cp $lqfb_path/static/icons/32/support_unsatisfied.png ./tmp/
cp $lqfb_path/static/icons/32/support_unsatisfied_via_delegation.png ./tmp/
cp $lqfb_path/static/icons/16/text_list_bullets.png ./tmp/
cp $lqfb_path/static/icons/32/voted_no.png ./tmp/
                                  
# create a flag that shows that this script was running in past already 
# in order to avoid to overwriting icons again and again.
