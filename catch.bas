 set kernel_options no_blank_lines readpaddle

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


main

 currentpaddle = 0

 drawscreen

 score = paddle

 goto main