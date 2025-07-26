execute store result score @e[type=minecraft:armor_stand,limit=1,tag=score] pcount run execute if entity @a
execute if score @e[type=minecraft:armor_stand,limit=1,tag=score] pcount < @e[type=minecraft:armor_stand,limit=1,tag=score] tpcount run function a:zzzleave
execute store result score @e[type=minecraft:armor_stand,limit=1,tag=score] tpcount run execute if entity @a

# triggers
execute as @a[scores={repeat=1..}] run function a:zzzrepeat
execute as @a[scores={unique=1..}] run function a:zzzunique
scoreboard players reset @a repeat
scoreboard players reset @a unique
scoreboard players enable @a repeat
scoreboard players enable @a unique

execute as @a[scores={spec=1..}] run tellraw @a [{"color":"gray","selector":"@s"},{"text":" has become a spectator."}]
execute as @a[scores={spec=1..}] run gamemode spectator @s
execute as @a[scores={spec=1..}] run scoreboard players set @s spec -1785

execute as @a[scores={notspec=1..}] run tellraw @a [{"color":"green","selector":"@s"},{"text":" has stopped being a spectator."}]
execute as @a[scores={notspec=1..}] run scoreboard players reset @s spec
execute as @a[scores={notspec=1..}] run tp @s 0 302 0
execute as @a[scores={notspec=1..}] run gamemode survival @s
execute as @a[scores={notspec=1..}] run scoreboard players reset @s notspec

execute unless entity @e[limit=1,tag=score,scores={round=1}] positioned 12.79 308.35 0.70 run scoreboard players enable @a[distance=..30] spec
execute unless entity @e[limit=1,tag=score,scores={round=1}] positioned 12.79 308.35 0.70 run scoreboard players enable @a[distance=..30] notspec
execute in minecraft:the_nether positioned 11.08 159.00 4.82 run scoreboard players enable @a[distance=..60] notspec
execute in minecraft:the_nether positioned 11.08 159.00 4.82 run scoreboard players enable @a[distance=..60] spec


effect give @a[scores={death=18..}] resistance 1 255 true
effect give @a[scores={death=18..}] mining_fatigue 1 254 true
execute positioned 12.79 308.35 0.70 run effect give @a[distance=..30] mining_fatigue 1 254 true
execute positioned 12.79 308.35 0.70 run effect give @a[distance=..30] resistance 1 254 true
execute positioned 22.41 309.99 0.39 run effect give @a[distance=..10] saturation 1 254 true
execute in minecraft:the_nether positioned 11.08 159.00 4.82 run effect give @a[distance=..60] resistance 1 254 true
execute in minecraft:the_nether positioned 11.08 159.00 4.82 run effect give @a[distance=..60] mining_fatigue 1 254 true
execute in minecraft:the_nether positioned 11.08 159.00 4.82 run effect give @a[distance=..60] saturation 1 254 true
execute in minecraft:the_nether positioned 11.08 159.00 4.82 run tp @e[type=enderman,distance=..60,tag=!end] ~ 0 ~
execute in minecraft:the_nether positioned 11.08 159.00 4.82 run tag @e[type=enderman,distance=..60,tag=!end] add end
scoreboard players add @e[type=armor_stand,tag=score,scores={round=1..}] score 1
execute as @e[tag=score,type=armor_stand,scores={score=0..10}] at @a run fill ~-3 ~-3 ~-3 ~3 ~3 ~3 air replace glass
execute as @e[tag=score,type=armor_stand,scores={score=-10..0}] run scoreboard players set @a death 17
execute as @e[tag=score,type=armor_stand,scores={score=-200}] run effect give @a minecraft:instant_health 1 15 true
execute as @e[tag=score,type=armor_stand,scores={score=-150}] run effect give @a minecraft:instant_health 1 15 true
execute as @e[tag=score,type=armor_stand,scores={score=-100}] run effect give @a minecraft:instant_health 1 15 true
execute as @e[tag=score,type=armor_stand,scores={score=-50}] run effect give @a minecraft:instant_health 1 15 true
execute as @e[tag=score,type=armor_stand,scores={score=-10}] run effect give @a minecraft:instant_health 1 15 true
execute as @e[tag=score,type=armor_stand,scores={score=-160..0}] run execute as @e[tag=start,type=armor_stand] at @s run execute as @a[gamemode=survival,distance=1..] run tag @s add botch
execute as @e[tag=score,type=armor_stand,scores={score=-160..0}] run execute as @e[tag=start,type=armor_stand] at @s run execute as @a[gamemode=survival,distance=1..] run function a:zzzbotched
execute as @e[tag=score,type=armor_stand,scores={score=-160..0}] run execute as @a[scores={death=18..},gamemode=survival] run tag @s add botchd
execute as @e[tag=score,type=armor_stand,scores={score=-160..0}] run execute as @a[scores={death=18..},gamemode=survival] run function a:zzzdied


