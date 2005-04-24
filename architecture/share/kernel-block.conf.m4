dnl --- T2-COPYRIGHT-NOTE-BEGIN ---
dnl This copyright note is auto-generated by ./scripts/Create-CopyPatch.
dnl 
dnl T2 SDE: architecture/share/kernel-block.conf.m4
dnl Copyright (C) 2004 - 2005 The T2 SDE Project
dnl 
dnl More information can be found in the files COPYING and README.
dnl 
dnl This program is free software; you can redistribute it and/or modify
dnl it under the terms of the GNU General Public License as published by
dnl the Free Software Foundation; version 2 of the License. A copy of the
dnl GNU General Public License can be found in the file COPYING.
dnl --- T2-COPYRIGHT-NOTE-END ---

dnl Activate SCSI discs and cd-roms - but not the verbose
dnl SCSI error reporting (CONSTANTS)
dnl
CONFIG_SCSI=y
CONFIG_BLK_DEV_SD=m
CONFIG_BLK_DEV_SR=m
CONFIG_CHR_DEV_SG=m
# CONFIG_SCSI_CONSTANTS is not set

dnl Some IDE stuff
dnl
CONFIG_IDE=y
CONFIG_BLK_DEV_IDE=y
CONFIG_BLK_DEV_IDESCSI=m
CONFIG_BLK_DEV_IDEDISK=m
CONFIG_BLK_DEV_IDECD=m
CONFIG_BLK_DEV_IDETAPE=m
CONFIG_BLK_DEV_IDEFLOPPY=m
# CONFIG_IDE_TASKFILE_IO is not set

dnl Make sure the drivers are modular ...
dnl
CONFIG_IDE_GENERIC=m
CONFIG_BLK_DEV_CMD640=m
CONFIG_BLK_DEV_GENERIC=m
CONFIG_BLK_DEV_RZ1000=m
CONFIG_BLK_DEV_PIIX=m

CONFIG_SCSI_SATA=m
CONFIG_SCSI_QLA2XXX=m

dnl Use multi-mode and DMA since this reduces the CPU load and
dnl also increases the IDE I/O performance in general
CONFIG_BLK_DEV_IDEDMA=y
CONFIG_IDEDISK_MULTI_MODE=y
CONFIG_IDEDMA_PCI_AUTO=y

dnl Enable PCMCIA SCSI (drivers themself are modules)
dnl
CONFIG_SCSI_PCMCIA=y

dnl Enable non-scsi cd-rom drives (drivers themself are modules)
dnl
CONFIG_CD_NO_IDESCSI=y

dnl Enable software-raid
dnl
CONFIG_MD=m

