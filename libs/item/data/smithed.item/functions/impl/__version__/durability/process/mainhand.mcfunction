data modify storage smithed.item:main item set from entity @s SelectedItem

function smithed.item:impl/__version__/durability/process/handle

execute unless data storage smithed.item:main {item:"null"} unless score $out smithed.data matches -1 run item modify entity @s weapon.mainhand smithed.item:update_nbt
execute if data storage smithed.item:main {item:"null"} run item replace entity @s weapon.mainhand with air