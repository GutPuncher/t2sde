dnl --- T2-COPYRIGHT-NOTE-BEGIN ---
dnl This copyright note is auto-generated by ./scripts/Create-CopyPatch.
dnl 
dnl T2 SDE: architecture/share/kernel-net.conf.m4
dnl Copyright (C) 2004 - 2005 The T2 SDE Project
dnl 
dnl More information can be found in the files COPYING and README.
dnl 
dnl This program is free software; you can redistribute it and/or modify
dnl it under the terms of the GNU General Public License as published by
dnl the Free Software Foundation; version 2 of the License. A copy of the
dnl GNU General Public License can be found in the file COPYING.
dnl --- T2-COPYRIGHT-NOTE-END ---

dnl some more module which are not activated by default
dnl
CONFIG_NET_ISA=y
CONFIG_NET_POCKET=y

CONFIG_NET_ETHERNET=y
CONFIG_NET_EISA=y

dnl Enable some vedor sections
dnl
CONFIG_NET_VENDOR_3COM=y
CONFIG_NET_VENDOR_SMC=y
CONFIG_NET_VENDOR_RACAL=y
CONFIG_8139TOO=m

dnl Enable some categories so drivers are enabled as modules
dnl
CONFIG_NET_RADIO=y
CONFIG_NET_PCMCIA=y

dnl Misc network device support
dnl
CONFIG_PPP=y
CONFIG_PPP_FILTER=y

dnl Enable IP autoconfiguration
dnl
CONFIG_IP_PNP=y
CONFIG_IP_PNP_BOOTP=y
CONFIG_IP_PNP_DHCP=y

dnl Enable some nice networking features
dnl
CONFIG_PACKET_MMAP=y
CONFIG_PACKET=y
CONFIG_NETLINK=y
CONFIG_RTNETLINK=y
CONFIG_FILTER=y
CONFIG_UNIX=y
CONFIG_INET=y

dnl Enable QoS and IP-Tables (drivers themself are modules)
dnl 
CONFIG_NET_SCHED=y
CONFIG_NETFILTER=y
CONFIG_NET_QOS=y
CONFIG_NET_CLS=y

dnl Disable dangerous packet generator
dnl
# CONFIG_NET_PKTGEN is not set

dnl Enable ISDN drivers as modules
dnl
CONFIG_ISDN=m
CONFIG_ISDN_BOOL=y
CONFIG_ISDN_PPP=y
CONFIG_ISDN_PPP_VJ=y
CONFIG_ISDN_MPP=y
CONFIG_ISDN_PPP_BSDCOMP=m
CONFIG_ISDN_AUDIO=y
CONFIG_ISDN_TTY_FAX=y
CONFIG_ISDN_DRV_HISAX=m
CONFIG_ISDN_HISAX=y
CONFIG_HISAX_EURO=y
CONFIG_HISAX_16_0=y
CONFIG_HISAX_16_3=y
CONFIG_HISAX_AVM_A1=y
CONFIG_HISAX_TELESPCI=y
CONFIG_HISAX_S0BOX=y
CONFIG_HISAX_FRITZPCI=y
CONFIG_HISAX_AVM_A1_PCMCIA=y
CONFIG_HISAX_ELSA=y
CONFIG_HISAX_FRITZ_PCIPNP=m

