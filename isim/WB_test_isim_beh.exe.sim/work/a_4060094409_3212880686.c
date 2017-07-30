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
static const char *ng0 = "E:/Xilinx/Project/MyCPU/WBcom.vhd";
extern char *IEEE_P_3620187407;
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1258338084_503743352(char *, char *, unsigned int , unsigned int );
char *ieee_p_3620187407_sub_436279890_3965413181(char *, char *, char *, char *, int );


static void work_a_4060094409_3212880686_p_0(char *t0)
{
    char t13[16];
    char t22[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned char t11;
    unsigned char t12;
    int t14;
    unsigned int t15;
    unsigned char t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    int t23;
    char *t24;
    char *t25;
    char *t26;
    unsigned int t27;

LAB0:    xsi_set_current_line(61, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t4 = *((unsigned char *)t2);
    t11 = (t4 == (unsigned char)3);
    if (t11 == 1)
        goto LAB7;

LAB8:    t3 = (unsigned char)0;

LAB9:    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 4680);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(62, ng0);
    t1 = (t0 + 7167);
    t6 = (t0 + 4776);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 16U);
    xsi_driver_first_trans_fast_port(t6);
    goto LAB3;

LAB5:    xsi_set_current_line(64, ng0);
    t5 = (t0 + 2152U);
    t6 = *((char **)t5);
    t5 = (t0 + 7020U);
    t7 = (t0 + 7183);
    t9 = (t13 + 0U);
    t10 = (t9 + 0U);
    *((int *)t10) = 0;
    t10 = (t9 + 4U);
    *((int *)t10) = 4;
    t10 = (t9 + 8U);
    *((int *)t10) = 1;
    t14 = (4 - 0);
    t15 = (t14 * 1);
    t15 = (t15 + 1);
    t10 = (t9 + 12U);
    *((unsigned int *)t10) = t15;
    t16 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t6, t5, t7, t13);
    if (t16 != 0)
        goto LAB10;

LAB12:    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t1 = (t0 + 7020U);
    t5 = (t0 + 7188);
    t7 = (t13 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 0;
    t8 = (t7 + 4U);
    *((int *)t8) = 4;
    t8 = (t7 + 8U);
    *((int *)t8) = 1;
    t14 = (4 - 0);
    t15 = (t14 * 1);
    t15 = (t15 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t15;
    t4 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t5, t13);
    if (t4 == 1)
        goto LAB15;

LAB16:    t3 = (unsigned char)0;

LAB17:    if (t3 != 0)
        goto LAB13;

LAB14:    xsi_set_current_line(69, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 6972U);
    t5 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t13, t2, t1, 1);
    t6 = (t13 + 12U);
    t15 = *((unsigned int *)t6);
    t27 = (1U * t15);
    t3 = (16U != t27);
    if (t3 == 1)
        goto LAB18;

LAB19:    t7 = (t0 + 4776);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t17 = *((char **)t10);
    memcpy(t17, t5, 16U);
    xsi_driver_first_trans_fast_port(t7);

LAB11:    goto LAB3;

LAB7:    t1 = (t0 + 1952U);
    t12 = xsi_signal_has_event(t1);
    t3 = t12;
    goto LAB9;

LAB10:    xsi_set_current_line(65, ng0);
    t10 = (t0 + 1672U);
    t17 = *((char **)t10);
    t10 = (t0 + 4776);
    t18 = (t10 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    memcpy(t21, t17, 16U);
    xsi_driver_first_trans_fast_port(t10);
    goto LAB11;

LAB13:    xsi_set_current_line(67, ng0);
    t19 = (t0 + 1672U);
    t20 = *((char **)t19);
    t19 = (t0 + 4776);
    t21 = (t19 + 56U);
    t24 = *((char **)t21);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    memcpy(t26, t20, 16U);
    xsi_driver_first_trans_fast_port(t19);
    goto LAB11;

LAB15:    t8 = (t0 + 1832U);
    t9 = *((char **)t8);
    t8 = (t0 + 7004U);
    t10 = (t0 + 7193);
    t18 = (t22 + 0U);
    t19 = (t18 + 0U);
    *((int *)t19) = 0;
    t19 = (t18 + 4U);
    *((int *)t19) = 7;
    t19 = (t18 + 8U);
    *((int *)t19) = 1;
    t23 = (7 - 0);
    t15 = (t23 * 1);
    t15 = (t15 + 1);
    t19 = (t18 + 12U);
    *((unsigned int *)t19) = t15;
    t11 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t9, t8, t10, t22);
    t3 = t11;
    goto LAB17;

LAB18:    xsi_size_not_matching(16U, t27, 0);
    goto LAB19;

}

