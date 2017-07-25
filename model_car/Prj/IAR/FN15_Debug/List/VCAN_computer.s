///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       21/Mar/2017  16:05:23
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\znc\project\K60FN\network_car\Board\src\VCAN_computer.c
//    Command line =  
//        E:\znc\project\K60FN\network_car\Board\src\VCAN_computer.c -D DEBUG
//        -D ARM_MATH_CM4 -D MK60F15 -D MK60FN15 -lA
//        E:\znc\project\K60FN\network_car\Prj\IAR\FN15_Debug\List\ -o
//        E:\znc\project\K60FN\network_car\Prj\IAR\FN15_Debug\Obj\ --no_cse
//        --no_unroll --no_inline --no_code_motion --no_tbaa --no_clustering
//        --no_scheduling --debug --endian=little --cpu=Cortex-M4F -e
//        --char_is_signed --fpu=VFPv4_sp --dlib_config
//        E:\iar\arm\INC\c\DLib_Config_Full.h -I
//        E:\znc\project\K60FN\network_car\Prj\IAR\..\..\App\ -I
//        E:\znc\project\K60FN\network_car\Prj\IAR\..\..\App\Inc\ -I
//        E:\znc\project\K60FN\network_car\Prj\IAR\..\..\Board\Inc\ -I
//        E:\znc\project\K60FN\network_car\Prj\IAR\..\..\Chip\inc\ -I
//        E:\znc\project\K60FN\network_car\Prj\IAR\..\..\Chip\inc\IAR\ -I
//        E:\znc\project\K60FN\network_car\Prj\IAR\..\..\Chip\inc\kinetis\ -I
//        E:\znc\project\K60FN\network_car\Prj\IAR\..\..\Lib\CMSIS\Inc\ -I
//        E:\znc\project\K60FN\network_car\Prj\IAR\..\..\Lib\FatFs\ -I
//        E:\znc\project\K60FN\network_car\Prj\IAR\..\..\Lib\USB\ -On
//    List file    =  
//        E:\znc\project\K60FN\network_car\Prj\IAR\FN15_Debug\List\VCAN_computer.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_file_descriptor", "1"
        RTMODEL "__dlib_full_locale_support", "1"
        AAPCS BASE,INTERWORK,VFP
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN uart_putbuff

        PUBLIC vcan_sendccd
        PUBLIC vcan_sendimg
        PUBLIC vcan_sendware
        
          CFI Names cfiNames0
          CFI StackFrame CFA R13 DATA
          CFI Resource R0:32, R1:32, R2:32, R3:32, R4:32, R5:32, R6:32, R7:32
          CFI Resource R8:32, R9:32, R10:32, R11:32, R12:32, R13:32, R14:32
          CFI Resource D0:64, D1:64, D2:64, D3:64, D4:64, D5:64, D6:64, D7:64
          CFI Resource D8:64, D9:64, D10:64, D11:64, D12:64, D13:64, D14:64
          CFI Resource D15:64
          CFI EndNames cfiNames0
        
          CFI Common cfiCommon0 Using cfiNames0
          CFI CodeAlign 2
          CFI DataAlign 4
          CFI ReturnAddress R14 CODE
          CFI CFA R13+0
          CFI R0 Undefined
          CFI R1 Undefined
          CFI R2 Undefined
          CFI R3 Undefined
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI R7 SameValue
          CFI R8 SameValue
          CFI R9 SameValue
          CFI R10 SameValue
          CFI R11 SameValue
          CFI R12 Undefined
          CFI R14 SameValue
          CFI D0 Undefined
          CFI D1 Undefined
          CFI D2 Undefined
          CFI D3 Undefined
          CFI D4 Undefined
          CFI D5 Undefined
          CFI D6 Undefined
          CFI D7 Undefined
          CFI D8 SameValue
          CFI D9 SameValue
          CFI D10 SameValue
          CFI D11 SameValue
          CFI D12 SameValue
          CFI D13 SameValue
          CFI D14 SameValue
          CFI D15 SameValue
          CFI EndCommon cfiCommon0
        
// E:\znc\project\K60FN\network_car\Board\src\VCAN_computer.c
//    1 /*!
//    2  *     COPYRIGHT NOTICE
//    3  *     Copyright (c) 2015,ɽ��Ƽ�
//    4  *     All rights reserved.
//    5  *     �������ۣ�ɽ����̳ http://www.vcan123.com
//    6  *
//    7  *     ��ע�������⣬�����������ݰ�Ȩ����ɽ��Ƽ����У�δ����������������ҵ��;��
//    8  *     �޸�����ʱ���뱣��ɽ��Ƽ��İ�Ȩ������
//    9  *
//   10  * @file       VCAN_computer.c
//   11  * @brief      ɽ��๦�ܵ���������λ����������
//   12  * @author     ɽ��Ƽ�
//   13  * @version    v5.2.2
//   14  * @date       2015-03-24
//   15  */
//   16 
//   17 
//   18 /*
//   19  * ����ͷ�ļ�
//   20  */
//   21 #include "common.h"
//   22 #include "MK60_uart.h"
//   23 #include "VCAN_computer.h"
//   24 
//   25 
//   26 
//   27 /*!
//   28  *  @brief      ɽ��๦�ܵ���������λ��������ͷ��ʾ����
//   29  *  @param      imgaddr    ͼ����ʼ��ַ
//   30  *  @param      imgsize    ͼ��ռ�ÿռ�Ĵ�С
//   31  *  @since      v5.0
//   32 *  Sample usage:
//   33              �����÷��ο�������:
//   34             ��ɽ������ͷ��ӥ����λ�����̺�΢��Ч�� - ���ܳ�������
//   35              http://vcan123.com/forum.php?mod=viewthread&tid=6242&ctid=27
//   36  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function vcan_sendimg
        THUMB
//   37 void vcan_sendimg(void *imgaddr, uint32_t imgsize)
//   38 {
vcan_sendimg:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOVS     R4,R0
        MOVS     R5,R1
//   39 #define CMD_IMG     1
//   40     uint8_t cmdf[2] = {CMD_IMG, ~CMD_IMG};    //ɽ����λ�� ʹ�õ�����
        LDR.N    R0,??DataTable2
        LDRH     R0,[R0, #+0]
        STRH     R0,[SP, #+2]
//   41     uint8_t cmdr[2] = {~CMD_IMG, CMD_IMG};    //ɽ����λ�� ʹ�õ�����
        LDR.N    R0,??DataTable2_1
        LDRH     R0,[R0, #+0]
        STRH     R0,[SP, #+0]
//   42 
//   43     uart_putbuff(VCAN_PORT, cmdf, sizeof(cmdf));    //�ȷ�������
        MOVS     R2,#+2
        ADD      R1,SP,#+2
        MOVS     R0,#+4
          CFI FunCall uart_putbuff
        BL       uart_putbuff
//   44 
//   45     uart_putbuff(VCAN_PORT, (uint8_t *)imgaddr, imgsize); //�ٷ���ͼ��
        MOVS     R2,R5
        MOVS     R1,R4
        MOVS     R0,#+4
          CFI FunCall uart_putbuff
        BL       uart_putbuff
//   46 
//   47     uart_putbuff(VCAN_PORT, cmdr, sizeof(cmdr));    //�ȷ�������
        MOVS     R2,#+2
        ADD      R1,SP,#+0
        MOVS     R0,#+4
          CFI FunCall uart_putbuff
        BL       uart_putbuff
//   48 }
        POP      {R0,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock0
//   49 
//   50 
//   51 /*!
//   52  *  @brief      ɽ��๦�ܵ���������λ��������CCD��ʾ����
//   53  *  @param      ccdaddr    CCDͼ����ʼ��ַ
//   54  *  @param      ccdsize    CCDͼ��ռ�ÿռ�Ĵ�С
//   55  *  @since      v5.0
//   56 *  Sample usage:
//   57              �����÷��ο�������:
//   58             ��ɽ������CCD����λ����ʾ���̺ͳ���ǲɼ�Ч�� - ���ܳ�������
//   59              http://vcan123.com/forum.php?mod=viewthread&tid=6340&ctid=27
//   60  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function vcan_sendccd
        THUMB
//   61 void vcan_sendccd(void *ccdaddr, uint32_t ccdsize)
//   62 {
vcan_sendccd:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOVS     R4,R0
        MOVS     R5,R1
//   63 #define CMD_CCD     2
//   64     uint8_t cmdf[2] = {CMD_CCD, ~CMD_CCD};    //��ͷ����
        LDR.N    R0,??DataTable2_2
        LDRH     R0,[R0, #+0]
        STRH     R0,[SP, #+2]
//   65     uint8_t cmdr[2] = {~CMD_CCD, CMD_CCD};    //��β����
        LDR.N    R0,??DataTable2_3
        LDRH     R0,[R0, #+0]
        STRH     R0,[SP, #+0]
//   66 
//   67     uart_putbuff(VCAN_PORT, cmdf, sizeof(cmdf));    //�ȷ�������
        MOVS     R2,#+2
        ADD      R1,SP,#+2
        MOVS     R0,#+4
          CFI FunCall uart_putbuff
        BL       uart_putbuff
//   68 
//   69     uart_putbuff(VCAN_PORT, (uint8_t *)ccdaddr, ccdsize); //�ٷ���ͼ��
        MOVS     R2,R5
        MOVS     R1,R4
        MOVS     R0,#+4
          CFI FunCall uart_putbuff
        BL       uart_putbuff
//   70 
//   71     uart_putbuff(VCAN_PORT, cmdr, sizeof(cmdr));    //�ٷ�������
        MOVS     R2,#+2
        ADD      R1,SP,#+0
        MOVS     R0,#+4
          CFI FunCall uart_putbuff
        BL       uart_putbuff
//   72 }
        POP      {R0,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock1
//   73 
//   74 
//   75 /*!
//   76  *  @brief      ɽ��๦�ܵ���������λ��������ʾ������ʾ����
//   77  *  @param      wareaddr    ����������ʼ��ַ
//   78  *  @param      waresize    ��������ռ�ÿռ�Ĵ�С
//   79  *  @since      v5.0
//   80 *  Sample usage:
//   81              �����÷��ο�������:
//   82             ��ɽ�����ϡ������Ǻͼ��ٶ� ��λ����ʾ���� - ���ܳ�������
//   83              http://vcan123.com/forum.php?mod=viewthread&tid=6253&ctid=27
//   84  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function vcan_sendware
        THUMB
//   85 void vcan_sendware(void *wareaddr, uint32_t waresize)
//   86 {
vcan_sendware:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOVS     R4,R0
        MOVS     R5,R1
//   87 #define CMD_WARE     3
//   88     uint8_t cmdf[2] = {CMD_WARE, ~CMD_WARE};    //���ڵ��� ʹ�õ�ǰ����
        LDR.N    R0,??DataTable2_4
        LDRH     R0,[R0, #+0]
        STRH     R0,[SP, #+2]
//   89     uint8_t cmdr[2] = {~CMD_WARE, CMD_WARE};    //���ڵ��� ʹ�õĺ�����
        LDR.N    R0,??DataTable2_5
        LDRH     R0,[R0, #+0]
        STRH     R0,[SP, #+0]
//   90 
//   91     uart_putbuff(VCAN_PORT, cmdf, sizeof(cmdf));    //�ȷ���ǰ����
        MOVS     R2,#+2
        ADD      R1,SP,#+2
        MOVS     R0,#+4
          CFI FunCall uart_putbuff
        BL       uart_putbuff
//   92     uart_putbuff(VCAN_PORT, (uint8_t *)wareaddr, waresize);    //��������
        MOVS     R2,R5
        MOVS     R1,R4
        MOVS     R0,#+4
          CFI FunCall uart_putbuff
        BL       uart_putbuff
//   93     uart_putbuff(VCAN_PORT, cmdr, sizeof(cmdr));    //���ͺ�����
        MOVS     R2,#+2
        ADD      R1,SP,#+0
        MOVS     R0,#+4
          CFI FunCall uart_putbuff
        BL       uart_putbuff
//   94 
//   95 }
        POP      {R0,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC32     ?_0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_1:
        DC32     ?_1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_2:
        DC32     ?_2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_3:
        DC32     ?_3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_4:
        DC32     ?_4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_5:
        DC32     ?_5

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(1)
?_0:
        DATA
        DC8 1, 254

        SECTION `.rodata`:CONST:REORDER:NOROOT(1)
?_1:
        DATA
        DC8 254, 1

        SECTION `.rodata`:CONST:REORDER:NOROOT(1)
?_2:
        DATA
        DC8 2, 253

        SECTION `.rodata`:CONST:REORDER:NOROOT(1)
?_3:
        DATA
        DC8 253, 2

        SECTION `.rodata`:CONST:REORDER:NOROOT(1)
?_4:
        DATA
        DC8 3, 252

        SECTION `.rodata`:CONST:REORDER:NOROOT(1)
?_5:
        DATA
        DC8 252, 3

        END
// 
//  12 bytes in section .rodata
// 192 bytes in section .text
// 
// 192 bytes of CODE  memory
//  12 bytes of CONST memory
//
//Errors: none
//Warnings: none
