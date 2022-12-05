.include TSMC_180nm.txt
.param SUPPLY = 1.8
.param LAMBDA = 0.18u
.param width_N = {10*LAMBDA}
.param width_P = {2.5*width_N}
.global gnd vdd

VDS vdd gnd 'SUPPLY'
vin in gnd pulse 0 1.8 0ns 100ps 100ps 9.9ns 20ns

M1 out in vdd vdd CMOSP W={width_P} L={LAMBDA} 
+ AS={5*width_P*LAMBDA} PS={10*LAMBDA+2*width_P} AD={5*width_P*LAMBDA} PD={10*LAMBDA+2*width_P}

M2 out in gnd gnd CMOSN W={width_N} L={LAMBDA} 
+ AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}

Cout c gnd 100f

.tran 0.1n 200n
.measure tran trise 
+ TRIG v(out) VAL = 'SUPPLY/2' RISE =1 
+ TARG v(in) VAL = 'SUPPLY/2' FALL =1

.measure tran tfall 
+ TRIG v(in) VAL = 'SUPPLY/2' RISE =1 
+ TARG v(out) VAL = 'SUPPLY/2' FALL=1

.measure tran tpd param = '(trise + tfall)/2' goal = 0

.control

run
plot  v(out)+2 v(in)

hardcopy QN_7a.eps  v(in) v(out)+2 

.endc                    
