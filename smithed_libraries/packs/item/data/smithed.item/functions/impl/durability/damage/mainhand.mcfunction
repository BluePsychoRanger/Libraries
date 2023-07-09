# @public

# force damage to the item in the player's mainhand
# @s = player who needs to have durability changed in mainhand
# located at world spawn
# run from api call

# set mainhand durability
data modify storage smithed.item:main item set from entity @s SelectedItem
function smithed.item:impl/durability/damage/force/calc_unbreaking

# update mainhand
execute if score $out smithed.item matches 1 run item modify entity @s weapon.mainhand smithed.item:impl/update_nbt
execute if score $out smithed.item matches 0 run item replace entity @s weapon.mainhand with air
execute if score $out smithed.item matches -1 run function #smithed.item:event/item_changed/mainhand

scoreboard players reset $out smithed.item
