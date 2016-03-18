@@
identifier a;
constant b;
@@
(
- seq_printf(a,"\n");
+ seq_putc(a,'\n');
|
- seq_printf(a,b);
+ seq_puts(a,b);
) 
