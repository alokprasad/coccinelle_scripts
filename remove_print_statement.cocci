@@
expression e,e1,e2;
identifier x;
@@
e=\(kmalloc\|kmalloc_array\|kzalloc\|
   devm_kzalloc\)(...);
...when!=e=e1
if(!e)
-{
- \(printk\|DBG_8723A\|pr_err\|CERROR\|DBG_88E\)(...);
(
goto x;
|
return e2;
|
return;
)
-} 
