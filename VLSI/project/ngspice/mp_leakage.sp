* Leakage current estimation
.include TSMC_180nm.txt
.include nand.sub
.include not.sub
.include and.sub
.include xor.sub
.include or.sub
.include full_adder.sub
.include half_adder.sub
.include mp.sub
.param LAMBDA = 0.18u
.param width_N = {10*LAMBDA}
.param width_P = {2.5*width_N}
.param WMIN = 22n
.global gnd vdd

* give supply voltage values here 
.param SUPPLY = 1
VDS vdd gnd 'SUPPLY'

* making the circuit
i1 a0 gnd 0
i2 a1 gnd 0
i3 a2 gnd 0
i4 a3 gnd 0
i5 b0 gnd 0
i6 b1 gnd 0
i7 b2 gnd 0
i8 b3 gnd 0

* subcircuits should always be named with x
xm1 a0 a1 a2 a3 b0 b1 b2 b3 p0 p1 p2 p3 p4 p5 p6 p7 vdd gnd mp

*Definition of type of analysis
.CONTROL
foreach Vddbasic 1.0
*let Vddbasic = 1
echo _|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_
echo _|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_
echo Vdd basic = $Vddbasic
alter VDS = $Vddbasic
foreach width_N 22n 
    echo 
	echo _|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_
	echo
	echo WMIN=$width
	echo

	    foreach input 0 $Vddbasic
 	    alter i8 = $input
 	    	foreach input 0 $Vddbasic 
			alter i7 = $input
                foreach input 0 $Vddbasic 
				alter i6 = $input
                    foreach input 0 $Vddbasic 
				    alter i5 = $input
                        foreach input 0 $Vddbasic 
				        alter i4 = $input
                            foreach input 0 $Vddbasic 
				            alter i3 = $input
                                foreach input 0 $Vddbasic 
				                alter i2 = $input
                                    foreach input 0 $Vddbasic 
				                    alter i1 = $input
			                        echo DC Analysis at 30C and 100C
		                        	dc TEMP 30 100 70
			                    	print V(vdd) V(a0) V(b0) (-V(vdd)*I(VDS)) ((-V(vdd)*I(VDS))+(-V(a0)*I(i1))+(-V(b0)*I(i5)))
                                    end
                                end
                            end
                        end
                    end
	        	end
            end	 
        end
end
.ENDC
.END
