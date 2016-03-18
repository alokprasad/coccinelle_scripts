@@
expression e,e1,e2;
@@
- e=kmalloc(e1,e2);
+ e=kzalloc(e1,e2);
if(!e)
  return NULL;
...
- memset(e,...); 
