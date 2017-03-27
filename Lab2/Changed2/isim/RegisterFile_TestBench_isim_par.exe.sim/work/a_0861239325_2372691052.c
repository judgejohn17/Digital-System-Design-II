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
static const char *ng0 = "D:/DSDII/Lab2Fixed/RegisterFile_TestBench.vhd";
extern char *IEEE_P_3620187407;

char *ieee_p_3620187407_sub_436279890_3965413181(char *, char *, char *, char *, int );


static void work_a_0861239325_2372691052_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    int64 t8;

LAB0:    t1 = (t0 + 3832U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(80, ng0);
    t2 = (t0 + 4464);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(81, ng0);
    t2 = (t0 + 2608U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 3640);
    xsi_process_wait(t2, t8);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(82, ng0);
    t2 = (t0 + 4464);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(83, ng0);
    t2 = (t0 + 2608U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 3640);
    xsi_process_wait(t2, t8);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_0861239325_2372691052_p_1(char *t0)
{
    char t12[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    char *t8;
    char *t9;
    int t10;
    int t11;
    unsigned int t13;
    unsigned int t14;
    unsigned char t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    int t20;

LAB0:    t1 = (t0 + 4080U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(92, ng0);
    t2 = (t0 + 4528);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(93, ng0);
    t7 = (100 * 1000LL);
    t2 = (t0 + 3888);
    xsi_process_wait(t2, t7);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(97, ng0);
    t2 = (t0 + 4528);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(98, ng0);
    t2 = (t0 + 2848U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t2 = (t0 + 3888);
    xsi_process_wait(t2, t7);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    xsi_set_current_line(99, ng0);
    t2 = (t0 + 4592);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(100, ng0);
    t2 = (t0 + 7548);
    t4 = (t0 + 4656);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 3U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(101, ng0);
    t2 = (t0 + 7551);
    t4 = (t0 + 4720);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 16U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(102, ng0);
    t2 = (t0 + 7567);
    t4 = (t0 + 4784);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 3U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(103, ng0);
    t2 = (t0 + 7570);
    t4 = (t0 + 4848);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 3U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(104, ng0);
    t2 = (t0 + 7573);
    *((int *)t2) = 0;
    t3 = (t0 + 7577);
    *((int *)t3) = 6;
    t10 = 0;
    t11 = 6;

LAB12:    if (t10 <= t11)
        goto LAB13;

LAB15:    xsi_set_current_line(111, ng0);
    t2 = (t0 + 4592);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(112, ng0);
    t2 = (t0 + 2848U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t2 = (t0 + 3888);
    xsi_process_wait(t2, t7);

LAB27:    *((char **)t1) = &&LAB28;
    goto LAB1;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB13:    xsi_set_current_line(105, ng0);
    t4 = (t0 + 1352U);
    t5 = *((char **)t4);
    t4 = (t0 + 7388U);
    t6 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t12, t5, t4, 1);
    t8 = (t12 + 12U);
    t13 = *((unsigned int *)t8);
    t14 = (1U * t13);
    t15 = (3U != t14);
    if (t15 == 1)
        goto LAB16;

LAB17:    t9 = (t0 + 4656);
    t16 = (t9 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t6, 3U);
    xsi_driver_first_trans_fast(t9);
    xsi_set_current_line(106, ng0);
    t2 = (t0 + 1512U);
    t3 = *((char **)t2);
    t2 = (t0 + 7404U);
    t4 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t12, t3, t2, 1);
    t5 = (t12 + 12U);
    t13 = *((unsigned int *)t5);
    t14 = (1U * t13);
    t15 = (16U != t14);
    if (t15 == 1)
        goto LAB18;

LAB19:    t6 = (t0 + 4720);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    t16 = (t9 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t4, 16U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(109, ng0);
    t2 = (t0 + 2848U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t2 = (t0 + 3888);
    xsi_process_wait(t2, t7);

LAB22:    *((char **)t1) = &&LAB23;
    goto LAB1;

LAB14:    t2 = (t0 + 7573);
    t10 = *((int *)t2);
    t3 = (t0 + 7577);
    t11 = *((int *)t3);
    if (t10 == t11)
        goto LAB15;

LAB24:    t20 = (t10 + 1);
    t10 = t20;
    t4 = (t0 + 7573);
    *((int *)t4) = t10;
    goto LAB12;

LAB16:    xsi_size_not_matching(3U, t14, 0);
    goto LAB17;

LAB18:    xsi_size_not_matching(16U, t14, 0);
    goto LAB19;

LAB20:    goto LAB14;

LAB21:    goto LAB20;

LAB23:    goto LAB21;

LAB25:    xsi_set_current_line(116, ng0);
    t2 = (t0 + 7581);
    t4 = (t0 + 4784);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 3U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(117, ng0);
    t2 = (t0 + 7584);
    t4 = (t0 + 4848);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 3U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(118, ng0);
    t2 = (t0 + 7587);
    *((int *)t2) = 0;
    t3 = (t0 + 7591);
    *((int *)t3) = 7;
    t10 = 0;
    t11 = 7;

LAB29:    if (t10 <= t11)
        goto LAB30;

LAB32:    xsi_set_current_line(123, ng0);
    t2 = (t0 + 7595);
    t4 = (t0 + 4784);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 3U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(124, ng0);
    t2 = (t0 + 7598);
    t4 = (t0 + 4848);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 3U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(125, ng0);
    t2 = (t0 + 2848U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t2 = (t0 + 3888);
    xsi_process_wait(t2, t7);

LAB44:    *((char **)t1) = &&LAB45;
    goto LAB1;

LAB26:    goto LAB25;

LAB28:    goto LAB26;

LAB30:    xsi_set_current_line(119, ng0);
    t4 = (t0 + 1032U);
    t5 = *((char **)t4);
    t4 = (t0 + 7356U);
    t6 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t12, t5, t4, 1);
    t8 = (t12 + 12U);
    t13 = *((unsigned int *)t8);
    t14 = (1U * t13);
    t15 = (3U != t14);
    if (t15 == 1)
        goto LAB33;

LAB34:    t9 = (t0 + 4784);
    t16 = (t9 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t6, 3U);
    xsi_driver_first_trans_fast(t9);
    xsi_set_current_line(120, ng0);
    t2 = (t0 + 2848U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t2 = (t0 + 3888);
    xsi_process_wait(t2, t7);

LAB37:    *((char **)t1) = &&LAB38;
    goto LAB1;

LAB31:    t2 = (t0 + 7587);
    t10 = *((int *)t2);
    t3 = (t0 + 7591);
    t11 = *((int *)t3);
    if (t10 == t11)
        goto LAB32;

LAB41:    t20 = (t10 + 1);
    t10 = t20;
    t4 = (t0 + 7587);
    *((int *)t4) = t10;
    goto LAB29;

LAB33:    xsi_size_not_matching(3U, t14, 0);
    goto LAB34;

LAB35:    xsi_set_current_line(121, ng0);
    t2 = (t0 + 1192U);
    t3 = *((char **)t2);
    t2 = (t0 + 7372U);
    t4 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t12, t3, t2, 1);
    t5 = (t12 + 12U);
    t13 = *((unsigned int *)t5);
    t14 = (1U * t13);
    t15 = (3U != t14);
    if (t15 == 1)
        goto LAB39;

LAB40:    t6 = (t0 + 4848);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    t16 = (t9 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t4, 3U);
    xsi_driver_first_trans_fast(t6);
    goto LAB31;

LAB36:    goto LAB35;

LAB38:    goto LAB36;

LAB39:    xsi_size_not_matching(3U, t14, 0);
    goto LAB40;

LAB42:    xsi_set_current_line(128, ng0);
    t2 = (t0 + 4528);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(129, ng0);

LAB48:    *((char **)t1) = &&LAB49;
    goto LAB1;

LAB43:    goto LAB42;

LAB45:    goto LAB43;

LAB46:    xsi_set_current_line(139, ng0);

LAB52:    *((char **)t1) = &&LAB53;
    goto LAB1;

LAB47:    goto LAB46;

LAB49:    goto LAB47;

LAB50:    goto LAB2;

LAB51:    goto LAB50;

LAB53:    goto LAB51;

}


extern void work_a_0861239325_2372691052_init()
{
	static char *pe[] = {(void *)work_a_0861239325_2372691052_p_0,(void *)work_a_0861239325_2372691052_p_1};
	xsi_register_didat("work_a_0861239325_2372691052", "isim/RegisterFile_TestBench_isim_par.exe.sim/work/a_0861239325_2372691052.didat");
	xsi_register_executes(pe);
}
