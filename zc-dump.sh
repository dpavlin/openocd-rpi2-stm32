#!/bin/sh -xe

id=$1
test -z "$id" && id=$$

/bin/echo -e "flash read_bank 0 $id.bank0\nflash read_bank 1 $id.bank1\nmdw 0x08080000 1536\nexit\n" | nc localhost 4444 | tee $id.eeprom