static void work_a_4060094409_3212880686_p_1(char *t0)
{
    char t16[16];
    char t25[16];
    char t33[16];
    char t41[16];
    char t49[16];
    char t57[16];
    unsigned char t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    unsigned char t6;
    unsigned char t7;
    unsigned char t8;
    unsigned char t9;
    unsigned char t10;
    unsigned char t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t17;
    char *t18;
    int t19;
    unsigned int t20;
    unsigned char t21;
    char *t22;
    char *t23;
    char *t24;
    char *t26;
    char *t27;
    int t28;
    unsigned char t29;
    char *t30;
    char *t31;
    char *t32;
    char *t34;
    char *t35;
    int t36;
    unsigned char t37;
    char *t38;
    char *t39;
    char *t42;
    char *t43;
    int t44;
    unsigned char t45;
    char *t46;
    char *t47;
    char *t50;
    char *t51;
    int t52;
    unsigned char t53;
    char *t54;
    char *t55;
    char *t58;
    char *t59;
    int t60;
    unsigned char t61;
    char *t62;
    char *t63;
    char *t64;
    char *t65;

LAB0:    xsi_set_current_line(77, ng0);
    t2 = (t0 + 1992U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)3);
    if (t5 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 4696);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(78, ng0);
    t12 = (t0 + 2152U);
    t13 = *((char **)t12);
    t12 = (t0 + 7020U);
    t14 = (t0 + 7201);
    t17 = (t16 + 0U);
    t18 = (t17 + 0U);
    *((int *)t18) = 0;
    t18 = (t17 + 4U);
    *((int *)t18) = 4;
    t18 = (t17 + 8U);
    *((int *)t18) = 1;
    t19 = (4 - 0);
    t20 = (t19 * 1);
    t20 = (t20 + 1);
    t18 = (t17 + 12U);
    *((unsigned int *)t18) = t20;
    t21 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t13, t12, t14, t16);
    if (t21 == 1)
        goto LAB23;

LAB24:    t18 = (t0 + 2152U);
    t22 = *((char **)t18);
    t18 = (t0 + 7020U);
    t23 = (t0 + 7206);
    t26 = (t25 + 0U);
    t27 = (t26 + 0U);
    *((int *)t27) = 0;
    t27 = (t26 + 4U);
    *((int *)t27) = 4;
    t27 = (t26 + 8U);
    *((int *)t27) = 1;
    t28 = (4 - 0);
    t20 = (t28 * 1);
    t20 = (t20 + 1);
    t27 = (t26 + 12U);
    *((unsigned int *)t27) = t20;
    t29 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t22, t18, t23, t25);
    t11 = t29;

LAB25:    if (t11 == 1)
        goto LAB20;

LAB21:    t27 = (t0 + 2152U);
    t30 = *((char **)t27);
    t27 = (t0 + 7020U);
    t31 = (t0 + 7211);
    t34 = (t33 + 0U);
    t35 = (t34 + 0U);
    *((int *)t35) = 0;
    t35 = (t34 + 4U);
    *((int *)t35) = 4;
    t35 = (t34 + 8U);
    *((int *)t35) = 1;
    t36 = (4 - 0);
    t20 = (t36 * 1);
    t20 = (t20 + 1);
    t35 = (t34 + 12U);
    *((unsigned int *)t35) = t20;
    t37 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t30, t27, t31, t33);
    t10 = t37;

LAB22:    if (t10 == 1)
        goto LAB17;

LAB18:    t35 = (t0 + 2152U);
    t38 = *((char **)t35);
    t35 = (t0 + 7020U);
    t39 = (t0 + 7216);
    t42 = (t41 + 0U);
    t43 = (t42 + 0U);
    *((int *)t43) = 0;
    t43 = (t42 + 4U);
    *((int *)t43) = 4;
    t43 = (t42 + 8U);
    *((int *)t43) = 1;
    t44 = (4 - 0);
    t20 = (t44 * 1);
    t20 = (t20 + 1);
    t43 = (t42 + 12U);
    *((unsigned int *)t43) = t20;
    t45 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t38, t35, t39, t41);
    t9 = t45;

LAB19:    if (t9 == 1)
        goto LAB14;

LAB15:    t43 = (t0 + 2152U);
    t46 = *((char **)t43);
    t43 = (t0 + 7020U);
    t47 = (t0 + 7221);
    t50 = (t49 + 0U);
    t51 = (t50 + 0U);
    *((int *)t51) = 0;
    t51 = (t50 + 4U);
    *((int *)t51) = 4;
    t51 = (t50 + 8U);
    *((int *)t51) = 1;
    t52 = (4 - 0);
    t20 = (t52 * 1);
    t20 = (t20 + 1);
    t51 = (t50 + 12U);
    *((unsigned int *)t51) = t20;
    t53 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t46, t43, t47, t49);
    t8 = t53;

LAB16:    if (t8 == 1)
        goto LAB11;

