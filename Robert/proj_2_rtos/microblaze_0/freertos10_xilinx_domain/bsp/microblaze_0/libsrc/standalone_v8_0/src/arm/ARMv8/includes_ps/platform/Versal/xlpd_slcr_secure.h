/*******************************************************************************
* Copyright (c) 2018 - 2021 Xilinx, Inc.  All rights reserved.
* SPDX-License-Identifier: MIT
*******************************************************************************/


#ifndef __XLPD_SLCR_SECURE_H__
#define __XLPD_SLCR_SECURE_H__


#ifdef __cplusplus
extern "C" {
#endif

/**
 *@cond nocomments
 */

/**
 * XlpdSlcrSecure Base Address
 */
#define XLPD_SLCR_SECURE_BASEADDR      0xFF510000UL

/**
 * Register: XlpdSlcrSecureCtrl
 */
#define XLPD_SLCR_SECURE_CTRL    ( ( XLPD_SLCR_SECURE_BASEADDR ) + 0x00000004UL )
#define XLPD_SLCR_SECURE_CTRL_RSTVAL   0x00000000UL

#define XLPD_SLCR_SECURE_CTRL_SLVERR_EN_SHIFT   0UL
#define XLPD_SLCR_SECURE_CTRL_SLVERR_EN_WIDTH   1UL
#define XLPD_SLCR_SECURE_CTRL_SLVERR_EN_MASK    0x00000001UL
#define XLPD_SLCR_SECURE_CTRL_SLVERR_EN_DEFVAL  0x0UL

/**
 * Register: XlpdSlcrSecureIsr
 */
#define XLPD_SLCR_SECURE_ISR    ( ( XLPD_SLCR_SECURE_BASEADDR ) + 0x00000008UL )
#define XLPD_SLCR_SECURE_ISR_RSTVAL   0x00000000UL

#define XLPD_SLCR_SECURE_ISR_ADDR_DECODE_ERR_SHIFT   0UL
#define XLPD_SLCR_SECURE_ISR_ADDR_DECODE_ERR_WIDTH   1UL
#define XLPD_SLCR_SECURE_ISR_ADDR_DECODE_ERR_MASK    0x00000001UL
#define XLPD_SLCR_SECURE_ISR_ADDR_DECODE_ERR_DEFVAL  0x0UL

/**
 * Register: XlpdSlcrSecureImr
 */
#define XLPD_SLCR_SECURE_IMR    ( ( XLPD_SLCR_SECURE_BASEADDR ) + 0x0000000CUL )
#define XLPD_SLCR_SECURE_IMR_RSTVAL   0x00000001UL

#define XLPD_SLCR_SECURE_IMR_ADDR_DECODE_ERR_SHIFT   0UL
#define XLPD_SLCR_SECURE_IMR_ADDR_DECODE_ERR_WIDTH   1UL
#define XLPD_SLCR_SECURE_IMR_ADDR_DECODE_ERR_MASK    0x00000001UL
#define XLPD_SLCR_SECURE_IMR_ADDR_DECODE_ERR_DEFVAL  0x1UL

/**
 * Register: XlpdSlcrSecureIer
 */
#define XLPD_SLCR_SECURE_IER    ( ( XLPD_SLCR_SECURE_BASEADDR ) + 0x00000010UL )
#define XLPD_SLCR_SECURE_IER_RSTVAL   0x00000000UL

#define XLPD_SLCR_SECURE_IER_ADDR_DECODE_ERR_SHIFT   0UL
#define XLPD_SLCR_SECURE_IER_ADDR_DECODE_ERR_WIDTH   1UL
#define XLPD_SLCR_SECURE_IER_ADDR_DECODE_ERR_MASK    0x00000001UL
#define XLPD_SLCR_SECURE_IER_ADDR_DECODE_ERR_DEFVAL  0x0UL

/**
 * Register: XlpdSlcrSecureIdr
 */
#define XLPD_SLCR_SECURE_IDR    ( ( XLPD_SLCR_SECURE_BASEADDR ) + 0x00000014UL )
#define XLPD_SLCR_SECURE_IDR_RSTVAL   0x00000000UL

#define XLPD_SLCR_SECURE_IDR_ADDR_DECODE_ERR_SHIFT   0UL
#define XLPD_SLCR_SECURE_IDR_ADDR_DECODE_ERR_WIDTH   1UL
#define XLPD_SLCR_SECURE_IDR_ADDR_DECODE_ERR_MASK    0x00000001UL
#define XLPD_SLCR_SECURE_IDR_ADDR_DECODE_ERR_DEFVAL  0x0UL

/**
 * Register: XlpdSlcrSecureItr
 */
#define XLPD_SLCR_SECURE_ITR    ( ( XLPD_SLCR_SECURE_BASEADDR ) + 0x00000018UL )
#define XLPD_SLCR_SECURE_ITR_RSTVAL   0x00000000UL

#define XLPD_SLCR_SECURE_ITR_ADDR_DECODE_ERR_SHIFT   0UL
#define XLPD_SLCR_SECURE_ITR_ADDR_DECODE_ERR_WIDTH   1UL
#define XLPD_SLCR_SECURE_ITR_ADDR_DECODE_ERR_MASK    0x00000001UL
#define XLPD_SLCR_SECURE_ITR_ADDR_DECODE_ERR_DEFVAL  0x0UL

/**
 * Register: XlpdSlcrSecureRpu0
 */
#define XLPD_SLCR_SECURE_RPU0    ( ( XLPD_SLCR_SECURE_BASEADDR ) + 0x00000020UL )
#define XLPD_SLCR_SECURE_RPU0_RSTVAL   0x00000000UL

#define XLPD_SLCR_SECURE_RPU0_TZ_SHIFT   0UL
#define XLPD_SLCR_SECURE_RPU0_TZ_WIDTH   1UL
#define XLPD_SLCR_SECURE_RPU0_TZ_MASK    0x00000001UL
#define XLPD_SLCR_SECURE_RPU0_TZ_DEFVAL  0x0UL

/**
 * Register: XlpdSlcrSecureRpu1
 */
#define XLPD_SLCR_SECURE_RPU1    ( ( XLPD_SLCR_SECURE_BASEADDR ) + 0x00000024UL )
#define XLPD_SLCR_SECURE_RPU1_RSTVAL   0x00000000UL

#define XLPD_SLCR_SECURE_RPU1_TZ_SHIFT   0UL
#define XLPD_SLCR_SECURE_RPU1_TZ_WIDTH   1UL
#define XLPD_SLCR_SECURE_RPU1_TZ_MASK    0x00000001UL
#define XLPD_SLCR_SECURE_RPU1_TZ_DEFVAL  0x0UL

/**
 * Register: XlpdSlcrSecureXmpu
 */
#define XLPD_SLCR_SECURE_XMPU    ( ( XLPD_SLCR_SECURE_BASEADDR ) + 0x00000028UL )
#define XLPD_SLCR_SECURE_XMPU_RSTVAL   0x00000000UL

#define XLPD_SLCR_SECURE_XMPU_TZ_SHIFT   0UL
#define XLPD_SLCR_SECURE_XMPU_TZ_WIDTH   1UL
#define XLPD_SLCR_SECURE_XMPU_TZ_MASK    0x00000001UL
#define XLPD_SLCR_SECURE_XMPU_TZ_DEFVAL  0x0UL

/**
 * Register: XlpdSlcrSecureXppu
 */
#define XLPD_SLCR_SECURE_XPPU    ( ( XLPD_SLCR_SECURE_BASEADDR ) + 0x0000002CUL )
#define XLPD_SLCR_SECURE_XPPU_RSTVAL   0x00000000UL

#define XLPD_SLCR_SECURE_XPPU_TZ_SHIFT   0UL
#define XLPD_SLCR_SECURE_XPPU_TZ_WIDTH   1UL
#define XLPD_SLCR_SECURE_XPPU_TZ_MASK    0x00000001UL
#define XLPD_SLCR_SECURE_XPPU_TZ_DEFVAL  0x0UL

/**
 * Register: XlpdSlcrSecureSafetyChk
 */
#define XLPD_SLCR_SECURE_SAFETY_CHK    ( ( XLPD_SLCR_SECURE_BASEADDR ) + 0x00000030UL )
#define XLPD_SLCR_SECURE_SAFETY_CHK_RSTVAL   0x00000000UL

#define XLPD_SLCR_SECURE_SAFETY_CHK_VAL_SHIFT   0UL
#define XLPD_SLCR_SECURE_SAFETY_CHK_VAL_WIDTH   32UL
#define XLPD_SLCR_SECURE_SAFETY_CHK_VAL_MASK    0xffffffffUL
#define XLPD_SLCR_SECURE_SAFETY_CHK_VAL_DEFVAL  0x0UL

/**
 * Register: XlpdSlcrSecureCpmPcsr
 */
#define XLPD_SLCR_SECURE_CPM_PCSR    ( ( XLPD_SLCR_SECURE_BASEADDR ) + 0x00000038UL )
#define XLPD_SLCR_SECURE_CPM_PCSR_RSTVAL   0x00000001UL

#define XLPD_SLCR_SECURE_CPM_PCSR_TZ_SHIFT   0UL
#define XLPD_SLCR_SECURE_CPM_PCSR_TZ_WIDTH   1UL
#define XLPD_SLCR_SECURE_CPM_PCSR_TZ_MASK    0x00000001UL
#define XLPD_SLCR_SECURE_CPM_PCSR_TZ_DEFVAL  0x1UL

/**
 * Register: XlpdSlcrSecureIpi
 */
#define XLPD_SLCR_SECURE_IPI    ( ( XLPD_SLCR_SECURE_BASEADDR ) + 0x00000040UL )
#define XLPD_SLCR_SECURE_IPI_RSTVAL   0x00000001UL

#define XLPD_SLCR_SECURE_IPI_TZ_SHIFT   0UL
#define XLPD_SLCR_SECURE_IPI_TZ_WIDTH   1UL
#define XLPD_SLCR_SECURE_IPI_TZ_MASK    0x00000001UL
#define XLPD_SLCR_SECURE_IPI_TZ_DEFVAL  0x1UL

/**
 * Register: XlpdSlcrSecureCrl
 */
#define XLPD_SLCR_SECURE_CRL    ( ( XLPD_SLCR_SECURE_BASEADDR ) + 0x00000044UL )
#define XLPD_SLCR_SECURE_CRL_RSTVAL   0x00000001UL

#define XLPD_SLCR_SECURE_CRL_TZ_SHIFT   0UL
#define XLPD_SLCR_SECURE_CRL_TZ_WIDTH   1UL
#define XLPD_SLCR_SECURE_CRL_TZ_MASK    0x00000001UL
#define XLPD_SLCR_SECURE_CRL_TZ_DEFVAL  0x1UL

/**
 * Register: XlpdSlcrSecure
 */
#define XLPD_SLCR_SECURE    ( ( XLPD_SLCR_SECURE_BASEADDR ) + 0x00000048UL )
#define XLPD_SLCR_SECURE_RSTVAL   0x00000003UL

#define XLPD_SLCR_SECURE_INTLPD_TZ_SHIFT   1UL
#define XLPD_SLCR_SECURE_INTLPD_TZ_WIDTH   1UL
#define XLPD_SLCR_SECURE_INTLPD_TZ_MASK    0x00000002UL
#define XLPD_SLCR_SECURE_INTLPD_TZ_DEFVAL  0x1UL

#define XLPD_SLCR_SECURE_TZ_SHIFT   0UL
#define XLPD_SLCR_SECURE_TZ_WIDTH   1UL
#define XLPD_SLCR_SECURE_TZ_MASK    0x00000001UL
#define XLPD_SLCR_SECURE_TZ_DEFVAL  0x1UL

/**
 * Register: XlpdSlcrSecureHsdp
 */
#define XLPD_SLCR_SECURE_HSDP    ( ( XLPD_SLCR_SECURE_BASEADDR ) + 0x0000004CUL )
#define XLPD_SLCR_SECURE_HSDP_RSTVAL   0x00000007UL

#define XLPD_SLCR_SECURE_HSDP_TZ_SHIFT   1UL
#define XLPD_SLCR_SECURE_HSDP_TZ_WIDTH   1UL
#define XLPD_SLCR_SECURE_HSDP_TZ_MASK    0x00000002UL
#define XLPD_SLCR_SECURE_HSDP_TZ_DEFVAL  0x1UL

#define XLPD_SLCR_SECURE_HSDP_APB_TZ_SHIFT   0UL
#define XLPD_SLCR_SECURE_HSDP_APB_TZ_WIDTH   1UL
#define XLPD_SLCR_SECURE_HSDP_APB_TZ_MASK    0x00000001UL
#define XLPD_SLCR_SECURE_HSDP_APB_TZ_DEFVAL  0x1UL

/**
 * Register: XlpdSlcrSecureAfi
 */
#define XLPD_SLCR_SECURE_AFI    ( ( XLPD_SLCR_SECURE_BASEADDR ) + 0x00000050UL )
#define XLPD_SLCR_SECURE_AFI_RSTVAL   0x00000001UL

#define XLPD_SLCR_SECURE_AFI_FM_TZ_SHIFT   0UL
#define XLPD_SLCR_SECURE_AFI_FM_TZ_WIDTH   1UL
#define XLPD_SLCR_SECURE_AFI_FM_TZ_MASK    0x00000001UL
#define XLPD_SLCR_SECURE_AFI_FM_TZ_DEFVAL  0x1UL

/**
 * Register: XlpdSlcrSecurePsm
 */
#define XLPD_SLCR_SECURE_PSM    ( ( XLPD_SLCR_SECURE_BASEADDR ) + 0x00000054UL )
#define XLPD_SLCR_SECURE_PSM_RSTVAL   0x00000000UL

#define XLPD_SLCR_SECURE_PSM_TZ_SHIFT   0UL
#define XLPD_SLCR_SECURE_PSM_TZ_WIDTH   1UL
#define XLPD_SLCR_SECURE_PSM_TZ_MASK    0x00000001UL
#define XLPD_SLCR_SECURE_PSM_TZ_DEFVAL  0x0UL

/**
 * Register: XlpdSlcrSecureAdma0
 */
#define XLPD_SLCR_SECURE_ADMA0    ( ( XLPD_SLCR_SECURE_BASEADDR ) + 0x00000060UL )
#define XLPD_SLCR_SECURE_ADMA0_RSTVAL   0x00000000UL

#define XLPD_SLCR_SECURE_ADMA0_TZ_SHIFT   0UL
#define XLPD_SLCR_SECURE_ADMA0_TZ_WIDTH   1UL
#define XLPD_SLCR_SECURE_ADMA0_TZ_MASK    0x00000001UL
#define XLPD_SLCR_SECURE_ADMA0_TZ_DEFVAL  0x0UL

/**
 * Register: XlpdSlcrSecureAdma1
 */
#define XLPD_SLCR_SECURE_ADMA1    ( ( XLPD_SLCR_SECURE_BASEADDR ) + 0x00000064UL )
#define XLPD_SLCR_SECURE_ADMA1_RSTVAL   0x00000000UL

#define XLPD_SLCR_SECURE_ADMA1_TZ_SHIFT   0UL
#define XLPD_SLCR_SECURE_ADMA1_TZ_WIDTH   1UL
#define XLPD_SLCR_SECURE_ADMA1_TZ_MASK    0x00000001UL
#define XLPD_SLCR_SECURE_ADMA1_TZ_DEFVAL  0x0UL

/**
 * Register: XlpdSlcrSecureAdma2
 */
#define XLPD_SLCR_SECURE_ADMA2    ( ( XLPD_SLCR_SECURE_BASEADDR ) + 0x00000068UL )
#define XLPD_SLCR_SECURE_ADMA2_RSTVAL   0x00000000UL

#define XLPD_SLCR_SECURE_ADMA2_TZ_SHIFT   0UL
#define XLPD_SLCR_SECURE_ADMA2_TZ_WIDTH   1UL
#define XLPD_SLCR_SECURE_ADMA2_TZ_MASK    0x00000001UL
#define XLPD_SLCR_SECURE_ADMA2_TZ_DEFVAL  0x0UL

/**
 * Register: XlpdSlcrSecureAdma3
 */
#define XLPD_SLCR_SECURE_ADMA3    ( ( XLPD_SLCR_SECURE_BASEADDR ) + 0x0000006CUL )
#define XLPD_SLCR_SECURE_ADMA3_RSTVAL   0x00000000UL

#define XLPD_SLCR_SECURE_ADMA3_TZ_SHIFT   0UL
#define XLPD_SLCR_SECURE_ADMA3_TZ_WIDTH   1UL
#define XLPD_SLCR_SECURE_ADMA3_TZ_MASK    0x00000001UL
#define XLPD_SLCR_SECURE_ADMA3_TZ_DEFVAL  0x0UL

/**
 * Register: XlpdSlcrSecureAdma4
 */
#define XLPD_SLCR_SECURE_ADMA4    ( ( XLPD_SLCR_SECURE_BASEADDR ) + 0x00000070UL )
#define XLPD_SLCR_SECURE_ADMA4_RSTVAL   0x00000000UL

#define XLPD_SLCR_SECURE_ADMA4_TZ_SHIFT   0UL
#define XLPD_SLCR_SECURE_ADMA4_TZ_WIDTH   1UL
#define XLPD_SLCR_SECURE_ADMA4_TZ_MASK    0x00000001UL
#define XLPD_SLCR_SECURE_ADMA4_TZ_DEFVAL  0x0UL

/**
 * Register: XlpdSlcrSecureAdma5
 */
#define XLPD_SLCR_SECURE_ADMA5    ( ( XLPD_SLCR_SECURE_BASEADDR ) + 0x00000074UL )
#define XLPD_SLCR_SECURE_ADMA5_RSTVAL   0x00000000UL

#define XLPD_SLCR_SECURE_ADMA5_TZ_SHIFT   0UL
#define XLPD_SLCR_SECURE_ADMA5_TZ_WIDTH   1UL
#define XLPD_SLCR_SECURE_ADMA5_TZ_MASK    0x00000001UL
#define XLPD_SLCR_SECURE_ADMA5_TZ_DEFVAL  0x0UL

/**
 * Register: XlpdSlcrSecureAdma6
 */
#define XLPD_SLCR_SECURE_ADMA6    ( ( XLPD_SLCR_SECURE_BASEADDR ) + 0x00000078UL )
#define XLPD_SLCR_SECURE_ADMA6_RSTVAL   0x00000000UL

#define XLPD_SLCR_SECURE_ADMA6_TZ_SHIFT   0UL
#define XLPD_SLCR_SECURE_ADMA6_TZ_WIDTH   1UL
#define XLPD_SLCR_SECURE_ADMA6_TZ_MASK    0x00000001UL
#define XLPD_SLCR_SECURE_ADMA6_TZ_DEFVAL  0x0UL

/**
 * Register: XlpdSlcrSecureAdma7
 */
#define XLPD_SLCR_SECURE_ADMA7    ( ( XLPD_SLCR_SECURE_BASEADDR ) + 0x0000007CUL )
#define XLPD_SLCR_SECURE_ADMA7_RSTVAL   0x00000000UL

#define XLPD_SLCR_SECURE_ADMA7_TZ_SHIFT   0UL
#define XLPD_SLCR_SECURE_ADMA7_TZ_WIDTH   1UL
#define XLPD_SLCR_SECURE_ADMA7_TZ_MASK    0x00000001UL
#define XLPD_SLCR_SECURE_ADMA7_TZ_DEFVAL  0x0UL

/**
 *@endcond
 */

#ifdef __cplusplus
}
#endif

#endif /* __XLPD_SLCR_SECURE_H__ */
