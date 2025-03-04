class yapp_tx_monitor extends uvm_monitor;

`uvm_component_utils(yapp_tx_monitor)

function  new(string name = "yapp_tx_monitor", uvm_component parent);
super.new(name , parent);

    
endfunction


function void start_of_simulation_phase(uvm_phase phase);
super.start_of_simulation_phase(phase);
`uvm_info(get_type_name(), "running start_of_simulation_phase🙏🏻" , UVM_HIGH)
endfunction

task run_phase(uvm_phase phase);
    super.run_phase(phase);
    `uvm_info("mon" , "run phase", UVM_LOW)
endtask








    
endclass