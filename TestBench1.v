`timescale 1ns/1ps

module tb;

  reg  [17:0] SW;
  reg  [3:3]  KEY;
  wire [6:0]  LEDR;
  wire [6:0]  HEX0;

  integer i;


  Project1 dut (
    .KEY (KEY),
    .SW  (SW),
    .LEDR(LEDR),
    .HEX0(HEX0)
  );

  initial begin
    SW  = 18'b0;
    KEY = 1'b0;
    #5;

    KEY = 1'b0;
    for (i = 0; i < 128; i = i + 1) begin
      SW[6:0]   = i[6:0];
      SW[17:7]  = 11'b0;
      #5;
    end

    KEY = 1'b1;
    for (i = 0; i < 128; i = i + 1) begin
      SW[16:10] = i[6:0];
      SW[9:0]   = 10'b0;
      SW[17]    = 1'b0;
      #5;
    end

    #10;
    $stop;
  end

endmodule

