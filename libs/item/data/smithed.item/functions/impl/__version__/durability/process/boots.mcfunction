data modify storage smithed.item:main item set from entity @s Inventory[{Slot:100b}]
function smithed.item:impl/__version__/durability/process/handle

execute unless data storage smithed.item:main {item:"null"} unless score $out smithed.data matches -1 run item modify entity @s armor.feet smithed.item:update_nbt
execute if data storage smithed.item:main {item:"null"} run item replace entity @s armor.feet with air