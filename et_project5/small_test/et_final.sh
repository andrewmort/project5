#!/bin/bash
ARG_DESIGNSOURCE=verilog/tiny_scan.v
ARG_WORKDIR=workdir_scan
TEMP_FILE=temp
LOG_DIR=$ARG_WORKDIR/logs
PFAULT_DIR=../pfaults
PINASSIGN=tiny_scan.FULLSCAN.pinassign
INPUTVECTOR=stage3/output/tiny_scan.vectors.stil

mkdir -p $LOG_DIR
rm -f $LOG_DIR/*
rm -rf $ARG_WORKDIR/tbdata
rm -rf $ARG_WORKDIR/testresults


# ----------- Tasks to Generate Test Vectors ------------
rm -f $TEMP_FILE
echo "echo Building Model" >> $TEMP_FILE
echo "build_model WORKDIR=$ARG_WORKDIR DESIGNSOURCE=$ARG_DESIGNSOURCE > $LOG_DIR/1_build_model.out" > $TEMP_FILE

echo "echo Building Test Mode" >> $TEMP_FILE
echo "build_testmode TESTMODE=FULLSCAN assignfile=$PINASSIGN WORKDIR=$ARG_WORKDIR > $LOG_DIR/2_build_testmode.out" >> $TEMP_FILE

echo "echo Building Fault Model" >> $TEMP_FILE
echo "build_faultmodel includeignore=no cellnamefaultrules=yes includedynamic=no faultpath=$PFAULT_DIR precollapsed=no workdir=$ARG_WORKDIR ignoreblackbox=yes cellfaults=no > $LOG_DIR/3_build_faultmodel.out" >> $TEMP_FILE  
#echo "build_faultmodel includeignore=no includedynamic=no precollapsed=no workdir=$ARG_WORKDIR ignoreblackbox=yes cellfaults=no > $LOG_DIR/build_faultmodel.out" >> $TEMP_FILE  

echo "echo Verifying Test Structures" >> $TEMP_FILE
echo "verify_test_structures WORKDIR=$ARG_WORKDIR TESTMODE=FULLSCAN > $LOG_DIR/4_verfiy_test_structures.out" >> $TEMP_FILE

echo "echo Simulating Vectors" >> $TEMP_FILE
echo "simulate_vectors WORKDIR=$ARG_WORKDIR TESTMODE=FULLSCAN EXPERIMENT=exp_scan faulttype=static importfile=$INPUTVECTOR > $LOG_DIR/5_simulate_vectors.out" >> $TEMP_FILE


# ----------- Source Test Tools ------------
source ../../cet_source/tools_et

# ----------- Run Encounter to Generate Vectors ------------
et -c  < $TEMP_FILE

# ----------- Cleanup Temp file------------
rm -f $TEMP_FILE



