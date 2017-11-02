#!/bin/sh
set -eu

g++ -march=native -mtune=native -std=gnu++11 -O3 -flto -fomit-frame-pointer -fwrapv -Wno-attributes -Dmodulus_limbs='6' -Dmodulus_bytes_val='25 + 1/3' -Dlimb_t=uint32_t -Dlimb_weight_gaps_array='{26,25,25,26,25,25}' -Dmodulus_array='{0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xef}' -Dq_mpz='(1_mpz<<152) - 17' "$@"