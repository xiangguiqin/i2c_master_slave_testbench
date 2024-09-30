/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.12.0.240.2 */
/* Module Version: 7.5 */
/* D:\Lattice\diamond\3.12\ispfpga\bin\nt64\scuba.exe -w -n ddc_edid_dpram -lang verilog -synth synplify -bus_exp 7 -bb -arch sa5p00 -type bram -wp 11 -rp 1010 -data_width 8 -rdata_width 8 -num_rows 4096 -cascade -1 -memfile d:/d/fpga/ic/src/ipcore/ddc_edid_dpram/edid.mem -memformat hex -writemodeA NORMAL -writemodeB NORMAL -fdc D:/D/fpga/ic/src/ipcore/ddc_edid_dpram/ddc_edid_dpram.fdc  */
/* Mon Sep 30 11:20:43 2024 */


`timescale 1 ns / 1 ps
module ddc_edid_dpram (DataInA, DataInB, AddressA, AddressB, ClockA, 
    ClockB, ClockEnA, ClockEnB, WrA, WrB, ResetA, ResetB, QA, QB)/* synthesis NGD_DRC_MASK=1 */;
    input wire [7:0] DataInA;
    input wire [7:0] DataInB;
    input wire [11:0] AddressA;
    input wire [11:0] AddressB;
    input wire ClockA;
    input wire ClockB;
    input wire ClockEnA;
    input wire ClockEnB;
    input wire WrA;
    input wire WrB;
    input wire ResetA;
    input wire ResetB;
    output wire [7:0] QA;
    output wire [7:0] QB;

    wire scuba_vhi;
    wire scuba_vlo;

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    defparam ddc_edid_dpram_0_0_1.INIT_DATA = "STATIC" ;
    defparam ddc_edid_dpram_0_0_1.ASYNC_RESET_RELEASE = "SYNC" ;
    defparam ddc_edid_dpram_0_0_1.INITVAL_3F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_0_1.INITVAL_3E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_0_1.INITVAL_3D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_0_1.INITVAL_3C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_0_1.INITVAL_3B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_0_1.INITVAL_3A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_0_1.INITVAL_39 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_0_1.INITVAL_38 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_0_1.INITVAL_37 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_0_1.INITVAL_36 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_0_1.INITVAL_35 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_0_1.INITVAL_34 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_0_1.INITVAL_33 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_0_1.INITVAL_32 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_0_1.INITVAL_31 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_0_1.INITVAL_30 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_0_1.INITVAL_2F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_0_1.INITVAL_2E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_0_1.INITVAL_2D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_0_1.INITVAL_2C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_0_1.INITVAL_2B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_0_1.INITVAL_2A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_0_1.INITVAL_29 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_0_1.INITVAL_28 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_0_1.INITVAL_27 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_0_1.INITVAL_26 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_0_1.INITVAL_25 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_0_1.INITVAL_24 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_0_1.INITVAL_23 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_0_1.INITVAL_22 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_0_1.INITVAL_21 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_0_1.INITVAL_20 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_0_1.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_0_1.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_0_1.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_0_1.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_0_1.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_0_1.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_0_1.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_0_1.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_0_1.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_0_1.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_0_1.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_0_1.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_0_1.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_0_1.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_0_1.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_0_1.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_0_1.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_0_1.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_0_1.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_0_1.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_0_1.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_0_1.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_0_1.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_0_1.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_0_1.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_0_1.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_0_1.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_0_1.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_0_1.INITVAL_03 = "0x0C0000000E0001E08058100E00580D026E9106C3000611600000C1603A631FE2000A3F004301024D" ;
    defparam ddc_edid_dpram_0_0_1.INITVAL_02 = "0x10E3202000190000183D00013068711DE071A27700E511F2240AC230ACF100403028250C01408E32" ;
    defparam ddc_edid_dpram_0_0_1.INITVAL_01 = "0x1820000000140C51F8001A0000000014C40036EF160C0000E0002E400AC801A81100A21C0011C80A" ;
    defparam ddc_edid_dpram_0_0_1.INITVAL_00 = "0x1000A00400110110221102211022110220F1F47F0D2C407AEA1000106283022110001D01EFF1FEF0" ;
    defparam ddc_edid_dpram_0_0_1.CSDECODE_B = "0b000" ;
    defparam ddc_edid_dpram_0_0_1.CSDECODE_A = "0b000" ;
    defparam ddc_edid_dpram_0_0_1.WRITEMODE_B = "NORMAL" ;
    defparam ddc_edid_dpram_0_0_1.WRITEMODE_A = "NORMAL" ;
    defparam ddc_edid_dpram_0_0_1.GSR = "ENABLED" ;
    defparam ddc_edid_dpram_0_0_1.RESETMODE = "ASYNC" ;
    defparam ddc_edid_dpram_0_0_1.REGMODE_B = "NOREG" ;
    defparam ddc_edid_dpram_0_0_1.REGMODE_A = "NOREG" ;
    defparam ddc_edid_dpram_0_0_1.DATA_WIDTH_B = 4 ;
    defparam ddc_edid_dpram_0_0_1.DATA_WIDTH_A = 4 ;
    DP16KD ddc_edid_dpram_0_0_1 (.DIA17(scuba_vlo), .DIA16(scuba_vlo), .DIA15(scuba_vlo), 
        .DIA14(scuba_vlo), .DIA13(scuba_vlo), .DIA12(scuba_vlo), .DIA11(scuba_vlo), 
        .DIA10(scuba_vlo), .DIA9(scuba_vlo), .DIA8(scuba_vlo), .DIA7(scuba_vlo), 
        .DIA6(scuba_vlo), .DIA5(scuba_vlo), .DIA4(scuba_vlo), .DIA3(DataInA[3]), 
        .DIA2(DataInA[2]), .DIA1(DataInA[1]), .DIA0(DataInA[0]), .ADA13(AddressA[11]), 
        .ADA12(AddressA[10]), .ADA11(AddressA[9]), .ADA10(AddressA[8]), 
        .ADA9(AddressA[7]), .ADA8(AddressA[6]), .ADA7(AddressA[5]), .ADA6(AddressA[4]), 
        .ADA5(AddressA[3]), .ADA4(AddressA[2]), .ADA3(AddressA[1]), .ADA2(AddressA[0]), 
        .ADA1(scuba_vlo), .ADA0(scuba_vlo), .CEA(ClockEnA), .OCEA(ClockEnA), 
        .CLKA(ClockA), .WEA(WrA), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(scuba_vlo), 
        .RSTA(ResetA), .DIB17(scuba_vlo), .DIB16(scuba_vlo), .DIB15(scuba_vlo), 
        .DIB14(scuba_vlo), .DIB13(scuba_vlo), .DIB12(scuba_vlo), .DIB11(scuba_vlo), 
        .DIB10(scuba_vlo), .DIB9(scuba_vlo), .DIB8(scuba_vlo), .DIB7(scuba_vlo), 
        .DIB6(scuba_vlo), .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(DataInB[3]), 
        .DIB2(DataInB[2]), .DIB1(DataInB[1]), .DIB0(DataInB[0]), .ADB13(AddressB[11]), 
        .ADB12(AddressB[10]), .ADB11(AddressB[9]), .ADB10(AddressB[8]), 
        .ADB9(AddressB[7]), .ADB8(AddressB[6]), .ADB7(AddressB[5]), .ADB6(AddressB[4]), 
        .ADB5(AddressB[3]), .ADB4(AddressB[2]), .ADB3(AddressB[1]), .ADB2(AddressB[0]), 
        .ADB1(scuba_vlo), .ADB0(scuba_vlo), .CEB(ClockEnB), .OCEB(ClockEnB), 
        .CLKB(ClockB), .WEB(WrB), .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(scuba_vlo), 
        .RSTB(ResetB), .DOA17(), .DOA16(), .DOA15(), .DOA14(), .DOA13(), 
        .DOA12(), .DOA11(), .DOA10(), .DOA9(), .DOA8(), .DOA7(), .DOA6(), 
        .DOA5(), .DOA4(), .DOA3(QA[3]), .DOA2(QA[2]), .DOA1(QA[1]), .DOA0(QA[0]), 
        .DOB17(), .DOB16(), .DOB15(), .DOB14(), .DOB13(), .DOB12(), .DOB11(), 
        .DOB10(), .DOB9(), .DOB8(), .DOB7(), .DOB6(), .DOB5(), .DOB4(), 
        .DOB3(QB[3]), .DOB2(QB[2]), .DOB1(QB[1]), .DOB0(QB[0]))
             /* synthesis MEM_LPC_FILE="ddc_edid_dpram.lpc" */
             /* synthesis MEM_INIT_FILE="edid.mem" */;

    VLO scuba_vlo_inst (.Z(scuba_vlo));

    defparam ddc_edid_dpram_0_1_0.INIT_DATA = "STATIC" ;
    defparam ddc_edid_dpram_0_1_0.ASYNC_RESET_RELEASE = "SYNC" ;
    defparam ddc_edid_dpram_0_1_0.INITVAL_3F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_1_0.INITVAL_3E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_1_0.INITVAL_3D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_1_0.INITVAL_3C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_1_0.INITVAL_3B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_1_0.INITVAL_3A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_1_0.INITVAL_39 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_1_0.INITVAL_38 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_1_0.INITVAL_37 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_1_0.INITVAL_36 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_1_0.INITVAL_35 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_1_0.INITVAL_34 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_1_0.INITVAL_33 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_1_0.INITVAL_32 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_1_0.INITVAL_31 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_1_0.INITVAL_30 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_1_0.INITVAL_2F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_1_0.INITVAL_2E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_1_0.INITVAL_2D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_1_0.INITVAL_2C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_1_0.INITVAL_2B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_1_0.INITVAL_2A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_1_0.INITVAL_29 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_1_0.INITVAL_28 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_1_0.INITVAL_27 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_1_0.INITVAL_26 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_1_0.INITVAL_25 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_1_0.INITVAL_24 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_1_0.INITVAL_23 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_1_0.INITVAL_22 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_1_0.INITVAL_21 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_1_0.INITVAL_20 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_1_0.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_1_0.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_1_0.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_1_0.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_1_0.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_1_0.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_1_0.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_1_0.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_1_0.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_1_0.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_1_0.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_1_0.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_1_0.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_1_0.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_1_0.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_1_0.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_1_0.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_1_0.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_1_0.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_1_0.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_1_0.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_1_0.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_1_0.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_1_0.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_1_0.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_1_0.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_1_0.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_1_0.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ddc_edid_dpram_0_1_0.INITVAL_03 = "0x000000000100028188521641D0B60101AE91280401A401D0701A81E0000E000E0180EC01C0C0E0C5" ;
    defparam ddc_edid_dpram_0_1_0.INITVAL_02 = "0x1AC0000C02076010000600008000600EA50060050A0100E031002100201212421020060CC650EC00" ;
    defparam ddc_edid_dpram_0_1_0.INITVAL_01 = "0x1E0220442200035008301E0000442200A5208844080F0000100048C0082508437030300200211808" ;
    defparam ddc_edid_dpram_0_1_0.INITVAL_00 = "0x0B6850FE321C0000000000000000000000E1684005245152E00E0080001300000006E201EFF1FEF0" ;
    defparam ddc_edid_dpram_0_1_0.CSDECODE_B = "0b000" ;
    defparam ddc_edid_dpram_0_1_0.CSDECODE_A = "0b000" ;
    defparam ddc_edid_dpram_0_1_0.WRITEMODE_B = "NORMAL" ;
    defparam ddc_edid_dpram_0_1_0.WRITEMODE_A = "NORMAL" ;
    defparam ddc_edid_dpram_0_1_0.GSR = "ENABLED" ;
    defparam ddc_edid_dpram_0_1_0.RESETMODE = "ASYNC" ;
    defparam ddc_edid_dpram_0_1_0.REGMODE_B = "NOREG" ;
    defparam ddc_edid_dpram_0_1_0.REGMODE_A = "NOREG" ;
    defparam ddc_edid_dpram_0_1_0.DATA_WIDTH_B = 4 ;
    defparam ddc_edid_dpram_0_1_0.DATA_WIDTH_A = 4 ;
    DP16KD ddc_edid_dpram_0_1_0 (.DIA17(scuba_vlo), .DIA16(scuba_vlo), .DIA15(scuba_vlo), 
        .DIA14(scuba_vlo), .DIA13(scuba_vlo), .DIA12(scuba_vlo), .DIA11(scuba_vlo), 
        .DIA10(scuba_vlo), .DIA9(scuba_vlo), .DIA8(scuba_vlo), .DIA7(scuba_vlo), 
        .DIA6(scuba_vlo), .DIA5(scuba_vlo), .DIA4(scuba_vlo), .DIA3(DataInA[7]), 
        .DIA2(DataInA[6]), .DIA1(DataInA[5]), .DIA0(DataInA[4]), .ADA13(AddressA[11]), 
        .ADA12(AddressA[10]), .ADA11(AddressA[9]), .ADA10(AddressA[8]), 
        .ADA9(AddressA[7]), .ADA8(AddressA[6]), .ADA7(AddressA[5]), .ADA6(AddressA[4]), 
        .ADA5(AddressA[3]), .ADA4(AddressA[2]), .ADA3(AddressA[1]), .ADA2(AddressA[0]), 
        .ADA1(scuba_vlo), .ADA0(scuba_vlo), .CEA(ClockEnA), .OCEA(ClockEnA), 
        .CLKA(ClockA), .WEA(WrA), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(scuba_vlo), 
        .RSTA(ResetA), .DIB17(scuba_vlo), .DIB16(scuba_vlo), .DIB15(scuba_vlo), 
        .DIB14(scuba_vlo), .DIB13(scuba_vlo), .DIB12(scuba_vlo), .DIB11(scuba_vlo), 
        .DIB10(scuba_vlo), .DIB9(scuba_vlo), .DIB8(scuba_vlo), .DIB7(scuba_vlo), 
        .DIB6(scuba_vlo), .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(DataInB[7]), 
        .DIB2(DataInB[6]), .DIB1(DataInB[5]), .DIB0(DataInB[4]), .ADB13(AddressB[11]), 
        .ADB12(AddressB[10]), .ADB11(AddressB[9]), .ADB10(AddressB[8]), 
        .ADB9(AddressB[7]), .ADB8(AddressB[6]), .ADB7(AddressB[5]), .ADB6(AddressB[4]), 
        .ADB5(AddressB[3]), .ADB4(AddressB[2]), .ADB3(AddressB[1]), .ADB2(AddressB[0]), 
        .ADB1(scuba_vlo), .ADB0(scuba_vlo), .CEB(ClockEnB), .OCEB(ClockEnB), 
        .CLKB(ClockB), .WEB(WrB), .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(scuba_vlo), 
        .RSTB(ResetB), .DOA17(), .DOA16(), .DOA15(), .DOA14(), .DOA13(), 
        .DOA12(), .DOA11(), .DOA10(), .DOA9(), .DOA8(), .DOA7(), .DOA6(), 
        .DOA5(), .DOA4(), .DOA3(QA[7]), .DOA2(QA[6]), .DOA1(QA[5]), .DOA0(QA[4]), 
        .DOB17(), .DOB16(), .DOB15(), .DOB14(), .DOB13(), .DOB12(), .DOB11(), 
        .DOB10(), .DOB9(), .DOB8(), .DOB7(), .DOB6(), .DOB5(), .DOB4(), 
        .DOB3(QB[7]), .DOB2(QB[6]), .DOB1(QB[5]), .DOB0(QB[4]))
             /* synthesis MEM_LPC_FILE="ddc_edid_dpram.lpc" */
             /* synthesis MEM_INIT_FILE="edid.mem" */;



    // exemplar begin
    // exemplar attribute ddc_edid_dpram_0_0_1 MEM_LPC_FILE ddc_edid_dpram.lpc
    // exemplar attribute ddc_edid_dpram_0_0_1 MEM_INIT_FILE edid.mem
    // exemplar attribute ddc_edid_dpram_0_1_0 MEM_LPC_FILE ddc_edid_dpram.lpc
    // exemplar attribute ddc_edid_dpram_0_1_0 MEM_INIT_FILE edid.mem
    // exemplar end

endmodule
