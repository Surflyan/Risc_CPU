/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "E:/Xilinx/Project/MyCPU/CLKcom.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_1080861485_3212880686_p_0(char *t0)
{
    char t26[16];
    char t28[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    unsigned char t12;
    char *t13;
    char *t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;
    char *t19;
    int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned char t24;
    char *t25;
    char *t27;
    char *t29;
    char *t30;
    int t31;
    unsigned int t32;
    unsigned char t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    char *t38;

LAB0:    xsi_set_current_line(43, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB3;

LAB4:    t11 = (t0 + 992U);
    t12 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t11, 0U, 0U);
    if (t12 != 0)
        goto LAB5;

LAB6:
LAB2:    t38 = (t0 + 3240);
    *((int *)t38) = 1;

LAB1:    return;
LAB3:    t1 = (t0 + 5002);
    t6 = (t0 + 3336);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 4U);
    xsi_driver_first_trans_fast(t6);
    goto LAB2;

LAB5:    t13 = (t0 + 1512U);
    t14 = *((char **)t13);
    t15 = (3 - 2);
    t16 = (t15 * 1U);
    t17 = (0 + t16);
    t13 = (t14 + t17);
    t18 = (t0 + 1512U);
    t19 = *((char **)t18);
    t20 = (3 - 3);
    t21 = (t20 * -1);
    t22 = (1U * t21);
    t23 = (0 + t22);
    t18 = (t19 + t23);
    t24 = *((unsigned char *)t18);
    t27 = ((IEEE_P_2592010699) + 4024);
    t29 = (t28 + 0U);
    t30 = (t29 + 0U);
    *((int *)t30) = 2;
    t30 = (t29 + 4U);
    *((int *)t30) = 0;
    t30 = (t29 + 8U);
    *((int *)t30) = -1;
    t31 = (0 - 2);
    t32 = (t31 * -1);
    t32 = (t32 + 1);
    t30 = (t29 + 12U);
    *((unsigned int *)t30) = t32;
    t25 = xsi_base_array_concat(t25, t26, t27, (char)97, t13, t28, (char)99, t24, (char)101);
    t32 = (3U + 1U);
    t33 = (4U != t32);
    if (t33 == 1)
        goto LAB7;

LAB8:    t30 = (t0 + 3336);
    t34 = (t30 + 56U);
    t35 = *((char **)t34);
    t36 = (t35 + 56U);
    t37 = *((char **)t36);
    memcpy(t37, t25, 4U);
    xsi_driver_first_trans_fast(t30);
    goto LAB2;

LAB7:    xsi_size_not_matching(4U, t32, 0);
    goto LAB8;

}

static void work_a_1080861485_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(45, ng0);

LAB3:    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 3400);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 4U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 3256);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_1080861485_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1080861485_3212880686_p_0,(void *)work_a_1080861485_3212880686_p_1};
	xsi_register_didat("work_a_1080861485_3212880686", "isim/CPU_test_isim_beh.exe.sim/work/a_1080861485_3212880686.didat");
	xsi_register_executes(pe);
}
