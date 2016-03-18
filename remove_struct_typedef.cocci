//Drop typedefs and '_t'
@r1@
type T;
@@

typedef struct { ... } T;

@script:python c1@
T2;
T << r1.T;
@@
if T[-2:] =="_t":
  coccinelle.T2 = T[:-2];
  print T
else:
  coccinelle.T2=T;

@@
type r1.T;
identifier c1.T2;
@@
-typedef
struct
+ T2
{ ... }
-T
;

