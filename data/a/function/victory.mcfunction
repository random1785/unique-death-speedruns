# set death back to normal
scoreboard players set @a[scores={death=18}] death 50


# then check if we can set it back
scoreboard players set @a[scores={aa=18}] death 18
scoreboard players set @a[scores={ab=18}] death 18
scoreboard players set @a[scores={ac=18}] death 18
scoreboard players set @a[scores={ad=18}] death 18
scoreboard players set @a[scores={ae=18}] death 18
scoreboard players set @a[scores={af=18}] death 18
scoreboard players set @a[scores={ag=18}] death 18
scoreboard players set @a[scores={ah=18}] death 18
scoreboard players set @a[scores={ai=18}] death 18
scoreboard players set @a[scores={aj=18}] death 18
scoreboard players set @a[scores={ak=18}] death 18
scoreboard players set @a[scores={al=18}] death 18
scoreboard players set @a[scores={am=18}] death 18
scoreboard players set @a[scores={an=18}] death 18
scoreboard players set @a[scores={ao=18}] death 18
scoreboard players set @a[scores={ap=18}] death 18
scoreboard players set @a[scores={aq=18}] death 18
scoreboard players set @a[scores={ar=18}] death 18
scoreboard players set @a[scores={as=18}] death 18
scoreboard players set @a[scores={at=18}] death 18
scoreboard players set @a[scores={au=18}] death 18
scoreboard players set @a[scores={av=18}] death 18
scoreboard players set @a[scores={aw=18}] death 18
scoreboard players set @a[scores={ax=18}] death 18
scoreboard players set @a[scores={ay=18}] death 18
scoreboard players set @a[scores={az=18}] death 18
scoreboard players set @a[scores={ba=18}] death 18
scoreboard players set @a[scores={bb=18}] death 18
scoreboard players set @a[scores={bc=18}] death 18
scoreboard players set @a[scores={bd=18}] death 18
scoreboard players set @a[scores={be=18}] death 18
scoreboard players set @a[scores={bf=18}] death 18
scoreboard players set @a[scores={bg=18}] death 18
scoreboard players set @a[scores={bh=18}] death 18
scoreboard players set @a[scores={bi=18}] death 18
scoreboard players set @a[scores={bj=18}] death 18
scoreboard players set @a[scores={bk=18}] death 18
scoreboard players set @a[scores={bl=18}] death 18
scoreboard players set @a[scores={bm=18}] death 18
scoreboard players set @a[scores={bn=18}] death 18
scoreboard players set @a[scores={bo=18}] death 18
scoreboard players set @a[scores={bp=18}] death 18
scoreboard players set @a[scores={bq=18}] death 18
scoreboard players set @a[scores={br=18}] death 18
scoreboard players set @a[scores={bs=18}] death 18
scoreboard players set @a[scores={bt=18}] death 18
scoreboard players set @a[scores={bu=18}] death 18
scoreboard players set @a[scores={bv=18}] death 18
scoreboard players set @a[scores={bw=18}] death 18
scoreboard players set @a[scores={bx=18}] death 18


# make it really high 
scoreboard players set @a[scores={aa=18}] aa 69
scoreboard players set @a[scores={ab=18}] ab 69
scoreboard players set @a[scores={ac=18}] ac 69
scoreboard players set @a[scores={ad=18}] ad 69
scoreboard players set @a[scores={ae=18}] ae 69
scoreboard players set @a[scores={af=18}] af 69
scoreboard players set @a[scores={ag=18}] ag 69
scoreboard players set @a[scores={ah=18}] ah 69
scoreboard players set @a[scores={ai=18}] ai 69
scoreboard players set @a[scores={aj=18}] aj 69
scoreboard players set @a[scores={ak=18}] ak 69
scoreboard players set @a[scores={al=18}] al 69
scoreboard players set @a[scores={am=18}] am 69
scoreboard players set @a[scores={an=18}] an 69
scoreboard players set @a[scores={ao=18}] ao 69
scoreboard players set @a[scores={ap=18}] ap 69
scoreboard players set @a[scores={aq=18}] aq 69
scoreboard players set @a[scores={ar=18}] ar 69
scoreboard players set @a[scores={as=18}] as 69
scoreboard players set @a[scores={at=18}] at 69
scoreboard players set @a[scores={au=18}] au 69
scoreboard players set @a[scores={av=18}] av 69
scoreboard players set @a[scores={aw=18}] aw 69
scoreboard players set @a[scores={ax=18}] ax 69
scoreboard players set @a[scores={ay=18}] ay 69
scoreboard players set @a[scores={az=18}] az 69
scoreboard players set @a[scores={ba=18}] ba 69
scoreboard players set @a[scores={bb=18}] bb 69
scoreboard players set @a[scores={bc=18}] bc 69
scoreboard players set @a[scores={bd=18}] bd 69
scoreboard players set @a[scores={be=18}] be 69
scoreboard players set @a[scores={bf=18}] bf 69
scoreboard players set @a[scores={bg=18}] bg 69
scoreboard players set @a[scores={bh=18}] bh 69
scoreboard players set @a[scores={bi=18}] bi 69
scoreboard players set @a[scores={bj=18}] bj 69
scoreboard players set @a[scores={bk=18}] bk 69
scoreboard players set @a[scores={bl=18}] bl 69
scoreboard players set @a[scores={bm=18}] bm 69
scoreboard players set @a[scores={bn=18}] bn 69
scoreboard players set @a[scores={bo=18}] bo 69
scoreboard players set @a[scores={bp=18}] bp 69
scoreboard players set @a[scores={bq=18}] bq 69
scoreboard players set @a[scores={br=18}] br 69
scoreboard players set @a[scores={bs=18}] bs 69
scoreboard players set @a[scores={bt=18}] bt 69
scoreboard players set @a[scores={bu=18}] bu 69
scoreboard players set @a[scores={bv=18}] bv 69
scoreboard players set @a[scores={bw=18}] bw 69
scoreboard players set @a[scores={bx=18}] bx 69


# return them to normal
execute as @a[scores={death=50}] run tellraw @s {"text":"You have used this death message before!","color":"dark_red"}
scoreboard players set @a[scores={death=50}] death 17


# this should treat it as a normal death
# schedule function a:victoryy 1t
function a:victoryy