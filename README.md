# coccinelle_scripts
This repo contains all the coccinelle scripts that I made for patch submission in linux kernel

http://coccinelle.lip6.fr/
make C=1 CHECK="scripts/coccicheck"

https://repo.or.cz/w/smatch.git
make C=1 CHECK="smatch -p=kernel"

#for ecore
scan-build make