execute as @e[tag=score,scores={score=-40..-20}] run execute as @a at @s run spawnpoint @s
execute as @e[tag=score,scores={score=-40..-20}] run execute as @a at @s run setworldspawn ~ ~ ~

execute as @e[tag=score,scores={score=0..299}] run title @a[tag=!a] actionbar {"score":{"name":"@s","objective":"score"},"color":"aqua"}
execute as @e[tag=score,scores={score=300..599}] run title @a[tag=!a] actionbar {"score":{"name":"@s","objective":"score"},"color":"green"}
execute as @e[tag=score,scores={score=600..899}] run title @a[tag=!a] actionbar {"score":{"name":"@s","objective":"score"},"color":"yellow"}
execute as @e[tag=score,scores={score=900..1199}] run title @a[tag=!a] actionbar {"score":{"name":"@s","objective":"score"},"color":"gold"}
execute as @e[tag=score,scores={score=1200..1499}] run title @a[tag=!a] actionbar {"score":{"name":"@s","objective":"score"},"color":"red"}
execute as @e[tag=score,scores={score=1500..1799}] run title @a[tag=!a] actionbar {"score":{"name":"@s","objective":"score"},"color":"dark_red"}
execute as @e[tag=score,scores={score=1800..2099}] run title @a[tag=!a] actionbar {"score":{"name":"@s","objective":"score"},"color":"dark_gray"}
execute as @e[tag=score,scores={score=2100..}] run title @a[tag=!a] actionbar {"score":{"name":"@s","objective":"score"},"color":"black"}

execute as @e[tag=score,scores={round=1,score=1300}] run tellraw @a {"text":"1 minute left!","color":"aqua"}
execute as @e[tag=score,scores={round=1,score=1900}] run tellraw @a {"text":"30 seconds left!","color":"green"}
execute as @e[tag=score,scores={round=1,score=2200}] run tellraw @a {"text":"15 seconds left!","color":"yellow"}
execute as @e[tag=score,scores={round=1,score=2300}] run tellraw @a {"text":"10 seconds left!","color":"yellow"}
execute as @e[tag=score,scores={round=1,score=2320}] run tellraw @a {"text":"9 seconds left!","color":"gold"}
execute as @e[tag=score,scores={round=1,score=2340}] run tellraw @a {"text":"8 seconds left!","color":"gold"}
execute as @e[tag=score,scores={round=1,score=2360}] run tellraw @a {"text":"7 seconds left!","color":"gold"}
execute as @e[tag=score,scores={round=1,score=2380}] run tellraw @a {"text":"6 seconds left!","color":"red"}
execute as @e[tag=score,scores={round=1,score=2400}] run tellraw @a {"text":"5 seconds left!","color":"red"}
execute as @e[tag=score,scores={round=1,score=2420}] run tellraw @a {"text":"4 seconds left!","color":"red"}
execute as @e[tag=score,scores={round=1,score=2440}] run tellraw @a {"text":"3 seconds left!","color":"dark_red"}
execute as @e[tag=score,scores={round=1,score=2460}] run tellraw @a {"text":"2 seconds left!","color":"dark_red"}
execute as @e[tag=score,scores={round=1,score=2480}] run tellraw @a {"text":"1 second left!","color":"dark_red"}

