#include "compliance_test.h"
#include "compliance_io.h"
#include "test_macros.h"

RV_COMPLIANCE_RV32M

RV_COMPLIANCE_CODE_BEGIN
    la a1,test_results
    li t1, 0xf38e07165dd79cfa
    li a4, 0xf2f25a0bc4ed4893
    li s8, 0x72c8a75d987a10dd
    cmix t5,t1,a4,s8
    sd t5,0(a1)
    li s4, 0x25f269ba9c6f7aa2
    li t3, 0x11fe7c5ffcae8655
    li t4, 0x3ee8d76702a2826c
    cmix t1,s4,t3,t4
    sd t1,8(a1)
    li s0, 0xe6b16607a8a22391
    li a2, 0xb4ea93d41b4286dd
    li t2, 0x682ae2c6988c0022
    cmix s8,s0,a2,t2
    sd s8,16(a1)
    li s4, 0xb6213a3c430b3272
    li a5, 0xd1ced3e82b77485c
    li s7, 0xfde0bbd38b8e8f3e
    cmix t1,s4,a5,s7
    sd t1,24(a1)
    li t3, 0xf0190cecadd85909
    li t2, 0x38b5a7ff116023b7
    li s6, 0x0557f01f29d882a1
    cmix a0,t3,t2,s6
    sd a0,32(a1)
    li s5, 0x0000000000000000
    li s2, 0x6198b4fc2ba53005
    li s9, 0x33f7912ab208965f
    cmix s7,s5,s2,s9
    sd s7,40(a1)
    RV_COMPLIANCE_HALT
RV_COMPLIANCE_CODE_END

.data
RV_COMPLIANCE_DATA_BEGIN
test_results:
.fill 6,8,-1
RV_COMPLIANCE_DATA_END
