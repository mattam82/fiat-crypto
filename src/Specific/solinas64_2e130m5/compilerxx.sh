#!/bin/sh
set -eu

g++ -march=native -mtune=native -std=gnu++11 -O3 -flto -fomit-frame-pointer -fwrapv -Wno-attributes -Dmodulus_limbs='3' -Dmodulus_bytes_val='43 + 1/3' -Dlimb_t=uint64_t -Dlimb_weight_gaps_array='{44,43,43}' -Dmodulus_array='{0x03,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xfb}' -Dq_mpz='(1_mpz<<130) - 5 ' "$@"