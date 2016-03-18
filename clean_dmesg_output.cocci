@r1@
expression e,x;
expression g;
@@
dev_err(e,g,__func__,x)

@script:python b@
g2 <<r1.g;
y;
@@
if(g2.find("%s:")==True):
        coccinelle.y=g2[5:]
elif(g2.find("%s")==True):
        coccinelle.y=g2[4:]
coccinelle.y='"'+coccinelle.y

@c@
expression  r1.g;
identifier b.y;
expression r1.e,r1.x;
@@
- dev_err(e,g,__func__,x)
+ dev_err(e,y,x) 
