 rem CATCH2600
 rem V1.1
 rem written in Batari BASIC
 rem by Gustaf Stechmann
 rem in 2025
 
 set kernel_options no_blank_lines readpaddle
 
 player0:
  %1111111
  %1111111
  %1111111
end

 player0y=80

 ballx = 50

main
 COLUP0=$9a
 COLUPF=255
 COLUBK=02
 
 AUDV0=0

 currentpaddle=0

 player0x=paddle*2

 bally = bally+2
 if switchleftb then bally = bally-1

 if switchrightb then NUSIZ0 = $15

 if collision(player0, ball) then score = score +1: bally=0: ballx=rand: AUDC0=1: AUDV0=15

 if bally > 80 then bally=0: ballx=rand: AUDC0=15: AUDV0=15

 if ballx > 160 then ballx=80

 if switchreset then score = 0: AUDC0=5: AUDV0=15

 drawscreen

 goto main

