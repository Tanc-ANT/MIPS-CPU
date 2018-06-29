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
static const char *ng0 = "D:/BUAA/PipelineCPU10/GPR.v";
static int ng1[] = {0, 0};
static int ng2[] = {32, 0};
static int ng3[] = {1, 0};
static unsigned int ng4[] = {0U, 0U};



static void Always_36_0(char *t0)
{
    char t13[8];
    char t15[8];
    char t16[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    char *t14;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    unsigned int t27;
    int t28;
    char *t29;
    unsigned int t30;
    int t31;
    int t32;
    unsigned int t33;
    unsigned int t34;
    int t35;
    int t36;

LAB0:    t1 = (t0 + 3808U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(36, ng0);
    t2 = (t0 + 4376);
    *((int *)t2) = 1;
    t3 = (t0 + 3840);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(37, ng0);

LAB5:    xsi_set_current_line(38, ng0);
    t4 = (t0 + 1368U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 1208U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t3);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB15;

LAB16:
LAB17:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(39, ng0);

LAB9:    xsi_set_current_line(40, ng0);
    xsi_set_current_line(40, ng0);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 2888);
    xsi_vlogvar_assign_value(t12, t11, 0, 0, 32);

LAB10:    t2 = (t0 + 2888);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng2)));
    memset(t13, 0, 8);
    xsi_vlog_signed_leq(t13, 32, t4, 32, t5, 32);
    t11 = (t13 + 4);
    t6 = *((unsigned int *)t11);
    t7 = (~(t6));
    t8 = *((unsigned int *)t13);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB11;

LAB12:    goto LAB8;

LAB11:    xsi_set_current_line(41, ng0);
    t12 = ((char*)((ng1)));
    t14 = (t0 + 2728);
    t17 = (t0 + 2728);
    t18 = (t17 + 72U);
    t19 = *((char **)t18);
    t20 = (t0 + 2728);
    t21 = (t20 + 64U);
    t22 = *((char **)t21);
    t23 = (t0 + 2888);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    xsi_vlog_generic_convert_array_indices(t15, t16, t19, t22, 2, 1, t25, 32, 1);
    t26 = (t15 + 4);
    t27 = *((unsigned int *)t26);
    t28 = (!(t27));
    t29 = (t16 + 4);
    t30 = *((unsigned int *)t29);
    t31 = (!(t30));
    t32 = (t28 && t31);
    if (t32 == 1)
        goto LAB13;

LAB14:    xsi_set_current_line(40, ng0);
    t2 = (t0 + 2888);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng3)));
    memset(t13, 0, 8);
    xsi_vlog_signed_add(t13, 32, t4, 32, t5, 32);
    t11 = (t0 + 2888);
    xsi_vlogvar_assign_value(t11, t13, 0, 0, 32);
    goto LAB10;

LAB13:    t33 = *((unsigned int *)t15);
    t34 = *((unsigned int *)t16);
    t35 = (t33 - t34);
    t36 = (t35 + 1);
    xsi_vlogvar_wait_assign_value(t14, t12, 0, *((unsigned int *)t16), t36, 0LL);
    goto LAB14;

LAB15:    xsi_set_current_line(44, ng0);

LAB18:    xsi_set_current_line(45, ng0);
    t4 = ((char*)((ng4)));
    t5 = (t0 + 2728);
    t11 = (t0 + 2728);
    t12 = (t11 + 72U);
    t14 = *((char **)t12);
    t17 = (t0 + 2728);
    t18 = (t17 + 64U);
    t19 = *((char **)t18);
    t20 = ((char*)((ng1)));
    xsi_vlog_generic_convert_array_indices(t13, t15, t14, t19, 2, 1, t20, 32, 1);
    t21 = (t13 + 4);
    t27 = *((unsigned int *)t21);
    t28 = (!(t27));
    t22 = (t15 + 4);
    t30 = *((unsigned int *)t22);
    t31 = (!(t30));
    t32 = (t28 && t31);
    if (t32 == 1)
        goto LAB19;

LAB20:    xsi_set_current_line(46, ng0);
    t2 = (t0 + 2008U);
    t3 = *((char **)t2);
    t2 = (t0 + 2728);
    t4 = (t0 + 2728);
    t5 = (t4 + 72U);
    t11 = *((char **)t5);
    t12 = (t0 + 2728);
    t14 = (t12 + 64U);
    t17 = *((char **)t14);
    t18 = (t0 + 1848U);
    t19 = *((char **)t18);
    xsi_vlog_generic_convert_array_indices(t13, t15, t11, t17, 2, 1, t19, 5, 2);
    t18 = (t13 + 4);
    t6 = *((unsigned int *)t18);
    t28 = (!(t6));
    t20 = (t15 + 4);
    t7 = *((unsigned int *)t20);
    t31 = (!(t7));
    t32 = (t28 && t31);
    if (t32 == 1)
        goto LAB21;