execute as @e[tag=score,scores={round=1,score=1300}] at @a run playsound minecraft:block.note_block.bit player @a
execute as @e[tag=score,scores={round=1,score=1900}] at @a run playsound minecraft:block.note_block.bit player @a
execute as @e[tag=score,scores={round=1,score=2200}] at @a run playsound minecraft:block.note_block.bit player @a
execute as @e[tag=score,scores={round=1,score=2300}] at @a run playsound minecraft:block.note_block.bit player @a
execute as @e[tag=score,scores={round=1,score=2320}] at @a run playsound minecraft:block.note_block.bit player @a
execute as @e[tag=score,scores={round=1,score=2340}] at @a run playsound minecraft:block.note_block.bit player @a
execute as @e[tag=score,scores={round=1,score=2360}] at @a run playsound minecraft:block.note_block.bit player @a
execute as @e[tag=score,scores={round=1,score=2380}] at @a run playsound minecraft:block.note_block.bit player @a
execute as @e[tag=score,scores={round=1,score=2400}] at @a run playsound minecraft:block.note_block.bit player @a
execute as @e[tag=score,scores={round=1,score=2420}] at @a run playsound minecraft:block.note_block.bit player @a
execute as @e[tag=score,scores={round=1,score=2440}] at @a run playsound minecraft:block.note_block.bit player @a
execute as @e[tag=score,scores={round=1,score=2460}] at @a run playsound minecraft:block.note_block.bit player @a
execute as @e[tag=score,scores={round=1,score=2480}] at @a run playsound minecraft:block.note_block.bit player @a

execute as @a[team=a,scores={death=18,health=1..500},tag=!a] if entity @e[tag=score,scores={score=0..}] run function a:victory
tag @a[tag=!new] add new
team join a @a[tag=!new]
execute as @e[tag=newcheck] run execute as @a run execute unless score @s health matches -69421.. run schedule function a:zzzjoin 1t


execute as @e[tag=score,scores={score=-200}] run title @a title {"text":"10","color":"green"}
execute as @e[tag=score,scores={score=-180}] run title @a title {"text":"9","color":"green"}
execute as @e[tag=score,scores={score=-160}] run title @a title {"text":"8","color":"green"}
execute as @e[tag=score,scores={score=-140}] run title @a title {"text":"7","color":"green"}
execute as @e[tag=score,scores={score=-120}] run title @a title {"text":"6","color":"green"}
execute as @e[tag=score,scores={score=-100}] run title @a title {"text":"5","color":"yellow"}
execute as @e[tag=score,scores={score=-80}] run title @a title {"text":"4","color":"yellow"}
execute as @e[tag=score,scores={score=-60}] run title @a title {"text":"3","color":"gold"}
execute as @e[tag=score,scores={score=-40}] run title @a title {"text":"2","color":"red"}
execute as @e[tag=score,scores={score=-20}] run title @a title {"text":"1","color":"red"}
execute as @e[tag=score,scores={score=0}] run title @a title {"text":"GO!","color":"dark_red"}


execute as @e[tag=score,scores={score=-200}] at @a run playsound minecraft:block.note_block.bass player @a
execute as @e[tag=score,scores={score=-180}] at @a run playsound minecraft:block.note_block.bass player @a
execute as @e[tag=score,scores={score=-160}] at @a run playsound minecraft:block.note_block.bass player @a
execute as @e[tag=score,scores={score=-140}] at @a run playsound minecraft:block.note_block.bass player @a
execute as @e[tag=score,scores={score=-120}] at @a run playsound minecraft:block.note_block.bass player @a
execute as @e[tag=score,scores={score=-100}] at @a run playsound minecraft:block.note_block.bass player @a
execute as @e[tag=score,scores={score=-80}] at @a run playsound minecraft:block.note_block.bass player @a
execute as @e[tag=score,scores={score=-60}] at @a run playsound minecraft:block.note_block.bass player @a
execute as @e[tag=score,scores={score=-40}] at @a run playsound minecraft:block.note_block.bass player @a
execute as @e[tag=score,scores={score=-20}] at @a run playsound minecraft:block.note_block.bass player @a
execute as @e[tag=score,scores={score=0}] at @a run playsound minecraft:entity.ender_dragon.growl player @a

