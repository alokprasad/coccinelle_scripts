@@
expression e;
statement S;
@@
e = \(kmalloc\|devm_kzalloc\|kmalloc_array
     \|devm_ioremap\|usb_alloc_urb\|alloc_netdev\)(...);
- if(e==NULL)
+ if(!e)
  S 
