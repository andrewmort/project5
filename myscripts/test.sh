#!/bin/bash
ARG_DESIGNSOURCE=example_s27/s27_comb.v
ARG_WORKDIR=working_dir
TEMP_FILE=temp
LOG_DIR=$ARG_WORKDIR/logs

mkdir -p $LOG_DIR

# ----------- Tasks to Generate Test Vectors ------------
rm -f $TEMP_FILE
echo "echo Building Model" >> $TEMP_FILE
echo "build_model WORKDIR=$ARG_WORKDIR DESIGNSOURCE=$ARG_DESIGNSOURCE > $LOG_DIR/build_mode.out" > $TEMP_FILE
echo "echo Building Test Mode" >> $TEMP_FILE
echo "build_testmode TESTMODE=FULLSCAN WORKDIR=$ARG_WORKDIR > $LOG_DIR/build_testmode.out" >> $TEMP_FILE
echo "echo Building Fault Model" >> $TEMP_FILE
echo "build_faultmodel WORKDIR=$ARG_WORKDIR includedynamic=no overwrite=yes cellfaults=no > $LOG_DIR/build_faultmodel.out" >> $TEMP_FILE
echo "echo Verifying Test Structures" >> $TEMP_FILE
echo "verify_test_structures WORKDIR=$ARG_WORKDIR TESTMODE=FULLSCAN > $LOG_DIR/verfiy_test_structures.out" >> $TEMP_FILE
echo "echo Creating Logic Tests" >> $TEMP_FILE
echo "create_logic_tests WORKDIR=$ARG_WORKDIR TESTMODE=FULLSCAN EXPERIMENT=exp_comb > $LOG_DIR/create_logic_tests.out" >> $TEMP_FILE
echo "echo Writing Vectors" >> $TEMP_FILE
echo "write_vectors WORKDIR=$ARG_WORKDIR TESTMODE=FULLSCAN language=stil inexperiment=exp_comb > $LOG_DIR/write_vectors.out" >> $TEMP_FILE

# ----------- Source Test Tools ------------
source ../cet_source/tools_et

# ----------- Run Encounter to Generate Vectors ------------
et -c  < $TEMP_FILE

# ----------- Cleanup Temp file------------
rm -f $TEMP_FILE



