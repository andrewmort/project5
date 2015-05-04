#!/bin/bash
ARG_DESIGNSOURCE=verilog/tiny_comb.v
ARG_WORKDIR=workdir_comb
TEMP_FILE=temp
LOG_DIR=$ARG_WORKDIR/logs
PFAULT_DIR=../pfaults

mkdir -p $LOG_DIR
rm -rf $ARG_WORKDIR/tbdata
rm -rf $ARG_WORKDIR/testresults


# ----------- Tasks to Generate Test Vectors ------------
rm -f $TEMP_FILE
echo "echo Building Model" >> $TEMP_FILE
echo "build_model WORKDIR=$ARG_WORKDIR DESIGNSOURCE=$ARG_DESIGNSOURCE > $LOG_DIR/1_build_model.out" > $TEMP_FILE

echo "echo Building Test Mode" >> $TEMP_FILE
echo "build_testmode TESTMODE=FULLSCAN WORKDIR=$ARG_WORKDIR > $LOG_DIR/2_build_testmode.out" >> $TEMP_FILE

echo "echo Building Fault Model" >> $TEMP_FILE
echo "build_faultmodel includeignore=no cellnamefaultrules=yes includedynamic=no faultpath=$PFAULT_DIR precollapsed=no workdir=$ARG_WORKDIR ignoreblackbox=yes cellfaults=no > $LOG_DIR/3_build_faultmodel.out" >> $TEMP_FILE  
#echo "build_faultmodel includeignore=no includedynamic=no precollapsed=no workdir=$ARG_WORKDIR ignoreblackbox=yes cellfaults=no > $LOG_DIR/build_faultmodel.out" >> $TEMP_FILE  

echo "echo Verifying Test Structures" >> $TEMP_FILE
echo "verify_test_structures WORKDIR=$ARG_WORKDIR TESTMODE=FULLSCAN > $LOG_DIR/4_verfiy_test_structures.out" >> $TEMP_FILE

echo "echo Creating Logic Tests" >> $TEMP_FILE
echo "create_logic_tests WORKDIR=$ARG_WORKDIR TESTMODE=FULLSCAN EXPERIMENT=exp_comb > $LOG_DIR/5_create_logic_tests.out" >> $TEMP_FILE

echo "echo Writing Vectors" >> $TEMP_FILE
echo "write_vectors WORKDIR=$ARG_WORKDIR TESTMODE=FULLSCAN language=stil inexperiment=exp_comb > $LOG_DIR/6_write_vectors.out" >> $TEMP_FILE

echo "echo Reporting Faults" >> $TEMP_FILE
echo "report_faults faulttype=static reportcircuit=yes faultstatus=untested experiment=exp_comb testmode=FULLSCAN inputcommitted=no workdir=$ARG_WORKDIR > $LOG_DIR/7_report_faults.out" >> $TEMP_FILE
#echo "report_faults faultstatus=untested,redundant experiment=exp_comb testmode=FULLSCAN inputcommitted=no workdir=$ARG_WORKDIR > $LOG_DIR/report_faults.out" >> $TEMP_FILE

# ----------- Source Test Tools ------------
source ../../cet_source/tools_et

# ----------- Run Encounter to Generate Vectors ------------
et -c  < $TEMP_FILE

# ----------- Cleanup Temp file------------
rm -f $TEMP_FILE



