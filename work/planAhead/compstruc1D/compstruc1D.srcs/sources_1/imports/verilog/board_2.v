/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module board_2 (
    input [15:0] b,
    output reg p0,
    output reg p1,
    output reg p2,
    output reg p3,
    output reg p4,
    output reg p5,
    output reg p6,
    output reg p7,
    output reg p8,
    output reg p9,
    output reg p10,
    output reg p11,
    output reg p12,
    output reg p13,
    output reg p14,
    output reg p15
  );
  
  
  
  always @* begin
    p0 = b[0+0-:1];
    p1 = b[1+0-:1];
    p2 = b[2+0-:1];
    p3 = b[3+0-:1];
    p4 = b[4+0-:1];
    p5 = b[5+0-:1];
    p6 = b[6+0-:1];
    p7 = b[7+0-:1];
    p8 = b[8+0-:1] ^ 1'h1;
    p9 = b[9+0-:1] ^ 1'h1;
    p10 = b[10+0-:1] ^ 1'h1;
    p11 = b[11+0-:1] ^ 1'h1;
    p12 = b[12+0-:1] ^ 1'h1;
    p13 = b[13+0-:1] ^ 1'h1;
    p14 = b[14+0-:1] ^ 1'h1;
    p15 = b[15+0-:1] ^ 1'h1;
  end
endmodule
