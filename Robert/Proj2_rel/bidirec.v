module bidirec (input wire oe, input wire inp, output wire outp, inout wire bidir);

/*
assign bidir = oe ? inp : 1'bZ ;
assign outp  = bidir;
*/

IOBUF #(
   .DRIVE(16), // Specify the output drive strength
   .IOSTANDARD("LVCMOS33")
 
)IIC_0_scl_iobuf
       (.I(inp),
        .IO(bidir),
        .O(outp),
        .T(oe));
endmodule