execute as @e[type=minecraft:armor_stand,tag=score,scores={score=-199}] at @s if entity @a[distance=..35,gamemode=survival] run function a:zzzbotched
execute as @e[type=minecraft:armor_stand,tag=score,scores={score=-19}] at @s if entity @a[distance=..35,gamemode=survival] run function a:zzzbotched
execute as @e[type=minecraft:armor_stand,tag=score,scores={score=-240..-1}] at @s if entity @a[scores={glass=1..}] run function a:zzzglass

# i copy pasted this from savedeath teams i hope it works!!
execute as @e[type=minecraft:armor_stand,tag=score,scores={score=10..60000,limit=1..}] if score @s limit <= @s score run gamemode spectator @a[scores={death=17,health=1..500}]
execute as @e[type=minecraft:armor_stand,tag=score,scores={score=10..60000,limit=1..}] if score @s limit <= @s score run scoreboard players set @s overkill 69420
execute as @e[type=minecraft:armor_stand,tag=score,scores={score=10..60000,limit=1..}] if score @s limit <= @s score run scoreboard players set @a[scores={death=17,health=1..500}] calc 4000
execute as @e[type=minecraft:armor_stand,tag=score,scores={score=10..60000,limit=1..}] if score @s limit <= @s score run execute unless score @e[limit=1,type=armor_stand,tag=score] first matches 0.. run scoreboard players set @e[limit=1,type=armor_stand,tag=score] first 4000
execute as @e[type=minecraft:armor_stand,tag=score,scores={score=10..60000,limit=1..}] if score @s limit <= @s score run tellraw @a {"bold":true,"text":"Round limit reached!","color":"dark_red"}
execute as @e[type=minecraft:armor_stand,tag=score,scores={score=10..60000,limit=1..}] if score @s limit <= @s score run tellraw @a {"text":"All players that have not managed to die have recieved a raw score of 4000.","color":"dark_red"}
execute as @e[type=minecraft:armor_stand,tag=score,scores={score=10..60000,limit=1..}] if score @s limit <= @s score run execute as @a at @s run playsound minecraft:block.anvil.land player @a ~ ~ ~ 0.2
execute as @e[type=minecraft:armor_stand,tag=score,scores={score=10..60000,limit=1..}] if score @s limit <= @s score run schedule function a:zzzhealthcalc1 20t
execute as @e[type=minecraft:armor_stand,tag=score,scores={score=10..60000,limit=1..}] if score @s limit <= @s score run scoreboard players set @s limit 69420



execute as @e[type=minecraft:armor_stand,tag=score,scores={score=10..60000,overkill=1..}] if score @s overkill <= @s score run gamemode spectator @a[scores={death=17,health=0..501}]
execute as @e[type=minecraft:armor_stand,tag=score,scores={score=10..60000,overkill=1..}] if score @s overkill <= @s score run tellraw @a {"text":"Max damage threshold reached! Round has been ended...","color":"dark_red"}
execute as @e[type=minecraft:armor_stand,tag=score,scores={score=10..60000,overkill=1..}] if score @s overkill <= @s score run scoreboard players set @a[scores={death=17,health=0..501}] calc 69420
execute as @e[type=minecraft:armor_stand,tag=score,scores={score=10..60000,overkill=1..}] if score @s overkill <= @s score run schedule function a:zzzhealthcalc1 20t
execute as @e[type=minecraft:armor_stand,tag=score,scores={score=10..60000,overkill=1..}] if score @s overkill <= @s score run scoreboard players set @s overkill 69420
