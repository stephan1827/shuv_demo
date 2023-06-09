(********************************************************************
 * COPYRIGHT -- B&R Industrial Automation GmbH
 ********************************************************************
 * Library: runtime
 * File: runtime.fun
 * Author: B+R
 ********************************************************************
 * Functions and function blocks of library runtime
 ********************************************************************)
                                                                      
{REDUND_OK} FUNCTION_BLOCK r_trig 			(*for internal use only - do not use this function in user programs*)
	VAR_INPUT
		CLK	:BOOL;
	END_VAR
	VAR_OUTPUT
		Q	:BOOL;
	END_VAR
	VAR
		M	:BOOL;
	END_VAR
END_FUNCTION_BLOCK
{REDUND_OK} FUNCTION_BLOCK f_trig 			(*for internal use only - do not use this function in user programs*)
	VAR_INPUT
		CLK	:BOOL;
	END_VAR
	VAR_OUTPUT
		Q	:BOOL;
	END_VAR
	VAR
		M	:BOOL;
	END_VAR
END_FUNCTION_BLOCK
{REDUND_OK} FUNCTION_BLOCK rf_trig 			(*for internal use only - do not use this function in user programs*)
	VAR_INPUT
		CLK	:BOOL;
	END_VAR
	VAR_OUTPUT
		Q	:BOOL;
	END_VAR
	VAR
		M	:BOOL;
	END_VAR
END_FUNCTION_BLOCK
FUNCTION GetTime : TIME 		(*for internal use only - do not use this function in user programs*)
END_FUNCTION
{REDUND_OK} FUNCTION_BLOCK SFCActionControl (*for internal use only - do not use this function in user programs*)
	VAR_INPUT
		N	:BOOL;
		R0	:BOOL;
		S0	:BOOL;
		L	:BOOL;
		D	:BOOL;
		P	:BOOL;
		SD	:BOOL;
		DS	:BOOL;
		SL	:BOOL;
		T	:TIME;
	END_VAR
	VAR_OUTPUT
		Q	:BOOL;
	END_VAR
	VAR
		S_FF_SET	:USINT;
		S_FF_R1		:USINT;
		S_FF_Q		:USINT;
		dummy1		:USINT;
		L_TMR_PT	:TIME;
		L_TMR_ET	:TIME;
		L_TMR_STAR	:TIME;
		L_TMR_IN	:USINT;
		L_TMR_Q		:USINT;
		L_TMR_M		:USINT;
		dummy2		:USINT;
		D_TMR_PT	:TIME;
		D_TMR_ET	:TIME;
		D_TMR_STAR	:TIME;
		D_TMR_IN	:USINT;
		D_TMR_Q		:USINT;
		D_TMR_M		:USINT;
		dummy3		:USINT;
		P_TRIG_CLK	:USINT;
		P_TRIG_Q	:USINT;
		P_TRIG_M	:USINT;
		dummy4		:USINT;
		SD_TMR_PT	:TIME;
		SD_TMR_ET	:TIME;
		SD_TMR_STA	:TIME;
		SD_TMR_IN	:USINT;
		SD_TMR_Q	:USINT;
		SD_TMR_M	:USINT;
		dummy5		:USINT;
		SD_FF_SET	:USINT;
		SD_FF_R1	:USINT;
		SD_FF_Q		:USINT;
		DS_FF_SET	:USINT;
		DS_FF_R1	:USINT;
		DS_FF_Q		:USINT;
		DS_TMR_PT	:TIME;
		DS_TMR_ET	:TIME;
		DS_TMR_STA	:TIME;
		DS_TMR_IN	:USINT;
		DS_TMR_Q	:USINT;
		DS_TMR_M	:USINT;
		dummy6		:USINT;
		SL_FF_SET	:USINT;
		SL_FF_R1	:USINT;
		SL_FF_Q		:USINT;
		dummy7		:USINT;
		SL_TMR_PT	:TIME;
		SL_TMR_ET	:TIME;
		SL_TMR_STA	:TIME;
		SL_TMR_IN	:USINT;
		SL_TMR_Q	:USINT;
		SL_TMR_M	:USINT;
		dummy8		:USINT;
	END_VAR
