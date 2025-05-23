#ifndef GIM_MODEL_PERIPHERAL
#define GIM_MODEL_PERIPHERAL

#include "ap_fixed.h"
#include <cmath>
#include <algorithm>
#include <vector>
#include <iostream>

#define ARRAY_SIZE 2
#define NUM_ITERATIONS 500

typedef ap_fixed<16,4> fixed_16;
using namespace std;


// these structs are used to hold return values/arrays for simplicity
// of return statements (i.e. no pointers used)
struct Weight{
	// members     
	fixed_16 sum_delta_out;         
	fixed_16 sum_output_out;
	fixed_16 weight_change;
	// constructor
	Weight(){}
}; 

struct Bias {
	// members
	fixed_16 net_sum;
	fixed_16 bias_change;
	// constructor
	Bias(){}
};

struct Array {
	// members
    fixed_16 output_k[ARRAY_SIZE];
    fixed_16 delta_kmin1[ARRAY_SIZE];
    fixed_16 weight_changes[ARRAY_SIZE][ARRAY_SIZE];
    fixed_16 bias_change[ARRAY_SIZE];
	// constructor
	Array(){}
};

struct Inference {
	// members
	fixed_16 inference[4];
	fixed_16 new_w1[ARRAY_SIZE][ARRAY_SIZE];
	fixed_16 new_w2[ARRAY_SIZE][ARRAY_SIZE];
	fixed_16 new_b1[ARRAY_SIZE];
	fixed_16 new_b2[ARRAY_SIZE];
	// constructor
	Inference(){}
};

// processing elements, array, and accelerator function prototypes
Weight weights_pe(fixed_16 delta_k, fixed_16 output_kmin1, fixed_16 partial_sum_out_k,
				fixed_16 partial_sum_delta_k, fixed_16 init_weight,
				fixed_16 eta, fixed_16 training);

Bias bias_pe(fixed_16 delta_k,
				fixed_16 sum_in,
				fixed_16 init_bias,
				fixed_16 eta,
				fixed_16 training);

fixed_16 act_pe(fixed_16 net_in, char model, fixed_16 alpha);

fixed_16 error_pe(fixed_16 output_kmin1, fixed_16 partial_sum_delta_k,
				char model, fixed_16 alpha);

Array model_array(fixed_16 weights[ARRAY_SIZE][ARRAY_SIZE],
			fixed_16 biases[ARRAY_SIZE],
			fixed_16 output_kmin1[ARRAY_SIZE],
			fixed_16 delta_k[ARRAY_SIZE], fixed_16 eta,
			char model, fixed_16 alpha, fixed_16 training);

Inference accelerator_peripheral(fixed_16 w1[ARRAY_SIZE][ARRAY_SIZE], fixed_16 w2[ARRAY_SIZE][ARRAY_SIZE],
				fixed_16  bias_1[ARRAY_SIZE], fixed_16 bias_2[ARRAY_SIZE],
                fixed_16 training);

#endif // GIM_MODEL_