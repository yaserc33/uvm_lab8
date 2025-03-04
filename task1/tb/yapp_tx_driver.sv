class yapp_tx_driver extends uvm_driver #(yapp_packet);

`uvm_component_utils(yapp_tx_driver)

yapp_packet packet;

function new(string name = "driver" , uvm_component parent);
super.new(name,parent);
endfunction


function void build_phase (uvm_phase phase);
    super.build_phase(phase);
    `uvm_info("drv", "build phase!", UVM_HIGH)



endfunction

function void start_of_simulation_phase(uvm_phase phase);
super.start_of_simulation_phase(phase);
`uvm_info(get_type_name(), "running start_of_simulation_phase🙏🏻" , UVM_HIGH)
endfunction

task run_phase (uvm_phase phase);
    super.run_phase(phase);
    `uvm_info("drv", "Inside Run Phase!", UVM_HIGH)
    
    forever begin
        
        packet = yapp_packet::type_id::create("packet");
        seq_item_port.get_next_item(packet);
        send_to_dut(packet);
        seq_item_port.item_done();
    end

endtask


task send_to_dut(yapp_packet packet);
    `uvm_info("drv" ,$sformatf("Packet is \n%s", packet.sprint()) , UVM_LOW)

    #10;

endtask



endclass