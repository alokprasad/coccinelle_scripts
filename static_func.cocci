@initialize:python@
@@
def display(name,p):
	print(name,p[0].file)

@r1@
identifier func;
type T;
position p;
@@
static T func@p(...)
{
...
}

@r@
identifier r1.func;
position p;
@@
func

@script:python depends on !r@
func<<r1.func;
p<<r1.p;
@@
display(func,p)


