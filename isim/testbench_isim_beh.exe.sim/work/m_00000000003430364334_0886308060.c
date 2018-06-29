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
static const char *ng0 = "D:/BUAA/PipelineCPU10/ALU.v";
static int ng1[] = {32, 0};
static int ng2[] = {0, 0};
static unsigned int ng3[] = {1U, 0U};
static unsigned int ng4[] = {2U, 0U};
static unsigned int ng5[] = {3U, 0U};
static unsigned int ng6[] = {0U, 0U};
static unsigned int ng7[] = {4U, 0U};
static unsigned int ng8[] = {5U, 0U};
static unsigned int ng9[] = {6U, 0U};
static unsigned int ng10[] = {7U, 0U};
static unsigned int ng11[] = {8U, 0U};
static int ng12[] = {1, 0};
static unsigned int ng13[] = {9U, 0U};
static unsigned int ng14[] = {10U, 0U};
static unsigned int ng15[] = {11U, 0U};
static unsigned int ng16[] = {12U, 0U};
static unsigned int ng17[] = {13U, 0U};



static void Cont_31_0(char *t0)
{
    char t3[8];
    char t14[8];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    unsigned int t22;
    unsigned int t23;
    char *t24;
    unsigned int t25;
    unsigned int t26;
    char *t27;

LAB0:    t1 = (t0 + 3328U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(31, ng0);
    t2 = (t0 + 1048U);
    t4 = *((char **)t2);
    memset(t3, 0, 8);
    t2 = (t3 + 4);
    t5 = (t4 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (t6 >> 0);
    *((unsigned int *)t3) = t7;
    t8 = *((unsigned int *)t5);
    t9 = (t8 >> 0);
    *((unsigned int *)t2) = t9;
    t10 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t10 & 31U);
    t11 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t11 & 31U);
    t12 = (t0 + 1688U);
    t13 = *((char **)t12);
    memset(t14, 0, 8);
    xsi_vlog_unsigned_add(t14, 5, t3, 5, t13, 5);
    t12 = (t0 + 4256);
    t15 = (t12 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    memset(t18, 0, 8);
    t19 = 31U;
    t20 = t19;
    t21 = (t14 + 4);
    t22 = *((unsigned int *)t14);
    t19 = (t19 & t22);
    t23 = *((unsigned int *)t21);
    t20 = (t20 & t23);
    t24 = (t18 + 4);
    t25 = *((unsigned int *)t18);
    *((unsigned int *)t18) = (t25 | t19);
    t26 = *((unsigned int *)t24);
    *((unsigned int *)t24) = (t26 | t20);
    xsi_driver_vfirst_trans(t12, 0, 4);
    t27 = (t0 + 4144);
    *((int *)t27) = 1;

LAB1:    return;
}

static void Cont_34_1(char *t0)
{
    char t3[16];
    char t5[8];
    char t8[8];
    char t18[16];
    char *t1;
    char *t2;
    char *t4;
    char *t6;
    char *t7;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;
    char *t17;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;

LAB0:    t1 = (t0 + 3576U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(34, ng0);
    t2 = (t0 + 1208U);
    t4 = *((char **)t2);
    t2 = ((char*)((ng1)));
    t6 = (t0 + 1208U);
    t7 = *((char **)t6);
    memset(t8, 0, 8);
    t6 = (t8 + 4);
    t9 = (t7 + 4);
    t10 = *((unsigned int *)t7);
    t11 = (t10 >> 31);
    t12 = (t11 & 1);
    *((unsigned int *)t8) = t12;
    t13 = *((unsigned int *)t9);
    t14 = (t13 >> 31);
    t15 = (t14 & 1);
    *((unsigned int *)t6) = t15;
    xsi_vlog_mul_concat(t5, 32, 1, t2, 1U, t8, 1);
    xsi_vlogtype_concat(t3, 64, 64, 2U, t5, 32, t4, 32);
    t16 = (t0 + 1848U);
    t17 = *((char **)t16);
    xsi_vlog_unsigned_rshift(t18, 64, t3, 64, t17, 5);
    t16 = (t0 + 4320);
    t19 = (t16 + 56U);
    t20 = *((char **)t19);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    xsi_vlog_bit_copy(t22, 0, t18, 0, 64);
    xsi_driver_vfirst_trans(t16, 0, 63);
    t23 = (t0 + 4160);
    *((int *)t23) = 1;

LAB1:    return;
}

static void Always_36_2(char *t0)
{
    char t13[8];
    char t17[8];
    char t18[16];
    char t19[16];
    char t20[16];
    char t39[8];
    char t52[8];
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
    unsigned int t14;
    int t15;
    char *t16;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    char *t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    char *t38;
    char *t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    char *t49;

LAB0:    t1 = (t0 + 3824U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(36, ng0);
    t2 = (t0 + 4176);
    *((int *)t2) = 1;
    t3 = (t0 + 3856);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(37, ng0);
    t4 = (t0 + 1528U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB5;

LAB6:    xsi_set_current_line(40, ng0);

LAB8:    xsi_set_current_line(41, ng0);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    memset(t13, 0, 8);
    t2 = (t13 + 4);
    t4 = (t3 + 4);
    t6 = *((unsigned int *)t3);
    t7 = (t6 >> 0);
    *((unsigned int *)t13) = t7;
    t8 = *((unsigned int *)t4);
    t9 = (t8 >> 0);
    *((unsigned int *)t2) = t9;
    t10 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t10 & 15U);
    t14 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t14 & 15U);

LAB9:    t5 = ((char*)((ng3)));
    t15 = xsi_vlog_unsigned_case_compare(t13, 4, t5, 4);
    if (t15 == 1)
        goto LAB10;

LAB11:    t2 = ((char*)((ng4)));
    t15 = xsi_vlog_unsigned_case_compare(t13, 4, t2, 4);
    if (t15 == 1)
        goto LAB12;

LAB13:    t2 = ((char*)((ng5)));
    t15 = xsi_vlog_unsigned_case_compare(t13, 4, t2, 4);
    if (t15 == 1)
        goto LAB14;

LAB15:    t2 = ((char*)((ng7)));
    t15 = xsi_vlog_unsigned_case_compare(t13, 4, t2, 4);
    if (t15 == 1)
        goto LAB16;

LAB17:    t2 = ((char*)((ng8)));
    t15 = xsi_vlog_unsigned_case_compare(t13, 4, t2, 4);
    if (t15 == 1)
        goto LAB18;

LAB19:    t2 = ((char*)((ng9)));
    t15 = xsi_vlog_unsigned_case_compare(t13, 4, t2, 4);
    if (t15 == 1)
        goto LAB20;

LAB21:    t2 = ((char*)((ng10)));
    t15 = xsi_vlog_unsigned_case_compare(t13, 4, t2, 4);
    if (t15 == 1)
        goto LAB22;

LAB23:    t2 = ((char*)((ng11)));
    t15 = xsi_vlog_unsigned_case_compare(t13, 4, t2, 4);
    if (t15 == 1)
        goto LAB24;

LAB25:    t2 = ((char*)((ng13)));
    t15 = xsi_vlog_unsigned_case_compare(t13, 4, t2, 4);
    if (t15 == 1)
        goto LAB26;

LAB27:    t2 = ((char*)((ng14)));
    t15 = xsi_vlog_unsigned_case_compare(t13, 4, t2, 4);
    if (t15 == 1)
        goto LAB28;

LAB29:    t2 = ((char*)((ng15)));
    t15 = xsi_vlog_unsigned_case_compare(t13, 4, t2, 4);
    if (t15 == 1)
        goto LAB30;

LAB31:    t2 = ((char*)((ng16)));
    t15 = xsi_vlog_unsigned_case_compare(t13, 4, t2, 4);
    if (t15 == 1)
        goto LAB32;

LAB33:    t2 = ((char*)((ng17)));
    t15 = xsi_vlog_unsigned_case_compare(t13, 4, t2, 4);
    if (t15 == 1)
        goto LAB34;

LAB35:
LAB36:
LAB7:    goto LAB2;

LAB5:    xsi_set_current_line(38, ng0);
    t11 = ((char*)((ng2)));
    t12 = (t0 + 2408);
    xsi_vlogvar_assign_value(t12, t11, 0, 0, 32);
    goto LAB7;

LAB10:    xsi_set_current_line(42, ng0);
    t11 = (t0 + 1048U);
    t12 = *((char **)t11);
    t11 = (t0 + 1208U);
    t16 = *((char **)t11);
    memset(t17, 0, 8);
    xsi_vlog_unsigned_add(t17, 32, t12, 32, t16, 32);
    t11 = (t0 + 2408);
    xsi_vlogvar_assign_value(t11, t17, 0, 0, 32);
    goto LAB36;

LAB12:    xsi_set_current_line(43, ng0);
    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    t3 = (t0 + 1208U);
    t5 = *((char **)t3);
    memset(t17, 0, 8);
    xsi_vlog_unsigned_minus(t17, 32, t4, 32, t5, 32);
    t3 = (t0 + 2408);
    xsi_vlogvar_assign_value(t3, t17, 0, 0, 32);
    goto LAB36;

LAB14:    xsi_set_current_line(44, ng0);
    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng6)));
    xsi_vlogtype_concat(t18, 33, 33, 2U, t3, 1, t4, 32);
    t5 = (t0 + 1208U);
    t11 = *((char **)t5);
    t5 = ((char*)((ng6)));
    xsi_vlogtype_concat(t19, 33, 33, 2U, t5, 1, t11, 32);
    xsi_vlog_unsigned_minus(t20, 33, t18, 33, t19, 33);
    t12 = (t0 + 2408);
    xsi_vlogvar_assign_value(t12, t20, 0, 0, 32);
    goto LAB36;

