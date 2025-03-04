
module top  ;

import uvm_pkg::*;
`include "uvm_macros.svh"

import yapp_pkg::*;


//yapp_packet tr;

initial begin
//tr = yapp_packet::type_id::create("tr", null);
// repeat (5) begin
//     tr.randomize();
//     tr.print( );
// end



run_test("base_test");

end



endmodule