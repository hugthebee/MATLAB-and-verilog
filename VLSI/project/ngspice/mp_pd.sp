*Propogation delay calculation
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
.global gnd vdd

* give supply voltage values here 
.param SUPPLY = 1.8
VDS vdd gnd 1.8

* making the circuit
i1 a0 gnd pulse 0 1.8 0ns 100p 100p 100n 200n
i2 a1 gnd pulse 0 1.8 0ns 100p 100p 200n 400n
i3 a2 gnd pulse 0 1.8 0ns 100p 100p 400n 800n
i4 a3 gnd pulse 0 1.8 0ns 100ps 100ps 800n 1600n
i5 b0 gnd pulse 0 1.8 0ns 100ps 100ps 1600n 3200n
i6 b1 gnd pulse 0 1.8 0ns 100ps 100ps 3200n 6400n
i7 b2 gnd pulse 0 1.8 0ns 100ps 100ps 6400n 12800n
i8 b3 gnd pulse 0 1.8 0ns 100ps 100ps 12800n 25600n

* subcircuits should always be named with x
xm1 a0 a1 a2 a3 b0 b1 b2 b3 p0 p1 p2 p3 p4 p5 p6 p7 vdd gnd mp

.tran 1n 25600n 200n
.measure tran trise 
+ TRIG v(p0) VAL = 0.9 RISE =1 
+ TARG v(a0) VAL = 0.9 FALL =1

.measure tran tfall 
+ TRIG v(p0) VAL = 0.9 RISE =1 
+ TARG v(a0) VAL = 0.9 FALL=1

.measure tran tpd param = '(trise + tfall)/2' goal = 0

.control

run
plot  p0 a0

.endc                    
.end