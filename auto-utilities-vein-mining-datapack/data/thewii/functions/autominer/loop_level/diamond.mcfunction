scoreboard players add $length twvm.tool 1

execute if block ~ ~ ~ #thewii:autominer/ores_diamond run function thewii:autominer/damage/add
execute if score $mechanization twvm.tool matches 1 if block ~ ~ ~ #thewii:autominer/ores_mechanization[waterlogged=true,type=double] run function thewii:autominer/damage/add

execute unless score $silktouch twvm.tool matches 1 run function thewii:autominer/xp/detect_version

loot spawn ~ ~ ~ mine ~ ~ ~ mainhand

execute if score @s twvm.particles matches 1 run function thewii:autominer/break/particles
execute unless score @s twvm.particles matches 1 run setblock ~ ~ ~ air

execute unless score $length twvm.tool matches 256.. unless score $damaged twvm.tool > $limit twvm.tool positioned ~ ~1 ~ if block ~ ~ ~ #thewii:autominer/ores_diamond run function thewii:autominer/loop_level/diamond
execute unless score $length twvm.tool matches 256.. unless score $damaged twvm.tool > $limit twvm.tool positioned ~ ~-1 ~ if block ~ ~ ~ #thewii:autominer/ores_diamond run function thewii:autominer/loop_level/diamond
execute unless score $length twvm.tool matches 256.. unless score $damaged twvm.tool > $limit twvm.tool positioned ~1 ~ ~ if block ~ ~ ~ #thewii:autominer/ores_diamond run function thewii:autominer/loop_level/diamond
execute unless score $length twvm.tool matches 256.. unless score $damaged twvm.tool > $limit twvm.tool positioned ~-1 ~ ~ if block ~ ~ ~ #thewii:autominer/ores_diamond run function thewii:autominer/loop_level/diamond
execute unless score $length twvm.tool matches 256.. unless score $damaged twvm.tool > $limit twvm.tool positioned ~ ~ ~1 if block ~ ~ ~ #thewii:autominer/ores_diamond run function thewii:autominer/loop_level/diamond
execute unless score $length twvm.tool matches 256.. unless score $damaged twvm.tool > $limit twvm.tool positioned ~ ~ ~-1 if block ~ ~ ~ #thewii:autominer/ores_diamond run function thewii:autominer/loop_level/diamond

execute if score $mechanization twvm.tool matches 1 run function thewii:autominer/loop_level/chains/diamond_mechanization