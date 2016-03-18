@@
expression e;
@@
- memset(e,\(0xff\|0xFF\|255\),\(ETH_ALEN\|6\));
+ eth_broadcast_addr(e); 
