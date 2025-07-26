execute unless entity @a[scores={death=17,health=1..500}] run schedule function a:zzzhealthcalc1 2s
execute unless entity @a[scores={death=17,health=1..500}] run scoreboard players set @e[tag=score] round 0
execute unless entity @a[scores={death=17,health=1..500}] run scoreboard players reset * temp
execute as @a[scores={death=20},tag=a] at @s run playsound minecraft:entity.player.levelup
execute as @a[scores={death=20},tag=a] run title @s title [{"text":"Time taken: ","color":"gold"},{"score":{"name":"@s","objective":"score"}},{"text":" ticks"}]
execute as @a[scores={death=20},tag=a] run gamemode spectator @s
execute as @a[scores={death=20},tag=a] run tellraw @a [{"selector":"@s","color":"green"},{"text":" took "},{"score":{"name":"@s","objective":"score"}},{"text":" ticks to die!"}]
execute as @a[tag=a] run scoreboard players operation @s calc = @s score
scoreboard players set @a[tag=a] death 22