Author: Mohamed Idries
Date: 07/12/2016 12:58

This file serves to explain the document structure and the trial setups and arena conditions. The following illustration serves to explain the variables I will be referring to:

	 |	<-x-	0	
	 |		|		   
	 |		y		   
wx ->|					
	 |				   
	 |				   
	 |______________|
			^
			|
			wy
legend:
wx - wall X
wy - wall Y
x - distance between sonar and wx = 1m
y - distance between sonar and wy = 1m
arena - the testing ground
angles are from 0 till 90 and back from 90 till 0


== Document structure ==

/
	README 							- Current document you are reading
	/ Code							- Arduino code
	/ Time							- stops at every angle for an x amount of milliseconds
		/EZ
			/ 10.txt
			/ 50.txt
			/ 100.txt
		/EZ1
			/ 10.txt
			/ 50.txt
			/ 100.txt
		/EZBrown
			/ 10.txt
			/ 50.txt
			/ 100.txt
	/ Angle							- stops at every angle for an x amount of readings
		/EZ
			/ 10.txt
			/ 25.txt
			/ 50.txt
		/EZ1
			/ 10.txt
			/ 25.txt
			/ 50.txt
		/EZBrown
			/ 10.txt
			/ 25.txt
			/ 50.txt
	/ Continous						- continous reading of the scan
		/EZ
			/ data.txt
		/EZ1
			/ data.txt
		/EZBrown
			/ data.txt