#include "hls_stream.h"
#include "hls_directio.h"
#include "ap_axi_sdata.h"
#include "ap_int.h"
#include <iostream>
#include <memory>
#include "GIM_comm.h"



void example_acc(fixed_16 out_w1, fixed_16 out_w2, fixed_16 in_w1, fixed_16 in_w2, packet_line &data_out, packet_line &data_in, bool expecting_input){

    #pragma HLS INTERFACE mode=s_axilite port=out_w1
    #pragma HLS INTERFACE mode=s_axilite port=out_w2
    #pragma HLS INTERFACE mode=s_axilite port=in_w1
    #pragma HLS INTERFACE mode=s_axilite port=in_w2
    #pragma HLS INTERFACE mode=s_axilite port=expecting_input
    #pragma HLS INTERFACE mode=s_axilite port=return
    #pragma HLS INTERFACE ap_fifo port=data_out
    #pragma HLS INTERFACE ap_fifo port=data_in
    #pragma HLS RESOURCE variable=data_out core=AXIS  
    #pragma HLS RESOURCE variable=data_in core=AXIS  

    fixed_16 example_data[ARRAY_SIZE] = {out_w1, out_w2};
    pkt example_packet;
    pkt read_packet;
    example_packet.ID = 0; 
    std::copy(example_data, example_data + ARRAY_SIZE, example_packet.data);

    if(data_out.write_nb(example_packet)){
        std::cout << "Wrote data " << out_w1.to_float() << "and " << out_w2.to_float() << std::endl;
    }
    else{
        std::cout << "Failed to write data" << std::endl;
    }

    if(expecting_input){
        while(data_in.empty());
        data_in.read(read_packet);
        in_w1 = read_packet.data[0];
        in_w2 = read_packet.data[1];
        std::cout << "Read data" << in_w1.to_float() << "and" << in_w2.to_float() << std::endl;
    } else {
        std::cout << "Not reading data currently" << std::endl;
    }




}