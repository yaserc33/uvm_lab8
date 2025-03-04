class base_test  extends uvm_test;

`uvm_component_utils(base_test)


function new(string name ="base_test" , uvm_component parent);
super.new(name,parent);

endfunction


router_tb tb;

function void build_phase (uvm_phase phase);
super.build_phase(phase);
uvm_config_wrapper::set(this, "tb.uvc1.agt.seqr.run_phase",  "default_sequence", yapp_5_packets::get_type()); 
tb = router_tb::type_id::create("tb" , this);
uvm_config_int::set( this, "*", "recording_detail", 1); 
`uvm_info("base_test", "build_phase completed" , UVM_HIGH )
endfunction


function void check_phase (uvm_phase phase);
`uvm_info(get_type_name(), "running check_phase✅" , UVM_HIGH)
check_config_usage(); 


endfunction



function void end_of_elaboration_phase (uvm_phase phase);

uvm_top.print_topology();


endfunction

endclass



class short_yapp_test  extends base_test;

`uvm_component_utils(short_yapp_test)


function new(string name ="short_yapp_test" , uvm_component parent);
super.new(name,parent);

endfunction




function void build_phase (uvm_phase phase);
super.build_phase(phase);
set_type_override_by_type(yapp_packet::get_type() , short_yapp_packet::get_type());

`uvm_info("short_test", "build_phase completed" , UVM_HIGH )
endfunction


endclass : short_yapp_test




// class sett  extends base_test;

// `uvm_component_utils(sett)


// function new(string name ="sett" , uvm_component parent);
// super.new(name,parent);

// endfunction




// function void build_phase (uvm_phase phase);
// uvm_config_int::set(this , "tb.uvc1.agt", "is_active", UVM_PASSIVE);
// super.build_phase(phase);

// `uvm_info("sett", "build_phase completed" , UVM_HIGH )
// endfunction


// endclass : sett