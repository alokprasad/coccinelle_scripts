@@
expression e1,e2;
statement S;
@@
- if(!list_empty(...)){
  e2=
- list_entry(e1.next,
+ list_first_entry_or_null(&e1,
  ...);
+ if(e2){
...
} 
