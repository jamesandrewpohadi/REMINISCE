/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module rom_3 (
    input [5:0] address,
    output reg [15:0] out
  );
  
  
  
  always @* begin
    
    case (address)
      1'h0: begin
        out = 16'h0000;
      end
      1'h1: begin
        out = 16'h0000;
      end
      4'ha: begin
        out = 16'h0000;
      end
      4'hb: begin
        out = 16'h0000;
      end
      7'h64: begin
        out = 16'h0000;
      end
      7'h65: begin
        out = 16'h0000;
      end
      7'h6e: begin
        out = 16'h0000;
      end
      7'h6f: begin
        out = 16'h0000;
      end
      10'h3e8: begin
        out = 16'h0000;
      end
      10'h3e9: begin
        out = 16'h0000;
      end
      10'h3f2: begin
        out = 16'h0000;
      end
      10'h3f3: begin
        out = 16'h0000;
      end
      11'h44c: begin
        out = 16'h0000;
      end
      11'h44d: begin
        out = 16'h0000;
      end
      11'h456: begin
        out = 16'h0000;
      end
      11'h457: begin
        out = 16'h0000;
      end
      14'h2710: begin
        out = 16'h0008;
      end
      14'h2711: begin
        out = 16'h1000;
      end
      14'h271a: begin
        out = 16'h0200;
      end
      14'h271b: begin
        out = 16'h0010;
      end
      14'h2774: begin
        out = 16'hffff;
      end
      14'h2775: begin
        out = 16'h0000;
      end
      14'h277e: begin
        out = 16'h0000;
      end
      14'h277f: begin
        out = 16'h0000;
      end
      14'h2af8: begin
        out = 16'h0000;
      end
      14'h2af9: begin
        out = 16'h0000;
      end
      14'h2b02: begin
        out = 16'h0000;
      end
      14'h2b03: begin
        out = 16'h0000;
      end
      14'h2b5c: begin
        out = 16'h0000;
      end
      14'h2b5d: begin
        out = 16'h0000;
      end
      14'h2b66: begin
        out = 16'h0000;
      end
      14'h2b67: begin
        out = 16'h0000;
      end
      17'h186a0: begin
        out = 16'h0400;
      end
      17'h186a1: begin
        out = 16'h0080;
      end
      17'h186aa: begin
        out = 16'h0001;
      end
      17'h186ab: begin
        out = 16'h4000;
      end
      17'h18704: begin
        out = 16'h0800;
      end
      17'h18705: begin
        out = 16'h0010;
      end
      17'h1870e: begin
        out = 16'hffff;
      end
      17'h1870f: begin
        out = 16'h0000;
      end
      17'h18a88: begin
        out = 16'h0000;
      end
      17'h18a89: begin
        out = 16'h0000;
      end
      17'h18a92: begin
        out = 16'h0000;
      end
      17'h18a93: begin
        out = 16'h0000;
      end
      17'h18aec: begin
        out = 16'h0000;
      end
      17'h18aed: begin
        out = 16'h0000;
      end
      17'h18af6: begin
        out = 16'h0000;
      end
      17'h18af7: begin
        out = 16'h0000;
      end
      17'h1adb0: begin
        out = 16'h2000;
      end
      17'h1adb1: begin
        out = 16'h0200;
      end
      17'h1adba: begin
        out = 16'h0800;
      end
      17'h1adbb: begin
        out = 16'h0004;
      end
      17'h1ae14: begin
        out = 16'h4000;
      end
      17'h1ae15: begin
        out = 16'h0020;
      end
      17'h1ae1e: begin
        out = 16'h8000;
      end
      17'h1ae1f: begin
        out = 16'h0002;
      end
      17'h1b198: begin
        out = 16'h0040;
      end
      17'h1b199: begin
        out = 16'h0004;
      end
      17'h1b1a2: begin
        out = 16'hffff;
      end
      17'h1b1a3: begin
        out = 16'h0000;
      end
      17'h1b1fc: begin
        out = 16'h0000;
      end
      17'h1b1fd: begin
        out = 16'h0000;
      end
      17'h1b206: begin
        out = 16'h0000;
      end
      17'h1b207: begin
        out = 16'h0000;
      end
      default: begin
        out = 16'h0000;
      end
    endcase
  end
endmodule
