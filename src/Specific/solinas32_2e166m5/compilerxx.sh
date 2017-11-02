#!/bin/sh
set -eu

g++ -march=native -mtune=native -std=gnu++11 -O3 -flto -fomit-frame-pointer -fwrapv -Wno-attributes -Dmodulus_limbs='11' -Dmodulus_bytes_val='15 + 1/11' -Dlimb_t=uint32_t -Dlimb_weight_gaps_array='{16,15,15,15,15,15,15,15,15,15,15}' -Dmodulus_array='{0x3f,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xfb}' -Dq_mpz='(1_mpz<<166) - 5' "$@"