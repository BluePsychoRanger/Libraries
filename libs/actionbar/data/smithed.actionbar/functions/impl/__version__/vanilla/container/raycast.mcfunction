execute if block ~ ~ ~ #smithed.actionbar:__version__/lockable align xyz positioned ~0.5 ~ ~0.5 run function smithed.actionbar:impl/__version__/vanilla/container/check_lock

# loop until bed is found
scoreboard players remove $ray smithed.actionbar.temp 1
execute unless block ~ ~ ~ #smithed.actionbar:__version__/lockable if score $ray smithed.actionbar.temp matches 1.. positioned ^ ^ ^0.1 run function smithed.actionbar:impl/__version__/vanilla/container/raycast
