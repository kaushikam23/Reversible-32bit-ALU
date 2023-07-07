/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2020 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/

#if defined(_WIN32)
 #include "stdio.h"
 #define IKI_DLLESPEC __declspec(dllimport)
#else
 #define IKI_DLLESPEC
#endif
#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2020 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/

#if defined(_WIN32)
 #include "stdio.h"
 #define IKI_DLLESPEC __declspec(dllimport)
#else
 #define IKI_DLLESPEC
#endif
#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
typedef void (*funcp)(char *, char *);
extern int main(int, char**);
IKI_DLLESPEC extern void execute_1009(char*, char *);
IKI_DLLESPEC extern void execute_2383(char*, char *);
IKI_DLLESPEC extern void execute_2384(char*, char *);
IKI_DLLESPEC extern void execute_2385(char*, char *);
IKI_DLLESPEC extern void execute_2386(char*, char *);
IKI_DLLESPEC extern void execute_1008(char*, char *);
IKI_DLLESPEC extern void execute_2380(char*, char *);
IKI_DLLESPEC extern void execute_2381(char*, char *);
IKI_DLLESPEC extern void execute_2382(char*, char *);
IKI_DLLESPEC extern void execute_4(char*, char *);
IKI_DLLESPEC extern void execute_1015(char*, char *);
IKI_DLLESPEC extern void execute_1016(char*, char *);
IKI_DLLESPEC extern void execute_331(char*, char *);
IKI_DLLESPEC extern void vlog_const_rhs_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
IKI_DLLESPEC extern void vlog_simple_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
IKI_DLLESPEC extern void execute_1017(char*, char *);
IKI_DLLESPEC extern void execute_1469(char*, char *);
IKI_DLLESPEC extern void execute_1470(char*, char *);
IKI_DLLESPEC extern void execute_1471(char*, char *);
IKI_DLLESPEC extern void execute_1538(char*, char *);
IKI_DLLESPEC extern void execute_1539(char*, char *);
IKI_DLLESPEC extern void execute_1540(char*, char *);
IKI_DLLESPEC extern void execute_2374(char*, char *);
IKI_DLLESPEC extern void execute_2375(char*, char *);
IKI_DLLESPEC extern void execute_1007(char*, char *);
IKI_DLLESPEC extern void execute_2376(char*, char *);
IKI_DLLESPEC extern void execute_2377(char*, char *);
IKI_DLLESPEC extern void execute_2378(char*, char *);
IKI_DLLESPEC extern void execute_2379(char*, char *);
IKI_DLLESPEC extern void execute_1011(char*, char *);
IKI_DLLESPEC extern void execute_1012(char*, char *);
IKI_DLLESPEC extern void execute_1013(char*, char *);
IKI_DLLESPEC extern void execute_1014(char*, char *);
IKI_DLLESPEC extern void execute_2387(char*, char *);
IKI_DLLESPEC extern void execute_2388(char*, char *);
IKI_DLLESPEC extern void execute_2389(char*, char *);
IKI_DLLESPEC extern void execute_2390(char*, char *);
IKI_DLLESPEC extern void execute_2391(char*, char *);
IKI_DLLESPEC extern void execute_2392(char*, char *);
IKI_DLLESPEC extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
funcp funcTab[40] = {(funcp)execute_1009, (funcp)execute_2383, (funcp)execute_2384, (funcp)execute_2385, (funcp)execute_2386, (funcp)execute_1008, (funcp)execute_2380, (funcp)execute_2381, (funcp)execute_2382, (funcp)execute_4, (funcp)execute_1015, (funcp)execute_1016, (funcp)execute_331, (funcp)vlog_const_rhs_process_execute_0_fast_no_reg_no_agg, (funcp)vlog_simple_process_execute_0_fast_no_reg_no_agg, (funcp)execute_1017, (funcp)execute_1469, (funcp)execute_1470, (funcp)execute_1471, (funcp)execute_1538, (funcp)execute_1539, (funcp)execute_1540, (funcp)execute_2374, (funcp)execute_2375, (funcp)execute_1007, (funcp)execute_2376, (funcp)execute_2377, (funcp)execute_2378, (funcp)execute_2379, (funcp)execute_1011, (funcp)execute_1012, (funcp)execute_1013, (funcp)execute_1014, (funcp)execute_2387, (funcp)execute_2388, (funcp)execute_2389, (funcp)execute_2390, (funcp)execute_2391, (funcp)execute_2392, (funcp)vlog_transfunc_eventcallback};
const int NumRelocateId= 40;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/alu_main_tb_behav/xsim.reloc",  (void **)funcTab, 40);

	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/alu_main_tb_behav/xsim.reloc");
}

	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

void wrapper_func_0(char *dp)

{

}

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/alu_main_tb_behav/xsim.reloc");
	wrapper_func_0(dp);

	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

extern SYSTEMCLIB_IMP_DLLSPEC void local_register_implicit_channel(int, char*);
extern SYSTEMCLIB_IMP_DLLSPEC int xsim_argc_copy ;
extern SYSTEMCLIB_IMP_DLLSPEC char** xsim_argv_copy ;

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_sv_type_file_path_name("xsim.dir/alu_main_tb_behav/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/alu_main_tb_behav/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/alu_main_tb_behav/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, (void*)0, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
