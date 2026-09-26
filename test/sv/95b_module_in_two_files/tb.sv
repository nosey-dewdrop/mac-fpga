module tb;
  reg [15:0] sw = 16'h0000;
  wire [15:0] led;
  integer i;
  top dut(.sw(sw), .led(led));
  initial begin
    for (i = 0; i < 256; i = i + 1) begin
      sw = i * 16'h0101; #1
      if (led !== sw) begin $display("FAIL: led=%h for sw=%h: the backup module was built", led, sw); $finish; end
    end
    $display("PASS"); $finish;
  end
endmodule
