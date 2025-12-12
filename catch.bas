 rem **************************************************************************
 rem catch
 rem **************************************************************************

main

 currentpaddle = 0

 rem Scale 0-77ish to screen X (0-154)
 player0x = paddle_val * 2 + 1
 if player0x > 140 then player0x = 140  rem Clamp

 rem Fire button
 if joy0right then missile0y = player0y

 score = paddle

 goto main