LAB16:    xsi_set_current_line(45, ng0);
    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    t3 = (t0 + 1208U);
    t5 = *((char **)t3);
    t6 = *((unsigned int *)t4);
    t7 = *((unsigned int *)t5);
    t8 = (t6 | t7);
    *((unsigned int *)t17) = t8;
    t3 = (t4 + 4);
    t11 = (t5 + 4);
    t12 = (t17 + 4);
    t9 = *((unsigned int *)t3);
    t10 = *((unsigned int *)t11);
    t14 = (t9 | t10);
    *((unsigned int *)t12) = t14;
    t21 = *((unsigned int *)t12);
    t22 = (t21 != 0);
    if (t22 == 1)
        goto LAB37;

LAB38:
LAB39:    t38 = (t0 + 2408);
    xsi_vlogvar_assign_value(t38, t17, 0, 0, 32);
    goto LAB36;

LAB18:    xsi_set_current_line(46, ng0);
    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    t3 = (t0 + 1208U);
    t5 = *((char **)t3);
    t6 = *((unsigned int *)t4);
    t7 = *((unsigned int *)t5);
    t8 = (t6 ^ t7);
    *((unsigned int *)t17) = t8;
    t3 = (t4 + 4);
    t11 = (t5 + 4);
    t12 = (t17 + 4);
    t9 = *((unsigned int *)t3);
    t10 = *((unsigned int *)t11);
    t14 = (t9 | t10);
    *((unsigned int *)t12) = t14;
    t21 = *((unsigned int *)t12);
    t22 = (t21 != 0);
    if (t22 == 1)
        goto LAB40;

