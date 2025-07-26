execute as @a[scores={death=18}] run scoreboard players operation @s calc = @e[limit=1,type=armor_stand,tag=score] score
execute as @a[scores={death=18}] run scoreboard players operation @s score = @e[limit=1,type=armor_stand,tag=score] score
execute as @a[scores={death=18}] run execute unless score @e[limit=1,type=armor_stand,tag=score] first matches 0.. run execute as @a[scores={death=18},tag=!a] at @s run scoreboard players operation @e[type=minecraft:armor_stand,tag=score] first = @s score
execute as @a[scores={death=18}] run execute unless score @e[limit=1,type=armor_stand,tag=score] overkill matches 1.. run function a:zzzoverkill
tag @a[scores={death=18,health=1..500},tag=!a] add a
schedule function a:victory2 1t
scoreboard players set @a[scores={death=18}] death 20