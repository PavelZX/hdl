
source ../common/adrv9009zu11eg_bd.tcl
source ../common/adrv2crr_fmc_bd.tcl

ad_ip_parameter axi_sysid_0 CONFIG.ROM_ADDR_BITS 9
ad_ip_parameter rom_sys_0 CONFIG.PATH_TO_FILE "[pwd]/mem_init_sys.txt"
ad_ip_parameter rom_sys_0 CONFIG.ROM_ADDR_BITS 9
set sys_cstring "sys rom custom string placeholder"
sysid_gen_sys_init_file $sys_cstring

set_property -dict [list CONFIG.ENABLE_LINK_STATS {1}] [get_bd_cells axi_adrv9009_som_rx_jesd/rx_axi]
set_property -dict [list CONFIG.ENABLE_LINK_STATS {1}] [get_bd_cells axi_adrv9009_som_obs_jesd/rx_axi]
set_property -dict [list CONFIG.ENABLE_LINK_STATS {1}] [get_bd_cells axi_adrv9009_som_tx_jesd/tx_axi]


