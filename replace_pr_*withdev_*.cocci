@r exists@
identifier f, s;
identifier x;
position p;
@@
f(...,struct s *x,...) {
<+...
when != x == NULL
\(pr_err@p\|pr_debug@p\|pr_info\)(...);
...+>
}

@r2@
identifier fld2;
identifier r.s;
@@

struct s {
        ...
        struct device *fld2;
        ...
};

@@
identifier r.x,r2.fld2;
position r.p;
@@

(
-pr_err@p
+dev_err
   (
+ &x->fld2,
...)
|
- pr_debug@p
+ dev_dbg
   (
+ &x->fld2,
...)
|
- pr_info@p
+ dev_info
   (
+ &x->fld2,
...)
)

