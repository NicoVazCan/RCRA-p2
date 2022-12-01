PRACTICA 2:

Código en clingo para resolver problemas de unblock
Realizada por Nicolás Vázquez Cancela (nicolas.vazquez.cancela) y Martín Castro Fernández (martin.castro.fernandez)

*de media los ejemplos tardan 1 segundo


USO:

python3 encode.py < [archivo.txt con el problema] > [archivo.lp con la instancia del problema codificado]
telingo --verbose=0 --warn none unblock.lp [archivo.lp con la instancia del problema codificado] > [archivo.txt con la solucion]


EJEMPLO 1:

python3 encode.py < examples/level1.txt > level1.lp
telingo --verbose=0 --warn none unblock.lp level1.lp > sol1.txt


EJEMPLO 2:

python3 encode.py < examples/level2.txt > level2.lp
telingo --verbose=0 --warn none unblock.lp level2.lp > sol2.txt


EJEMPLO 3:

python3 encode.py < examples/level3.txt > level3.lp
telingo --verbose=0 --warn none unblock.lp level3.lp > sol3.txt


EJEMPLO 4:

python3 encode.py < examples/level4.txt > level4.lp
telingo --verbose=0 --warn none unblock.lp level4.lp > sol4.txt


EJEMPLO 5:

python3 encode.py < examples/level5.txt > level5.lp
telingo --verbose=0 --warn none unblock.lp level5.lp > sol5.txt


EJEMPLO 6:

python3 encode.py < examples/level6.txt > level6.lp
telingo --verbose=0 --warn none unblock.lp level6.lp > sol6.txt


EJEMPLO 7:

python3 encode.py < examples/level7.txt > level7.lp
telingo --verbose=0 --warn none unblock.lp level7.lp > sol7.txt


EJEMPLO 8:

python3 encode.py < examples/level8.txt > level8.lp
telingo --verbose=0 --warn none unblock.lp level8.lp > sol8.txt

*tarda aproximadamente 2 segundos


EJEMPLO 9:

python3 encode.py < examples/level9.txt > level9.lp
telingo --verbose=0 --warn none unblock.lp level9.lp > sol9.txt

*tarda aproximadamente 15 segundos


EJEMPLO 10:

python3 encode.py < examples/level10.txt > level10.lp
telingo --verbose=0 --warn none unblock.lp level10.lp > sol10.txt

*tarda aproximadamente 6 segundos
