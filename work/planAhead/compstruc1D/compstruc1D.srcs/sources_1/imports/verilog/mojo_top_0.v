/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module mojo_top_0 (
    input clk,
    input rst_n,
    output reg [7:0] led,
    input cclk,
    output reg spi_miso,
    input spi_ss,
    input spi_mosi,
    input spi_sck,
    output reg [3:0] spi_channel,
    input avr_tx,
    output reg avr_rx,
    input avr_rx_busy,
    output reg [23:0] io_led,
    output reg [7:0] io_seg,
    output reg [3:0] io_sel,
    input [4:0] io_button,
    input [23:0] io_dip,
    input button_level_1,
    input button_level_2,
    input button_level_3,
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
  
  
  
  reg rst;
  
  wire [1-1:0] M_reset_cond_out;
  reg [1-1:0] M_reset_cond_in;
  reset_conditioner_1 reset_cond (
    .clk(clk),
    .in(M_reset_cond_in),
    .out(M_reset_cond_out)
  );
  
  wire [1-1:0] M_myBoard_p0;
  wire [1-1:0] M_myBoard_p1;
  wire [1-1:0] M_myBoard_p2;
  wire [1-1:0] M_myBoard_p3;
  wire [1-1:0] M_myBoard_p4;
  wire [1-1:0] M_myBoard_p5;
  wire [1-1:0] M_myBoard_p6;
  wire [1-1:0] M_myBoard_p7;
  wire [1-1:0] M_myBoard_p8;
  wire [1-1:0] M_myBoard_p9;
  wire [1-1:0] M_myBoard_p10;
  wire [1-1:0] M_myBoard_p11;
  wire [1-1:0] M_myBoard_p12;
  wire [1-1:0] M_myBoard_p13;
  wire [1-1:0] M_myBoard_p14;
  wire [1-1:0] M_myBoard_p15;
  reg [16-1:0] M_myBoard_b;
  board_2 myBoard (
    .b(M_myBoard_b),
    .p0(M_myBoard_p0),
    .p1(M_myBoard_p1),
    .p2(M_myBoard_p2),
    .p3(M_myBoard_p3),
    .p4(M_myBoard_p4),
    .p5(M_myBoard_p5),
    .p6(M_myBoard_p6),
    .p7(M_myBoard_p7),
    .p8(M_myBoard_p8),
    .p9(M_myBoard_p9),
    .p10(M_myBoard_p10),
    .p11(M_myBoard_p11),
    .p12(M_myBoard_p12),
    .p13(M_myBoard_p13),
    .p14(M_myBoard_p14),
    .p15(M_myBoard_p15)
  );
  
  wire [16-1:0] M_myRom_out;
  reg [6-1:0] M_myRom_address;
  rom_3 myRom (
    .address(M_myRom_address),
    .out(M_myRom_out)
  );
  
  wire [16-1:0] M_mux2_out;
  reg [16-1:0] M_mux2_a;
  reg [16-1:0] M_mux2_b;
  reg [1-1:0] M_mux2_sel;
  mux_2_4 mux2 (
    .a(M_mux2_a),
    .b(M_mux2_b),
    .sel(M_mux2_sel),
    .out(M_mux2_out)
  );
  
  reg [1:0] level;
  
  reg [3:0] sequence;
  
  always @* begin
    M_reset_cond_in = ~rst_n;
    rst = M_reset_cond_out;
    led = 8'h00;
    spi_miso = 1'bz;
    spi_channel = 4'bzzzz;
    avr_rx = 1'bz;
    io_led = 24'h000000;
    io_seg = 8'hff;
    io_sel = 4'hf;
    M_myBoard_b[0+7-:8] = io_dip[0+7-:8];
    M_myBoard_b[8+7-:8] = io_dip[8+7-:8];
    p0 = M_myBoard_p0;
    p1 = M_myBoard_p1;
    p2 = M_myBoard_p2;
    p3 = M_myBoard_p3;
    p4 = M_myBoard_p4;
    p5 = M_myBoard_p5;
    p6 = M_myBoard_p6;
    p7 = M_myBoard_p7;
    p8 = M_myBoard_p8;
    p9 = M_myBoard_p9;
    p10 = M_myBoard_p10;
    p11 = M_myBoard_p11;
    p12 = M_myBoard_p12;
    p13 = M_myBoard_p13;
    p14 = M_myBoard_p14;
    p15 = M_myBoard_p15;
    level = io_dip[16+4+1-:2];
    sequence = io_dip[16+0+3-:4];
    M_myRom_address = {level, sequence};
    M_mux2_a = 50'h3f28cb71571c7;
    M_mux2_b = 1'h0;
    M_mux2_sel = button_level_1 ^ 1'h1;
    io_led[16+7-:8] = M_mux2_out[8+7-:8];
  end
endmodule
