class router_tb extends uvm_env;
    `uvm_component_utils(router_tb)

yapp_uvc  uvc1;

function  new (string name = "router_tb" , uvm_component parent );
    super.new(name , parent);
endfunction


function  void build_phase(uvm_phase phase) ;
super.build_phase(phase);
`uvm_info("router_tb", "buildphase completed" , UVM_HIGH )
uvc1 = yapp_uvc::type_id::create("uvc1" ,this);

endfunction



endclass