LAB41:
LAB42:    t16 = (t0 + 2408);
    xsi_vlogvar_assign_value(t16, t17, 0, 0, 32);
    goto LAB36;

LAB20:    xsi_set_current_line(47, ng0);
    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    t3 = (t0 + 1208U);
    t5 = *((char **)t3);
    t6 = *((unsigned int *)t4);
    t7 = *((unsigned int *)t5);
    t8 = (t6 | t7);
    *((unsigned int *)t39) = t8;
    t3 = (t4 + 4);
    t11 = (t5 + 4);
    t12 = (t39 + 4);
    t9 = *((unsigned int *)t3);
    t10 = *((unsigned int *)t11);
    t14 = (t9 | t10);
    *((unsigned int *)t12) = t14;
    t21 = *((unsigned int *)t12);
    t22 = (t21 != 0);
    if (t22 == 1)
        goto LAB43;

LAB44:
LAB45:    memset(t17, 0, 8);
    t38 = (t17 + 4);
    t40 = (t39 + 4);
    t41 = *((unsigned int *)t39);
    t42 = (~(t41));
    *((unsigned int *)t17) = t42;
    *((unsigned int *)t38) = 0;
    if (*((unsigned int *)t40) != 0)
        goto LAB47;

LAB46:    t47 = *((unsigned int *)t17);
    *((unsigned int *)t17) = (t47 & 4294967295U);
    t48 = *((unsigned int *)t38);
    *((unsigned int *)t38) = (t48 & 4294967295U);
    t49 = (t0 + 2408);
    xsi_vlogvar_assign_value(t49, t17, 0, 0, 32);
    goto LAB36;

