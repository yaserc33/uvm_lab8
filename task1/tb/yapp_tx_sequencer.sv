class yapp_tx_sequencer extends uvm_sequencer #(yapp_packet);

`uvm_component_utils(yapp_tx_sequencer)

function  new(string name = "yapp_tx_sequencer", uvm_component parent);
super.new(name , parent);

    
endfunction





function void start_of_simulation_phase(uvm_phase phase);
super.start_of_simulation_phase(phase);
`uvm_info(get_type_name(), "running start_of_simulation_phase🙏🏻" , UVM_HIGH)
endfunction





    
endclass