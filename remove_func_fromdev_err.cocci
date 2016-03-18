@a@
expression E;
expression  msg;
@@

dev_err(E, msg, __func__);

@script:python b@
e << a.msg;
y;
@@

if(e.find("%s: ") == True):
        m = e.replace("%s: ", "");
        coccinelle.y = m;
elif(e.find("%s ") == True):
        m = e.replace("%s ", "");
        coccinelle.y = m;
else:
        m = e.replace("%s", "");

@c@
expression a.E, a.msg;
identifier  b.y;
@@

- dev_err(E, msg, __func__);
+ dev_err(E, y); 
