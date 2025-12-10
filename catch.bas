 rem **************************************************************************
 rem catch
 rem **************************************************************************

 set kernel_options no_blank_lines readpaddle

 set tv ntsc
 set romsize 4k

 playfield:
 XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
 X....X...................X....X
 X.............................X
 X.............................X
 X.............................X
 X.............................X
 X.............................X
 X.............................X
 X.............................X
 X....X...................X....X
 XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
end

 player0:
 %00100010
 %00010100
 %00001000
 %00111110
 %00001000
 %00011100
 %00011100
 %00011100
end

 player1:
 %01000100
 %00101000
 %00010000
 %01111100
 %00010000
 %00111000
 %00111000
 %00111000
end

main
 currentpaddle = 0  rem Paddle 0 (left port)
 drawscreen        rem Sample happens here
 paddle_val = paddle

 rem Scale 0-77ish to screen X (0-154)
 player0x = paddle_val * 2 + 1
 if player0x > 140 then player0x = 140  rem Clamp

 rem Fire button
 if joy0right then missile0y = player0y

 goto main