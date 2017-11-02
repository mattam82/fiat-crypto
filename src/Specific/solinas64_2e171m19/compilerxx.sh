#!/bin/sh
set -eu

g++ -march=native -mtune=native -std=gnu++11 -O3 -flto -fomit-frame-pointer -fwrapv -Wno-attributes -Dmodulus_limbs='3' -Dmodulus_bytes_val='57' -Dlimb_t=uint64_t -Dlimb_weight_gaps_array='{57,57,57}' -Dmodulus_array='{0x07,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xed}' -Dq_mpz='(1_mpz<<171) - 19' "$@"