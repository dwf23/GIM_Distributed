// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.1 (64-bit)
// Tool Version Limit: 2024.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#ifdef SDT
#include "xparameters.h"
#endif
#include "xaccelerator.h"

extern XAccelerator_Config XAccelerator_ConfigTable[];

#ifdef SDT
XAccelerator_Config *XAccelerator_LookupConfig(UINTPTR BaseAddress) {
	XAccelerator_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XAccelerator_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XAccelerator_ConfigTable[Index].Control_BaseAddress == BaseAddress) {
			ConfigPtr = &XAccelerator_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XAccelerator_Initialize(XAccelerator *InstancePtr, UINTPTR BaseAddress) {
	XAccelerator_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XAccelerator_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XAccelerator_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XAccelerator_Config *XAccelerator_LookupConfig(u16 DeviceId) {
	XAccelerator_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XACCELERATOR_NUM_INSTANCES; Index++) {
		if (XAccelerator_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XAccelerator_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XAccelerator_Initialize(XAccelerator *InstancePtr, u16 DeviceId) {
	XAccelerator_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XAccelerator_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XAccelerator_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