LAB22:    xsi_set_current_line(48, ng0);
    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    t3 = (t0 + 1208U);
    t5 = *((char **)t3);
    t6 = *((unsigned int *)t4);
    t7 = *((unsigned int *)t5);
    t8 = (t6 & t7);
    *((unsigned int *)t17) = t8;
    t3 = (t4 + 4);
    t11 = (t5 + 4);
    t12 = (t17 + 4);
    t9 = *((unsigned int *)t3);
    t10 = *((unsigned int *)t11);
    t14 = (t9 | t10);
    *((unsigned int *)t12) = t14;
    t21 = *((unsigned int *)t12);
    t22 = (t21 != 0);
    if (t22 == 1)
        goto LAB48;

LAB49:
LAB50:    t38 = (t0 + 2408);
    xsi_vlogvar_assign_value(t38, t17, 0, 0, 32);
    goto LAB36;

LAB24:    xsi_set_current_line(49, ng0);
    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    t3 = (t0 + 1208U);
    t5 = *((char **)t3);
    memset(t52, 0, 8);
    xsi_vlog_signed_less(t52, 32, t4, 32, t5, 32);
    memset(t39, 0, 8);
    t3 = (t52 + 4);
    t6 = *((unsigned int *)t3);
    t7 = (~(t6));
    t8 = *((unsigned int *)t52);
    t9 = (t8 & t7);
    t10 = (t9 & 1U);
    if (t10 != 0)
        goto LAB51;

LAB52:    if (*((unsigned int *)t3) != 0)
        goto LAB53;

LAB54:    t12 = (t39 + 4);
    t14 = *((unsigned int *)t39);
    t21 = *((unsigned int *)t12);
    t22 = (t14 || t21);
    if (t22 > 0)
        goto LAB55;

LAB56:    t23 = *((unsigned int *)t39);
    t24 = (~(t23));
    t26 = *((unsigned int *)t12);
    t27 = (t24 || t26);
    if (t27 > 0)
        goto LAB57;

LAB58:    if (*((unsigned int *)t12) > 0)
        goto LAB59;

LAB60:    if (*((unsigned int *)t39) > 0)
        goto LAB61;

LAB62:    memcpy(t17, t25, 8);

LAB63:    t38 = (t0 + 2408);
    xsi_vlogvar_assign_value(t38, t17, 0, 0, 32);
    goto LAB36;

LAB26:    xsi_set_current_line(50, ng0);
    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng6)));
    xsi_vlogtype_concat(t18, 33, 33, 2U, t3, 1, t4, 32);
    t5 = (t0 + 1208U);
    t11 = *((char **)t5);
    t5 = ((char*)((ng6)));
    xsi_vlogtype_concat(t19, 33, 33, 2U, t5, 1, t11, 32);
    xsi_vlog_unsigned_less(t20, 33, t18, 33, t19, 33);
    memset(t39, 0, 8);
    t12 = (t20 + 4);
    t6 = *((unsigned int *)t12);
    t7 = (~(t6));
    t8 = *((unsigned int *)t20);
    t9 = (t8 & t7);
    t10 = (t9 & 1U);
    if (t10 != 0)
        goto LAB64;

