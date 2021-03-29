#!/bin/sh -xe

openocd -f rpi4-zc-swd.cfg -f target/stm32l0_dual_bank.cfg

