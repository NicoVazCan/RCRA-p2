
#program initial.

% Posibles desplazamientos
desp(1..(n-2)).
desp((-n+2)..-1).


#program dynamic.

% Generacion de accion escogiendo un palo y un desplazamiento
1 { move(V, D): _tile(_,_,V),_desp(D) } 1.

% Se dercartan acciones inviables que se salgan de la cuadricula
:- 'tile(cell(Y,Xo),cell(Y,_),V), move(V,D), Xo+D<1.
:- 'tile(cell(Y,_),cell(Y,Xd),V), move(V,D), Xd+D>n.
:- 'tile(cell(Yo,X),cell(_,X),V), move(V,D), Yo+D<1.
:- 'tile(cell(_,X),cell(Yd,X),V), move(V,D), Yd+D>n.

% Se prohibe que los palos se atraviesen al desplazarse
:- 'tile(cell(Y,Xo1),cell(Y,Xd1),V1), move(V1,D), D>0
	, 'tile(cell(Yo2,Xo2),cell(Yd2,_),V2), V1!=V2
	, Yo2<=Y, Yd2>=Y, Xo2>=Xo1, Xo2<=(Xd1+D).

:- 'tile(cell(Y,Xo1),cell(Y,Xd1),V1), move(V1,D), D<0
	, 'tile(cell(Yo2,_),cell(Yd2,Xd2),V2), V1!=V2
	, Yo2<=Y, Yd2>=Y, Xd2>=(Xo1+D), Xd2<=Xd1.

:- 'tile(cell(Yo1,X),cell(Yd1,X),V1), move(V1,D), D>0
	, 'tile(cell(Yo2,Xo2),cell(_,Xd2),V2), V1!=V2
	, Xo2<=X, Xd2>=X, Yo2>=Yo1, Yo2<=(Yd1+D).

:- 'tile(cell(Yo1,X),cell(Yd1,X),V1), move(V1,D), D<0
	, 'tile(cell(_,Xo2),cell(Yd2,Xd2),V2), V1!=V2
	, Xo2<=X, Xd2>=X, Yd2>=(Yo1+D), Yd2<=Yd1.

% Se aplica la accion desplazando el palo con la distancia escogida
tile(cell(Y,Xo+D),cell(Y,Xd+D),V) :- 'tile(cell(Y,Xo),cell(Y,Xd),V), move(V,D).
tile(cell(Yo+D,X),cell(Yd+D,X),V) :- 'tile(cell(Yo,X),cell(Yd,X),V), move(V,D).

% Inercia, manteniendo los palos no desplazados en su sitio
tile(Co, Cd, V) :- 'tile(Co, Cd, V), not move(V,_).


#program final.

% Se llega a la meta cuando el palo llegue a la columna del problema dado
goal :- _exit(V,X),tile(cell(_,X),_,V).
:- not goal.


#show move/2.
