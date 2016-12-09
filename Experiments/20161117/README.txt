Author: Mohamed Idries
Date: 16/11/2016 17:50

This file serves to explain the document structure and the trial setups and arena conditions. The following illustration serves to explain the variables I will be referring to:

	 |	<-x-	0	-z->   	   |
	 |		|		   |
	 |		y		   |
wx ->|					   | <- wz
	 |				   |
	 |				   |
	 |______________|__________________|
			^
			|
			wy
legend:
d - ~40cm
wx - wall X
wy - wall Y
wz - wall Z
x - distance between sonar and wx
y - distance between sonar and wy
z - distance between sonar and z
arena - the testing ground


== Document structure ==

/
	README 							- Current document you are reading
	/ Scaling 						- scaling of the arena (x, y, z)
		/ D							- scaling where d = x = y = z
			/ EZ
			/ EZ1
			/ EZBrown
			/ HC			
		/ D2						- scaling where 2d = x = y = z
			/ EZ
			/ EZ1
			/ EZBrown
			/ HC
		/ D3						- scaling
			/ EZ
			/ EZ1
			/ EZBrown
			/ HC
		/ DYZD2X					- scaling where d = y = z and 2d = x
			/ EZ
			/ EZ1
			/ EZBrown
			/ HC
		/ DXZD2Y					- scaling where d = x = z and 2d = y
			/ EZ
			/ EZ1
			/ EZBrown
			/ HC
		/ DXYD2Z					- scaling where d = x = y and 2d = z
			/ EZ
			/ EZ1
			/ EZBrown
			/ HC
	/ Material						- different materials as walls (wx, wy, wz)
		/ Carton					- material is carton
			/ EZ
			/ EZ1
			/ EZBrown
			/ HC
		/ Foam						- material is foam
			/ EZ
			/ EZ1
			/ EZBrown
			/ HC
	/ Object						- different object in the arena
		/ Cilinder					- object is cilinder
			/ XY					- object is placed in the corner between X and Y
				/ EZ
				/ EZ1
				/ EZBrown
				/ HC
			/ Y						- object is place straight aheade in y direction on the wy wall
				/ EZ
				/ EZ1
				/ EZBrown
				/ HC
			/ YZ					- object is placed in the corner between Y and Z
				/ EZ
				/ EZ1
				/ EZBrown
				/ HC
		/ Square					- object is square
			/ XY					- object is placed in the corner between X and Y
				/ EZ
				/ EZ1
				/ EZBrown
				/ HC
			/ Y						- object is place straight aheade in y direction on the wy wall
				/ EZ
				/ EZ1
				/ EZBrown
				/ HC
			/ YZ					- object is placed in the corner between Y and Z
				/ EZ
				/ EZ1
				/ EZBrown
				/ HC
		
		
== Specifications ==

Cilinder:

This is an amazon black waterbottle. dimensions are: 22.5x7 cm. 

Square:

Foam:

Carton:

EZ:

EZ1:

EZBrown:

HC:

Arena:

Robotic setup:


