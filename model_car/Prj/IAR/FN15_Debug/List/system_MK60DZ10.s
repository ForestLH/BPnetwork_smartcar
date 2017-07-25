///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       21/Mar/2017  16:05:15
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\znc\project\K60FN\network_car\Chip\src\IAR\system_MK60DZ10.c
//    Command line =  
//        E:\znc\project\K60FN\network_car\Chip\src\IAR\system_MK60DZ10.c -D
//        DEBUG -D ARM_MATH_CM4 -D MK60F15 -D MK60FN15 -lA
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
//        E:\znc\project\K60FN\network_car\Prj\IAR\FN15_Debug\List\system_MK60DZ10.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_file_descriptor", "1"
        RTMODEL "__dlib_full_locale_support", "1"
        AAPCS BASE,INTERWORK,VFP
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        SECTION `.data`:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0
        SECTION `.data_init`:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0
        SECTION CodeRelocate:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0
        SECTION CodeRelocateRam:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        EXTERN __VECTOR_RAM
        EXTERN __VECTOR_TABLE
        EXTERN gpio_init
        EXTERN main
        EXTERN pll_init
        EXTERN start_check
        EXTERN uart_init
        EXTERN wdog_disable
        EXTERN write_vtor

        PUBLIC bus_clk_khz
        PUBLIC common_startup
        PUBLIC core_clk_khz
        PUBLIC core_clk_mhz
        PUBLIC fb_clk_init
        PUBLIC start
        PUBLIC sysinit
        PUBLIC trace_clk_init
        
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
        
// E:\znc\project\K60FN\network_car\Chip\src\IAR\system_MK60DZ10.c
//    1 /*!
//    2  *     COPYRIGHT NOTICE
//    3  *     Copyright (c) 2013,ɽ��Ƽ�
//    4  *     All rights reserved.
//    5  *     �������ۣ�ɽ����̳ http://www.vcan123.com
//    6  *
//    7  *     ��ע�������⣬�����������ݰ�Ȩ����ɽ��Ƽ����У�δ����������������ҵ��;��
//    8  *     �޸�����ʱ���뱣��ɽ��Ƽ��İ�Ȩ������
//    9  *
//   10  * @file       system_MK60DZ10.c
//   11  * @brief      ϵͳ������غ���
//   12  * @author     ɽ��Ƽ�
//   13  * @version    v5.2
//   14  * @date       2014-10-09
//   15  */
//   16 
//   17 #include "common.h"
//   18 #include "system_MK60DZ10.h"
//   19 #include "MK60_uart.h"
//   20 #include "MK60_wdog.h"
//   21 #include "MK60_gpio.h"
//   22 
//   23 
//   24 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   25 int core_clk_khz;
core_clk_khz:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   26 int core_clk_mhz;
core_clk_mhz:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   27 int bus_clk_khz;
bus_clk_khz:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   28 
//   29 extern void main(void);
//   30 
//   31 /*!
//   32  *  @brief      kinetis ��������
//   33  *  @since      v5.0
//   34  *  @author     ��˼������˾
//   35  *  @note       �˺�����ϵͳ���������ɻ�ຯ�����ã�Ȼ��ִ��main����
//   36  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function start
        THUMB
//   37 void start(void)
//   38 {
start:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//   39     wdog_disable();     // �رտ��Ź�
          CFI FunCall wdog_disable
        BL       wdog_disable
//   40 
//   41     common_startup();   // �����ж������� �� ��Ҫ�����ݵ� RAM��
          CFI FunCall common_startup
        BL       common_startup
//   42 
//   43     sysinit();          // ϵͳ��ʼ��������ϵͳƵ�ʣ���ʼ��printf�˿�
          CFI FunCall sysinit
        BL       sysinit
//   44 
//   45     //Ϊ�˷�ֹ main ���� �� ������ ���ؿڣ����� ����ʧ�ܣ��˴����� ���� KEY_A �ͽ�����ѭ��
//   46     SRART_CHECK();
          CFI FunCall start_check
        BL       start_check
//   47 
//   48     gpio_init(PTA4,GPO,1);  //��ʼ��Ϊ���1���� ������ NMI �ж�
        MOVS     R2,#+1
        MOVS     R1,#+1
        MOVS     R0,#+4
          CFI FunCall gpio_init
        BL       gpio_init
