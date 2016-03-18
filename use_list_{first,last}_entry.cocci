@@
expression e;
@@
(
- list_entry(e->next,
+ list_first_entry(e,
  ...)
|
- list_entry(e->prev,
+ list_last_entry(e,
  ...)
)