LAB65:    if (*((unsigned int *)t12) != 0)
        goto LAB66;

LAB67:    t25 = (t39 + 4);
    t14 = *((unsigned int *)t39);
    t21 = *((unsigned int *)t25);
    t22 = (t14 || t21);
    if (t22 > 0)
        goto LAB68;

LAB69:    t23 = *((unsigned int *)t39);
    t24 = (~(t23));
    t26 = *((unsigned int *)t25);
    t27 = (t24 || t26);
    if (t27 > 0)
        goto LAB70;

LAB71:    if (*((unsigned int *)t25) > 0)
        goto LAB72;

LAB73:    if (*((unsigned int *)t39) > 0)
        goto LAB74;

LAB75:    memcpy(t17, t40, 8);

LAB76:    t49 = (t0 + 2408);
    xsi_vlogvar_assign_value(t49, t17, 0, 0, 32);
    goto LAB36;

LAB28:    xsi_set_current_line(51, ng0);
    t3 = (t0 + 1208U);
    t4 = *((char **)t3);
    t3 = (t0 + 1848U);
    t5 = *((char **)t3);
    memset(t17, 0, 8);
    xsi_vlog_unsigned_lshift(t17, 32, t4, 32, t5, 5);
    t3 = (t0 + 2408);
    xsi_vlogvar_assign_value(t3, t17, 0, 0, 32);
    goto LAB36;

LAB30:    xsi_set_current_line(52, ng0);
    t3 = (t0 + 1208U);
    t4 = *((char **)t3);
    t3 = (t0 + 1848U);
    t5 = *((char **)t3);
    memset(t17, 0, 8);
    xsi_vlog_unsigned_rshift(t17, 32, t4, 32, t5, 5);
    t3 = (t0 + 2408);
    xsi_vlogvar_assign_value(t3, t17, 0, 0, 32);
    goto LAB36;

LAB32:    xsi_set_current_line(53, ng0);
    t3 = (t0 + 2008U);
    t4 = *((char **)t3);
    memset(t17, 0, 8);
    t3 = (t17 + 4);
    t5 = (t4 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (t6 >> 0);
    *((unsigned int *)t17) = t7;
    t8 = *((unsigned int *)t5);
    t9 = (t8 >> 0);
    *((unsigned int *)t3) = t9;
    t10 = *((unsigned int *)t17);
    *((unsigned int *)t17) = (t10 & 4294967295U);
    t14 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t14 & 4294967295U);
    t11 = (t0 + 2408);
    xsi_vlogvar_assign_value(t11, t17, 0, 0, 32);
    goto LAB36;

LAB34:    xsi_set_current_line(54, ng0);
    t3 = ((char*)((ng6)));
    t4 = (t0 + 1208U);
    t5 = *((char **)t4);
    xsi_vlogtype_concat(t18, 48, 48, 2U, t5, 32, t3, 16);
    t4 = (t0 + 2408);
    xsi_vlogvar_assign_value(t4, t18, 0, 0, 32);
    goto LAB36;

LAB37:    t23 = *((unsigned int *)t17);
    t24 = *((unsigned int *)t12);
    *((unsigned int *)t17) = (t23 | t24);
    t16 = (t4 + 4);
    t25 = (t5 + 4);
    t26 = *((unsigned int *)t16);
    t27 = (~(t26));
    t28 = *((unsigned int *)t4);
    t29 = (t28 & t27);
    t30 = *((unsigned int *)t25);
    t31 = (~(t30));
    t32 = *((unsigned int *)t5);
    t33 = (t32 & t31);
    t34 = (~(t29));
    t35 = (~(t33));
    t36 = *((unsigned int *)t12);
    *((unsigned int *)t12) = (t36 & t34);
    t37 = *((unsigned int *)t12);
    *((unsigned int *)t12) = (t37 & t35);
    goto LAB39;

