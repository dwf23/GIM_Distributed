#include "definitions.h"
#include <bitset>


ap_uint<32 * ARRAY_SIZE> convert_to_bitstream(int data[ARRAY_SIZE]) {
    ap_uint<32 * ARRAY_SIZE> bitstream = 0;
    for (int i = 0; i < ARRAY_SIZE; i++) {        
        ap_uint<32 * ARRAY_SIZE> number = *reinterpret_cast<ap_uint<32>*>(&data[i]);
        //std::cout << "Converted number: " << std::bitset<32>(number) << std::endl;;
        bitstream = (number << (i*32)) | bitstream;  // Shift and concatenate
    }
    //std::cout << "Bitstream: " << std::bitset<64>(bitstream) << std::endl;
    return bitstream;
}

void send_data(packet_line& tx_stream, bool &flag, volatile bool &loop, int &received_val_1, int &received_val_2, comm_line &alpha_tx, bool &send_sent_flag) {
    #pragma HLS INTERFACE mode=s_axilite port=flag
    #pragma HLS INTERFACE mode=s_axilite port=loop
    #pragma HLS INTERFACE mode=s_axilite port=received_val_1
    #pragma HLS INTERFACE mode=s_axilite port=received_val_2
    #pragma HLS INTERFACE mode=s_axilite port=send_sent_flag
    #pragma HLS INTERFACE ap_hs port=alpha_tx
    #pragma HLS interface s_axilite port=return
    #pragma HLS pipeline II=2
    //#pragma HLS INTERFACE ap_fifo port=tx_stream
    #pragma HLS INTERFACE axis port=tx_stream

    axis<int, 0, 1, 1> in_val;
    ap_uint<32* ARRAY_SIZE> bitstream;
    bool bit;
    

    while(loop){
        if(!tx_stream.empty()){
            // std::cout << "Done resetting internally" << std::endl;
            std::cout << "Checkpoint" << std::endl;
            in_val = tx_stream.read();
            if(in_val.dest == 2){
                std::cout << "Received Valid Data" << std::endl;
                in_val.display();
                // std::cout << "Received ID" << in_val.ID << std::endl;
                flag = true;
                received_val_1 = in_val.data[0];
                received_val_2 = in_val.data[1];
                bitstream = convert_to_bitstream(in_val.data);
                for(int i = 0; i < 32*ARRAY_SIZE; i++){
                    while(!alpha_tx.ready());
                    bit = (bitstream >> i) & 1;
                    alpha_tx.write(bit);
                }
                send_sent_flag = 1;
            }
            else{
                std::cout << "Received Invalid Data" << std::endl;
            }

        }
    }
 }

 