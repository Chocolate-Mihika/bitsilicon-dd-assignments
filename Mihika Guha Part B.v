                                    Getting Started


1.Getting Started
module top_module( output one );

// Insert your code here
    assign one = 1'b1;

endmodule

2. Zero
module top_module(
    output zero
);// Module body starts after semicolon
    assign zero = 1'b0;
endmodule

module top_module(
    output zero
);// Module body starts after semicolon
    assign zero = 1'b0;
endmodule

                                      Verilog Language

1.Simple Wire
module top_module( input in, output out );
    assign out = in;
endmodule


2.Four Wires

module top_module( 
    input a,b,c,
    output w,x,y,z );
    assign w = a;
    assign x = b;
    assign y = b;
    assign z = c;
endmodule


3.Inverter

module top_module( input in, output out );
    assign out = !in;
endmodule


4. AND Gate
module top_module( 
    input a, 
    input b, 
    output out );
    assign out = a&b;
endmodule

5. NOR Gate 
module top_module( 
    input a, 
    input b, 
    output out );
    assign out = !(a|b);
endmodule

6. XNOR Gate
module top_module( 
    input a, 
    input b, 
    output out );
    assign out = !(a^b);
endmodule

7. Declaring Wires
`default_nettype none
module top_module(
    input a,
    input b,
    input c,
    input d,
    output out,
    output out_n   ); 
    wire one = a&b;
    wire two = c&d;
    assign out = one | two;
    assign out_n = !out;
endmodule

8. 7458 Chip
module top_module ( 
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );
    wire a = p2a&p2b;
    wire b = p1a&p1b&p1c;
    wire c = p2c&p2d;
    wire d = p1d&p1e&p1f;
    assign p2y = a|c;
    assign p1y = b|d;

endmodule




 NOR Gate Declaring Wires
7458 chip



