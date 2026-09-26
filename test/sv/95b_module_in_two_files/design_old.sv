// a backup the student kept next to the real file (lab4_old.sv): the same module name, an older body
module top(input logic [15:0] sw, output logic [15:0] led);
  assign led = ~sw;
endmodule
