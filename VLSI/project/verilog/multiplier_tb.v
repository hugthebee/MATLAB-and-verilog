`timescale 1ns/10ps

module multiplier_tb;

reg a0,a1,a2,a3,b0,b1,b2,b3;
wire p0,p1,p2,p3,p4,p5,p6,p7;
integer i;

multiplier UUT (a0,a1,a2,a3,b0,b1,b2,b3,p0,p1,p2,p3,p4,p5,p6,p7);

initial
    begin
        $dumpfile("multiplier_tb.vcd");
        $dumpvars(0,multiplier_tb);

        a0 = 0;
        a1 = 0;
        a2 = 0;
        a3 = 0;
        b0 = 0;
        b1 = 0;
        b2 = 0;
        b3 = 0;
    end

initial
    begin
        
       begin
        
        for(i=0;i<256;i=i+1)
        begin
            {a3,a2,a1,a0,b3,b2,b1,b0} = i;
            #10;
        end

    end

    end

always @(b0)
$display("time =%0t \t a3=%b, a2=%b, a1=%b, a0=%b  ;  b3=%b, b2=%b, b1=%b, b0=%b  ;  p7=%b, p6=%b, p5=%b, p4=%b, p3=%b, p2=%b, p1=%b, p0=%b",$time,a3,a2,a1,a0,b3,b2,b1,b0,p7,p6,p5,p4,p3,p2,p1,p0);

endmodule