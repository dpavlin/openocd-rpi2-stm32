#!/bin/sh -xe

#openocd -f ../rpi4-jtag.cfg -f fpga.cfg
#openocd -f ../rpi4-jtag.cfg -f saxon.cfg

# cp /fpga/SaxonSoc/cpu0.yaml .

SAXON_ROOT=/home/pi
# rsync -rav /fpga/openocd_riscv/openocd_riscv $SAXON_ROOT
SAXON_BSP_PATH=/home/pi/openocd-rpi2-stm32/ulx3s-85/
# rsync -rav /fpga/SaxonSoc/bsp/radiona/ulx3s/smp/openocd/ openocd/
$SAXON_ROOT/openocd_riscv/src/openocd -s $SAXON_ROOT/openocd_riscv/tcl -s $SAXON_BSP_PATH/openocd -c 'set CPU0_YAML cpu0.yaml' -f ../rpi4-jtag.cfg -f saxon.cfg -f soc_init.cfg