LAB12:    t51 = (t0 + 2152U);
    t54 = *((char **)t51);
    t51 = (t0 + 7020U);
    t55 = (t0 + 7226);
    t58 = (t57 + 0U);
    t59 = (t58 + 0U);
    *((int *)t59) = 0;
    t59 = (t58 + 4U);
    *((int *)t59) = 4;
    t59 = (t58 + 8U);
    *((int *)t59) = 1;
    t60 = (4 - 0);
    t20 = (t60 * 1);
    t20 = (t20 + 1);
    t59 = (t58 + 12U);
    *((unsigned int *)t59) = t20;
    t61 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t54, t51, t55, t57);
    t7 = t61;

LAB13:    if (t7 != 0)
        goto LAB8;

LAB10:    xsi_set_current_line(85, ng0);
    t2 = (t0 + 4840);
    t3 = (t2 + 56U);
    t12 = *((char **)t3);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);

LAB9:    goto LAB3;

LAB5:    t2 = (t0 + 1152U);
    t6 = ieee_p_2592010699_sub_1258338084_503743352(IEEE_P_2592010699, t2, 0U, 0U);
    t1 = t6;
    goto LAB7;

LAB8:    xsi_set_current_line(79, ng0);
    t59 = (t0 + 4840);
    t62 = (t59 + 56U);
    t63 = *((char **)t62);
    t64 = (t63 + 56U);
    t65 = *((char **)t64);
    *((unsigned char *)t65) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t59);
    xsi_set_current_line(80, ng0);
    t2 = (t0 + 2152U);
    t3 = *((char **)t2);
    t2 = (t0 + 7020U);
    t12 = (t0 + 7231);
    t14 = (t16 + 0U);
    t15 = (t14 + 0U);
    *((int *)t15) = 0;
    t15 = (t14 + 4U);
    *((int *)t15) = 4;
    t15 = (t14 + 8U);
    *((int *)t15) = 1;
    t19 = (4 - 0);
    t20 = (t19 * 1);
    t20 = (t20 + 1);
    t15 = (t14 + 12U);
    *((unsigned int *)t15) = t20;
    t4 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t3, t2, t12, t16);
    if (t4 == 1)
        goto LAB29;

LAB30:    t15 = (t0 + 2152U);
    t17 = *((char **)t15);
    t15 = (t0 + 7020U);
    t18 = (t0 + 7236);
    t23 = (t25 + 0U);
    t24 = (t23 + 0U);
    *((int *)t24) = 0;
    t24 = (t23 + 4U);
    *((int *)t24) = 4;
    t24 = (t23 + 8U);
    *((int *)t24) = 1;
    t28 = (4 - 0);
    t20 = (t28 * 1);
    t20 = (t20 + 1);
    t24 = (t23 + 12U);
    *((unsigned int *)t24) = t20;
    t5 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t17, t15, t18, t25);
    t1 = t5;

LAB31:    if (t1 != 0)
        goto LAB26;

LAB28:    xsi_set_current_line(82, ng0);
    t2 = (t0 + 1832U);
    t3 = *((char **)t2);
    t2 = (t0 + 4904);
    t12 = (t2 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t3, 8U);
    xsi_driver_first_trans_fast_port(t2);

LAB27:    xsi_set_current_line(84, ng0);
    t2 = (t0 + 2312U);
    t3 = *((char **)t2);
    t2 = (t0 + 4968);
    t12 = (t2 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t3, 3U);
    xsi_driver_first_trans_fast_port(t2);
    goto LAB9;

LAB11:    t7 = (unsigned char)1;
    goto LAB13;

LAB14:    t8 = (unsigned char)1;
    goto LAB16;

LAB17:    t9 = (unsigned char)1;
    goto LAB19;

LAB20:    t10 = (unsigned char)1;
    goto LAB22;

LAB23:    t11 = (unsigned char)1;
    goto LAB25;

LAB26:    xsi_set_current_line(81, ng0);
    t24 = (t0 + 1352U);
    t26 = *((char **)t24);
    t24 = (t0 + 4904);
    t27 = (t24 + 56U);
    t30 = *((char **)t27);
    t31 = (t30 + 56U);
    t32 = *((char **)t31);
    memcpy(t32, t26, 8U);
    xsi_driver_first_trans_fast_port(t24);
    goto LAB27;

LAB29:    t1 = (unsigned char)1;
    goto LAB31;

}


extern void work_a_4060094409_3212880686_init()
{
	static char *pe[] = {(void *)work_a_4060094409_3212880686_p_0,(void *)work_a_4060094409_3212880686_p_1};
	xsi_register_didat("work_a_4060094409_3212880686", "isim/WB_test_isim_beh.exe.sim/work/a_4060094409_3212880686.didat");
	xsi_register_executes(pe);
}
