#include "ap_int.h"
#include <stdio.h>

void ap_ctl_handler(bool, bool *, bool, bool, bool, ap_uint<3> *);

int main(void){
	bool newStart = 0;
	ap_uint<3> newStatus = 0;
	ap_ctl_handler(1, &newStart, 1, 1, 1, &newStatus);
	if(newStart != 1){
		printf("\nFailed to set ap start");
		return -1;
	}
	if(newStatus != 7){
		printf("\nFailed to set new status");
	}
}