LAB40:    t23 = *((unsigned int *)t17);
    t24 = *((unsigned int *)t12);
    *((unsigned int *)t17) = (t23 | t24);
    goto LAB42;

LAB43:    t23 = *((unsigned int *)t39);
    t24 = *((unsigned int *)t12);
    *((unsigned int *)t39) = (t23 | t24);
    t16 = (t4 + 4);
    t25 = (t5 + 4);
    t26 = *((unsigned int *)t16);
    t27 = (~(t26));
    t28 = *((unsigned int *)t4);
    t29 = (t28 & t27);
    t30 = *((unsigned int *)t25);
    t31 = (~(t30));
    t32 = *((unsigned int *)t5);
    t33 = (t32 & t31);
    t34 = (~(t29));
    t35 = (~(t33));
    t36 = *((unsigned int *)t12);
    *((unsigned int *)t12) = (t36 & t34);
    t37 = *((unsigned int *)t12);
    *((unsigned int *)t12) = (t37 & t35);
    goto LAB45;

LAB47:    t43 = *((unsigned int *)t17);
    t44 = *((unsigned int *)t40);
    *((unsigned int *)t17) = (t43 | t44);
    t45 = *((unsigned int *)t38);
    t46 = *((unsigned int *)t40);
    *((unsigned int *)t38) = (t45 | t46);
    goto LAB46;

LAB48:    t23 = *((unsigned int *)t17);
    t24 = *((unsigned int *)t12);
    *((unsigned int *)t17) = (t23 | t24);
    t16 = (t4 + 4);
    t25 = (t5 + 4);
    t26 = *((unsigned int *)t4);
    t27 = (~(t26));
    t28 = *((unsigned int *)t16);
    t30 = (~(t28));
    t31 = *((unsigned int *)t5);
    t32 = (~(t31));
    t34 = *((unsigned int *)t25);
    t35 = (~(t34));
    t29 = (t27 & t30);
    t33 = (t32 & t35);
    t36 = (~(t29));
    t37 = (~(t33));
    t41 = *((unsigned int *)t12);
    *((unsigned int *)t12) = (t41 & t36);
    t42 = *((unsigned int *)t12);
    *((unsigned int *)t12) = (t42 & t37);
    t43 = *((unsigned int *)t17);
    *((unsigned int *)t17) = (t43 & t36);
    t44 = *((unsigned int *)t17);
    *((unsigned int *)t17) = (t44 & t37);
    goto LAB50;

LAB51:    *((unsigned int *)t39) = 1;
    goto LAB54;

LAB53:    t11 = (t39 + 4);
    *((unsigned int *)t39) = 1;
    *((unsigned int *)t11) = 1;
    goto LAB54;

LAB55:    t16 = ((char*)((ng12)));
    goto LAB56;

LAB57:    t25 = ((char*)((ng2)));
    goto LAB58;

LAB59:    xsi_vlog_unsigned_bit_combine(t17, 32, t16, 32, t25, 32);
    goto LAB63;

LAB61:    memcpy(t17, t16, 8);
    goto LAB63;

LAB64:    *((unsigned int *)t39) = 1;
    goto LAB67;

LAB66:    t16 = (t39 + 4);
    *((unsigned int *)t39) = 1;
    *((unsigned int *)t16) = 1;
    goto LAB67;

LAB68:    t38 = ((char*)((ng12)));
    goto LAB69;

LAB70:    t40 = ((char*)((ng2)));
    goto LAB71;

LAB72:    xsi_vlog_unsigned_bit_combine(t17, 32, t38, 32, t40, 32);
    goto LAB76;

LAB74:    memcpy(t17, t38, 8);
    goto LAB76;

}


extern void work_m_00000000003430364334_0886308060_init()
{
	static char *pe[] = {(void *)Cont_31_0,(void *)Cont_34_1,(void *)Always_36_2};
	xsi_register_didat("work_m_00000000003430364334_0886308060", "isim/testbench_isim_beh.exe.sim/work/m_00000000003430364334_0886308060.didat");
	xsi_register_executes(pe);
}
