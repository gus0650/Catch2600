

main

 COLUBK=a
 a=a+1

 COLUP0 = $28

 player0:
	%01000110
	%01100100
	%00101000
	%10010110
	%01111000
	%00010000
	%00011000
	%00011000
end

 player0x = 50
 player0y = 150

 if joy0right then player0x = player0x + 1
 if joy0left then player0x = player0x - 1
 if joy0up then player0y = player0y - 1
 if joy0down then player0y = player0y + 1

 score = score + 1

 drawscreen

 goto main