//   49 #if   MK60F15
//   50 
//   51     SCB->CPACR |=((3UL << 10*2)|(3UL << 11*2));     /* set CP10 and CP11 Full Access */
        LDR.N    R0,??DataTable4  ;; 0xe000ed88
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0xF00000
        LDR.N    R1,??DataTable4  ;; 0xe000ed88
        STR      R0,[R1, #+0]
//   52 
//   53 #endif
//   54     main();             // ִ���û�������
          CFI FunCall main
        BL       main
//   55 
//   56     while(1);           // ��ѭ��
??start_0:
        B.N      ??start_0
          CFI EndBlock cfiBlock0
//   57 }
//   58 
//   59 /*!
//   60  *  @brief      ϵͳ��ʼ��������ϵͳƵ�ʣ���ʼ��printf�˿�
//   61  *  @since      v5.0
//   62  *  @note       �˺�����ϵͳ���������ɻ�ຯ�����ã�Ȼ��ִ��main����
//   63  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function sysinit
        THUMB
//   64 void sysinit (void)
//   65 {
sysinit:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//   66     core_clk_mhz = pll_init(CORE_CLK);     //����ϵͳʱ��
        MOVS     R0,#+2
          CFI FunCall pll_init
        BL       pll_init
        LDR.N    R1,??DataTable4_1
        STR      R0,[R1, #+0]
//   67 
//   68     core_clk_khz = core_clk_mhz * 1000;     //�����úõ�ʱ�Ӷ�������ȫ�ֱ�����Ա����ʹ��
        LDR.N    R0,??DataTable4_1
        LDR      R0,[R0, #+0]
        MOV      R1,#+1000
        MULS     R0,R1,R0
        LDR.N    R1,??DataTable4_2
        STR      R0,[R1, #+0]
//   69     bus_clk_khz = core_clk_khz / (((SIM_CLKDIV1 & SIM_CLKDIV1_OUTDIV2_MASK) >> 24) + 1);
        LDR.N    R0,??DataTable4_2
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable4_3  ;; 0x40048044
        LDR      R1,[R1, #+0]
        UBFX     R1,R1,#+24,#+4
        ADDS     R1,R1,#+1
        UDIV     R0,R0,R1
        LDR.N    R1,??DataTable4_4
        STR      R0,[R1, #+0]
//   70 
//   71     uart_init (VCAN_PORT, VCAN_BAUD);   //��ʼ��printf�õ��Ĺܽ�
        MOVS     R1,#+115200
        MOVS     R0,#+4
          CFI FunCall uart_init
        BL       uart_init
//   72 }
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock1
//   73 
//   74 /*!
//   75  *  @brief      trace ʱ����� ��ʼ��
//   76  *  @since      v5.0
//   77  *  @note       ������У��ʱ������Ƿ���ȷ
//   78  *  @author     ��˼������˾
//   79  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function trace_clk_init
          CFI NoCalls
        THUMB
//   80 void trace_clk_init(void)
//   81 {
//   82     /* Set the trace clock to the core clock frequency */
//   83     SIM_SOPT2 |= SIM_SOPT2_TRACECLKSEL_MASK;
trace_clk_init:
        LDR.N    R0,??DataTable4_5  ;; 0x40048004
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1000
        LDR.N    R1,??DataTable4_5  ;; 0x40048004
        STR      R0,[R1, #+0]
//   84 
//   85     /* Enable the TRACE_CLKOUT pin function on PTA6 (alt7 function) */
//   86     PORTA_PCR6 = ( PORT_PCR_MUX(0x7));
        MOV      R0,#+1792
        LDR.N    R1,??DataTable4_6  ;; 0x40049018
        STR      R0,[R1, #+0]
//   87 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock2
//   88 
//   89 /*!
//   90  *  @brief      fb ʱ����� ��ʼ��
//   91  *  @since      v5.0
//   92  *  @note       ������У��ʱ������Ƿ���ȷ
//   93  *  @author     ��˼������˾
//   94  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function fb_clk_init
          CFI NoCalls
        THUMB
//   95 void fb_clk_init(void)
//   96 {
//   97     /* Enable the clock to the FlexBus module */
//   98     SIM_SCGC7 |= SIM_SCGC7_FLEXBUS_MASK;
fb_clk_init:
        LDR.N    R0,??DataTable4_7  ;; 0x40048040
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable4_7  ;; 0x40048040
        STR      R0,[R1, #+0]
//   99 
//  100     /* Enable the FB_CLKOUT function on PTC3 (alt5 function) */
//  101     PORTC_PCR3 = ( PORT_PCR_MUX(0x5));
        MOV      R0,#+1280
        LDR.N    R1,??DataTable4_8  ;; 0x4004b00c
        STR      R0,[R1, #+0]
//  102 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock3
//  103 
//  104 
//  105 /*!
//  106  *  @brief      �����ж������� �� ��Ҫ�����ݵ� RAM��
//  107  *  @since      v5.0
//  108  *  @author     ��˼������˾
//  109  */
//  110 #pragma section = ".data"
//  111 #pragma section = ".data_init"
//  112 #pragma section = ".bss"
//  113 #pragma section = "CodeRelocate"
//  114 #pragma section = "CodeRelocateRam"
//  115 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function common_startup
        THUMB
//  116 void common_startup(void)
//  117 {
common_startup:
        PUSH     {R3-R9,LR}
          CFI R14 Frame(CFA, -4)
          CFI R9 Frame(CFA, -8)
          CFI R8 Frame(CFA, -12)
          CFI R7 Frame(CFA, -16)
          CFI R6 Frame(CFA, -20)
          CFI R5 Frame(CFA, -24)
          CFI R4 Frame(CFA, -28)
          CFI CFA R13+32
//  118     /* Declare a counter we'll use in all of the copy loops */
//  119     uint32 n;
//  120 
//  121     /* Declare pointers for various data sections. These pointers
//  122      * are initialized using values pulled in from the linker file
//  123      */
//  124     uint8 *data_ram, * data_rom, * data_rom_end;
//  125     uint8 *bss_start, * bss_end;
//  126 
//  127 
//  128     /*  VECTOR_TABLE �� VECTOR_RAM �ĵ�ַ��  linker �ļ����� ��*.icf�� */
//  129     extern uint32 __VECTOR_TABLE[];
//  130     extern uint32 __VECTOR_RAM[];
//  131 
//  132     /* ����ROM����ж�������RAM�� */
//  133     if (__VECTOR_RAM != __VECTOR_TABLE)             //�������RAM����������Ҫ�����ж�������
        LDR.N    R0,??DataTable4_9
        LDR.N    R1,??DataTable4_10
        CMP      R0,R1
        BEQ.N    ??common_startup_0
//  134     {
//  135         for (n = 0; n < 0x410; n++)                 //�������
        MOVS     R0,#+0
        MOV      R8,R0
??common_startup_1:
        CMP      R8,#+1040
        BCS.N    ??common_startup_0
//  136             __VECTOR_RAM[n] = __VECTOR_TABLE[n];
        LDR.N    R0,??DataTable4_10
        LDR      R0,[R0, R8, LSL #+2]
        LDR.N    R1,??DataTable4_9
        STR      R0,[R1, R8, LSL #+2]
        ADDS     R8,R8,#+1
        B.N      ??common_startup_1
//  137     }
//  138     /* ָ���µ��ж��������ַΪ __VECTOR_RAM */
//  139     write_vtor((uint32)__VECTOR_RAM);
??common_startup_0:
        LDR.N    R0,??DataTable4_9
          CFI FunCall write_vtor
        BL       write_vtor
//  140 
//  141     /* ���Ѹ���ֵ�ı�����ROM�︴�����ݵ�RAM�� */
//  142     data_ram = __section_begin(".data");            //�Ѹ���ֵ�ı����ĵ�ַ��RAM��
        LDR.N    R0,??DataTable4_11
        MOVS     R7,R0
//  143     data_rom = __section_begin(".data_init");       //�Ѹ���ֵ�ı��������ݴ����ROM���Ҫ��ֵ��RAM��
        LDR.N    R0,??DataTable4_12
        MOVS     R6,R0
//  144     data_rom_end = __section_end(".data_init");
        LDR.N    R0,??DataTable4_13
        MOVS     R4,R0
//  145     n = data_rom_end - data_rom;
        SUBS     R0,R4,R6
        MOV      R8,R0
//  146 
//  147     /* ���Ƴ�ʼ�����ݵ�RAM�� */
//  148     while (n--)
??common_startup_2:
        MOV      R0,R8
        SUBS     R8,R0,#+1
        CMP      R0,#+0
        BEQ.N    ??common_startup_3
//  149         *data_ram++ = *data_rom++;
        LDRB     R0,[R6, #+0]
        STRB     R0,[R7, #+0]
        ADDS     R6,R6,#+1
        ADDS     R7,R7,#+1
        B.N      ??common_startup_2
//  150 
//  151     /* û����ֵ���߳�ֵΪ0�ı�������Ҫ�����RAM������ݣ�ȷ��ֵΪ0 */
//  152     bss_start = __section_begin(".bss");
??common_startup_3:
        LDR.N    R0,??DataTable4_14
        MOV      R9,R0
//  153     bss_end = __section_end(".bss");
        LDR.N    R0,??DataTable4_15
        MOVS     R5,R0
//  154 
//  155     /* ���û����ֵ���߳�ֵΪ0�ı�������ֵ */
//  156     n = bss_end - bss_start;
        SUBS     R0,R5,R9
        MOV      R8,R0
//  157     while(n--)
??common_startup_4:
        MOV      R0,R8
        SUBS     R8,R0,#+1
        CMP      R0,#+0
        BEQ.N    ??common_startup_5
//  158         *bss_start++ = 0;
        MOVS     R0,#+0
        STRB     R0,[R9, #+0]
        ADDS     R9,R9,#+1
        B.N      ??common_startup_4
//  159 
//  160     /* ��ֵ�� __ramfunc �����ĺ����ĵĴ���ε� RAM�����Լӿ���������        */
//  161     uint8 *code_relocate_ram = __section_begin("CodeRelocateRam");
??common_startup_5:
        LDR.N    R0,??DataTable4_16
//  162     uint8 *code_relocate = __section_begin("CodeRelocate");
        LDR.N    R1,??DataTable4_17
//  163     uint8 *code_relocate_end = __section_end("CodeRelocate");
        LDR.N    R2,??DataTable4_18
//  164 
//  165     /* ��ROM�︴�ƺ������뵽RAM�� */
//  166     n = code_relocate_end - code_relocate;
        SUBS     R3,R2,R1
        MOV      R8,R3
//  167     while (n--)
??common_startup_6:
        MOV      R3,R8
        SUBS     R8,R3,#+1
        CMP      R3,#+0
        BEQ.N    ??common_startup_7
//  168         *code_relocate_ram++ = *code_relocate++;
        LDRB     R3,[R1, #+0]
        STRB     R3,[R0, #+0]
        ADDS     R1,R1,#+1
        ADDS     R0,R0,#+1
        B.N      ??common_startup_6
//  169 
//  170 }
??common_startup_7:
        POP      {R0,R4-R9,PC}    ;; return
          CFI EndBlock cfiBlock4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4:
        DC32     0xe000ed88

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_1:
        DC32     core_clk_mhz

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_2:
        DC32     core_clk_khz

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_3:
        DC32     0x40048044

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_4:
        DC32     bus_clk_khz

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_5:
        DC32     0x40048004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_6:
        DC32     0x40049018

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_7:
        DC32     0x40048040

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_8:
        DC32     0x4004b00c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_9:
        DC32     __VECTOR_RAM

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_10:
        DC32     __VECTOR_TABLE

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_11:
        DC32     SFB(`.data`)

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_12:
        DC32     SFB(`.data_init`)

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_13:
        DC32     SFE(`.data_init`)

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_14:
        DC32     SFB(`.bss`)

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_15:
        DC32     SFE(`.bss`)

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_16:
        DC32     SFB(CodeRelocateRam)

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_17:
        DC32     SFB(CodeRelocate)

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_18:
        DC32     SFE(CodeRelocate)

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION `.data`:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION `.data_init`:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION CodeRelocate:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION CodeRelocateRam:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
// 
//  12 bytes in section .bss
// 378 bytes in section .text
// 
// 378 bytes of CODE memory
//  12 bytes of DATA memory
//
//Errors: none
//Warnings: none