END_FUNCTION_BLOCK
{REDUND_OK} FUNCTION_BLOCK SFCAC2				(*for internal use only - do not use this function in user programs*)
	VAR_INPUT
		N	: {REDUND_UNREPLICABLE} BOOL;
		R0	: {REDUND_UNREPLICABLE} BOOL;
		S0	: {REDUND_UNREPLICABLE} BOOL;
		L	: {REDUND_UNREPLICABLE} BOOL;
		D	: {REDUND_UNREPLICABLE} BOOL;
		P	: {REDUND_UNREPLICABLE} BOOL;
		P1	: {REDUND_UNREPLICABLE} BOOL;
		P0	: {REDUND_UNREPLICABLE} BOOL;
		SD	: {REDUND_UNREPLICABLE} BOOL;
		DS	: {REDUND_UNREPLICABLE} BOOL;
		SL	: {REDUND_UNREPLICABLE} BOOL;
		T	:TIME;
	END_VAR
	VAR_OUTPUT
		Q	:BOOL;
		A	:BOOL;
	END_VAR
	VAR
		S_FF_SET	:USINT;
		S_FF_R1		:USINT;
		S_FF_Q		:USINT;
		L_TMR_PT	:TIME;
		L_TMR_ET	:TIME;
		L_TMR_STAR	:TIME;
		L_TMR_IN	:USINT;
		L_TMR_Q		:USINT;
		L_TMR_M		:USINT;
		D_TMR_PT	:TIME;
		D_TMR_ET	:TIME;
		D_TMR_STAR	:TIME;
		D_TMR_IN	:USINT;
		D_TMR_Q		:USINT;
		D_TMR_M		:USINT;
		SD_TMR_PT	:TIME;
		SD_TMR_ET	:TIME;
		SD_TMR_STA	:TIME;
		SD_TMR_IN	:USINT;
		SD_TMR_Q	:USINT;
		SD_TMR_M	:USINT;
		SD_FF_SET	:USINT;
		SD_FF_R1	:USINT;
		SD_FF_Q1	:USINT;
		DS_FF_SET	:USINT;
		DS_FF_R1	:USINT;
		DS_FF_Q1	:USINT;
		DS_TMR_PT	:TIME;
		DS_TMR_ET	:TIME;
		DS_TMR_STA	:TIME;
		DS_TMR_IN	:USINT;
		DS_TMR_Q	:USINT;
		DS_TMR_M	:USINT;
		SL_FF_SET	:USINT;
		SL_FF_R1	:USINT;
		SL_FF_Q		:USINT;
		SL_TMR_PT	:TIME;
		SL_TMR_ET	:TIME;
		SL_TMR_STA	:TIME;
		SL_TMR_IN	:USINT;
		SL_TMR_Q	:USINT;
		SL_TMR_M	:USINT;
		P_TRIG_Q	:USINT;
		P_TRIG_M	:USINT;
		Q_TRIG_Q	:USINT;
		Q_TRIG_M	:USINT;
		P1_TRIG_Q	:USINT;
		P1_TRIG_M	:USINT;
		P0_TRIG_Q	:USINT;
		P0_TRIG_M	:USINT;
	END_VAR
END_FUNCTION_BLOCK
{REDUND_OK} FUNCTION RealTan : LREAL
	VAR_INPUT
		x	:LREAL;
	END_VAR
END_FUNCTION
{REDUND_OK} FUNCTION RealAtan : LREAL
	VAR_INPUT
		x	:LREAL;
	END_VAR
END_FUNCTION
{REDUND_OK} FUNCTION RealAsin : LREAL
	VAR_INPUT
		x	:LREAL;
	END_VAR
END_FUNCTION
{REDUND_OK} FUNCTION RealAcos : LREAL
	VAR_INPUT
		x	:LREAL;
	END_VAR
END_FUNCTION
{REDUND_OK} FUNCTION RealExp : LREAL
	VAR_INPUT
		x	:LREAL;
	END_VAR
END_FUNCTION
{REDUND_OK} FUNCTION RealLn : LREAL
	VAR_INPUT
		x	:LREAL;
	END_VAR
END_FUNCTION 
{REDUND_OK} FUNCTION RealLog : LREAL
	VAR_INPUT
		x	:LREAL;
	END_VAR
END_FUNCTION 
{REDUND_OK} FUNCTION RealExpt : LREAL
	VAR_INPUT
		x	:LREAL;
		y	:LREAL;
	END_VAR
END_FUNCTION 
{REDUND_OK} FUNCTION RealAbs : LREAL
	VAR_INPUT
		x	:LREAL;
	END_VAR
END_FUNCTION 
{REDUND_OK} FUNCTION RealSin : LREAL
	VAR_INPUT
		x	:LREAL;
	END_VAR
END_FUNCTION 
{REDUND_OK} FUNCTION RealCos : LREAL
	VAR_INPUT
		x	:LREAL;
	END_VAR
END_FUNCTION 
{REDUND_OK} FUNCTION RealSqrt : LREAL
	VAR_INPUT
		x	:LREAL;
	END_VAR
END_FUNCTION 
{REDUND_OK} FUNCTION_BLOCK SFCAC3				(*for internal use only - do not use this function in user programs*)
	VAR_INPUT
		N		: {REDUND_UNREPLICABLE} BOOL;
		R0		: {REDUND_UNREPLICABLE} BOOL;
		S0		: {REDUND_UNREPLICABLE} BOOL;
		L		: {REDUND_UNREPLICABLE} BOOL;
		D		: {REDUND_UNREPLICABLE} BOOL;
		P		: {REDUND_UNREPLICABLE} BOOL;
		P1		: {REDUND_UNREPLICABLE} BOOL;
		P0		: {REDUND_UNREPLICABLE} BOOL;
		SD		: {REDUND_UNREPLICABLE} BOOL;
		DS		: {REDUND_UNREPLICABLE} BOOL;
		SL		: {REDUND_UNREPLICABLE} BOOL;
		T		:LREAL;
		T_ACT	: {REDUND_UNREPLICABLE} LREAL;
		PAUSE	: {REDUND_UNREPLICABLE} BOOL;
	END_VAR
	VAR_OUTPUT
		Q	: {REDUND_UNREPLICABLE} BOOL;
		A	:BOOL;
	END_VAR
	VAR
		L_TMR		:TimerType;
		D_TMR		:TimerType;
		SD_TMR		:TimerType;
		DS_TMR		:TimerType;
		SL_TMR		:TimerType;
		S_FF_Q1		:USINT;
		SD_FF_Q1	:USINT;
		DS_FF_Q1	:USINT;
		SL_FF_Q1	:USINT;
		P_R_TRIG_Q	: {REDUND_UNREPLICABLE} USINT;
		P_R_TRIG_M	:USINT;
		Q_F_TRIG_Q	: {REDUND_UNREPLICABLE} USINT;
		Q_F_TRIG_M	:USINT;
		P1_R_TRIG_Q	: {REDUND_UNREPLICABLE} USINT;
		P1_R_TRIG_M	:USINT;
		P0_F_TRIG_Q	: {REDUND_UNREPLICABLE} USINT;
		P0_F_TRIG_M	:USINT;
	END_VAR
END_FUNCTION_BLOCK