LAB22:    goto LAB17;

LAB19:    t33 = *((unsigned int *)t13);
    t34 = *((unsigned int *)t15);
    t35 = (t33 - t34);
    t36 = (t35 + 1);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, *((unsigned int *)t15), t36, 0LL);
    goto LAB20;

LAB21:    t8 = *((unsigned int *)t13);
    t9 = *((unsigned int *)t15);
    t35 = (t8 - t9);
    t36 = (t35 + 1);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, *((unsigned int *)t15), t36, 0LL);
    goto LAB22;

}

static void Always_50_1(char *t0)
{
    char t13[8];
    char t14[8];
    char t33[8];
    char t45[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    unsigned int t23;
    int t24;
    char *t25;
    unsigned int t26;
    int t27;
    int t28;
    unsigned int t29;
    unsigned int t30;
    int t31;
    int t32;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    char *t46;
    char *t47;
    char *t48;
    char *t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    char *t54;

LAB0:    t1 = (t0 + 4056U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(50, ng0);
    t2 = (t0 + 4392);
    *((int *)t2) = 1;
    t3 = (t0 + 4088);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(51, ng0);

LAB5:    xsi_set_current_line(52, ng0);
    t4 = (t0 + 1208U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:
LAB8:    xsi_set_current_line(57, ng0);
    t2 = (t0 + 1528U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng4)));
    memset(t33, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t6 = *((unsigned int *)t3);
    t7 = *((unsigned int *)t2);
    t8 = (t6 ^ t7);
    t9 = *((unsigned int *)t4);
    t10 = *((unsigned int *)t5);
    t23 = (t9 ^ t10);
    t26 = (t8 | t23);
    t29 = *((unsigned int *)t4);
    t30 = *((unsigned int *)t5);
    t34 = (t29 | t30);
    t35 = (~(t34));
    t36 = (t26 & t35);
    if (t36 != 0)
        goto LAB13;

LAB12:    if (t34 != 0)
        goto LAB14;

LAB15:    memset(t14, 0, 8);
    t12 = (t33 + 4);
    t37 = *((unsigned int *)t12);
    t38 = (~(t37));
    t39 = *((unsigned int *)t33);
    t40 = (t39 & t38);
    t41 = (t40 & 1U);
    if (t41 != 0)
        goto LAB16;

LAB17:    if (*((unsigned int *)t12) != 0)
        goto LAB18;

LAB19:    t16 = (t14 + 4);
    t42 = *((unsigned int *)t14);
    t43 = *((unsigned int *)t16);
    t44 = (t42 || t43);
    if (t44 > 0)
        goto LAB20;

LAB21:    t50 = *((unsigned int *)t14);
    t51 = (~(t50));
    t52 = *((unsigned int *)t16);
    t53 = (t51 || t52);
    if (t53 > 0)
        goto LAB22;

LAB23:    if (*((unsigned int *)t16) > 0)
        goto LAB24;

LAB25:    if (*((unsigned int *)t14) > 0)
        goto LAB26;

LAB27:    memcpy(t13, t48, 8);

LAB28:    t54 = (t0 + 2408);
    xsi_vlogvar_wait_assign_value(t54, t13, 0, 0, 32, 0LL);
    xsi_set_current_line(58, ng0);
    t2 = (t0 + 1688U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng4)));
    memset(t33, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t6 = *((unsigned int *)t3);
    t7 = *((unsigned int *)t2);
    t8 = (t6 ^ t7);
    t9 = *((unsigned int *)t4);
    t10 = *((unsigned int *)t5);
    t23 = (t9 ^ t10);
    t26 = (t8 | t23);
    t29 = *((unsigned int *)t4);
    t30 = *((unsigned int *)t5);
    t34 = (t29 | t30);
    t35 = (~(t34));
    t36 = (t26 & t35);
    if (t36 != 0)
        goto LAB30;

LAB29:    if (t34 != 0)
        goto LAB31;

LAB32:    memset(t14, 0, 8);
    t12 = (t33 + 4);
    t37 = *((unsigned int *)t12);
    t38 = (~(t37));
    t39 = *((unsigned int *)t33);
    t40 = (t39 & t38);
    t41 = (t40 & 1U);
    if (t41 != 0)
        goto LAB33;

LAB34:    if (*((unsigned int *)t12) != 0)
        goto LAB35;

LAB36:    t16 = (t14 + 4);
    t42 = *((unsigned int *)t14);
    t43 = *((unsigned int *)t16);
    t44 = (t42 || t43);
    if (t44 > 0)
        goto LAB37;

LAB38:    t50 = *((unsigned int *)t14);
    t51 = (~(t50));
    t52 = *((unsigned int *)t16);
    t53 = (t51 || t52);
    if (t53 > 0)
        goto LAB39;

LAB40:    if (*((unsigned int *)t16) > 0)
        goto LAB41;

LAB42:    if (*((unsigned int *)t14) > 0)
        goto LAB43;

LAB44:    memcpy(t13, t48, 8);

LAB45:    t54 = (t0 + 2568);
    xsi_vlogvar_wait_assign_value(t54, t13, 0, 0, 32, 0LL);
    goto LAB2;

LAB6:    xsi_set_current_line(53, ng0);

LAB9:    xsi_set_current_line(54, ng0);
    t11 = (t0 + 2008U);
    t12 = *((char **)t11);
    t11 = (t0 + 2728);
    t15 = (t0 + 2728);
    t16 = (t15 + 72U);
    t17 = *((char **)t16);
    t18 = (t0 + 2728);
    t19 = (t18 + 64U);
    t20 = *((char **)t19);
    t21 = (t0 + 1848U);
    t22 = *((char **)t21);
    xsi_vlog_generic_convert_array_indices(t13, t14, t17, t20, 2, 1, t22, 5, 2);
    t21 = (t13 + 4);
    t23 = *((unsigned int *)t21);
    t24 = (!(t23));
    t25 = (t14 + 4);
    t26 = *((unsigned int *)t25);
    t27 = (!(t26));
    t28 = (t24 && t27);
    if (t28 == 1)
        goto LAB10;

LAB11:    goto LAB8;

LAB10:    t29 = *((unsigned int *)t13);
    t30 = *((unsigned int *)t14);
    t31 = (t29 - t30);
    t32 = (t31 + 1);
    xsi_vlogvar_wait_assign_value(t11, t12, 0, *((unsigned int *)t14), t32, 0LL);
    goto LAB11;

LAB13:    *((unsigned int *)t33) = 1;
    goto LAB15;

LAB14:    t11 = (t33 + 4);
    *((unsigned int *)t33) = 1;
    *((unsigned int *)t11) = 1;
    goto LAB15;

LAB16:    *((unsigned int *)t14) = 1;
    goto LAB19;

LAB18:    t15 = (t14 + 4);
    *((unsigned int *)t14) = 1;
    *((unsigned int *)t15) = 1;
    goto LAB19;

LAB20:    t17 = (t0 + 2728);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    t20 = (t0 + 2728);
    t21 = (t20 + 72U);
    t22 = *((char **)t21);
    t25 = (t0 + 2728);
    t46 = (t25 + 64U);
    t47 = *((char **)t46);
    t48 = (t0 + 1528U);
    t49 = *((char **)t48);
    xsi_vlog_generic_get_array_select_value(t45, 32, t19, t22, t47, 2, 1, t49, 5, 2);
    goto LAB21;

LAB22:    t48 = ((char*)((ng4)));
    goto LAB23;

LAB24:    xsi_vlog_unsigned_bit_combine(t13, 32, t45, 32, t48, 32);
    goto LAB28;

LAB26:    memcpy(t13, t45, 8);
    goto LAB28;

LAB30:    *((unsigned int *)t33) = 1;
    goto LAB32;

LAB31:    t11 = (t33 + 4);
    *((unsigned int *)t33) = 1;
    *((unsigned int *)t11) = 1;
    goto LAB32;

LAB33:    *((unsigned int *)t14) = 1;
    goto LAB36;

LAB35:    t15 = (t14 + 4);
    *((unsigned int *)t14) = 1;
    *((unsigned int *)t15) = 1;
    goto LAB36;

LAB37:    t17 = (t0 + 2728);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    t20 = (t0 + 2728);
    t21 = (t20 + 72U);
    t22 = *((char **)t21);
    t25 = (t0 + 2728);
    t46 = (t25 + 64U);
    t47 = *((char **)t46);
    t48 = (t0 + 1688U);
    t49 = *((char **)t48);
    xsi_vlog_generic_get_array_select_value(t45, 32, t19, t22, t47, 2, 1, t49, 5, 2);
    goto LAB38;

LAB39:    t48 = ((char*)((ng4)));
    goto LAB40;

LAB41:    xsi_vlog_unsigned_bit_combine(t13, 32, t45, 32, t48, 32);
    goto LAB45;

LAB43:    memcpy(t13, t45, 8);
    goto LAB45;

}


extern void work_m_00000000001492822809_1213024400_init()
{
	static char *pe[] = {(void *)Always_36_0,(void *)Always_50_1};
	xsi_register_didat("work_m_00000000001492822809_1213024400", "isim/testbench_isim_beh.exe.sim/work/m_00000000001492822809_1213024400.didat");
	xsi_register_executes(pe);
}
