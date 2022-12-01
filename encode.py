 

 # El archivo de texto numérico se convierte directamente en el método de forma de matriz de matriz dos
def txt_to_matrix():
	row = 0
	line = input()
	rows = len(line)
	datamat = ['']*rows # Matriz de inicialización
	ret = {}

	while line:
		line = line.strip()

		if len(line) != rows:
			if row == rows and line[1] == '=':
				ret['l'] = line[0]
				ret['x'] = int(line[2:])
				ret['m'] = datamat
				
				return ret
			else:
				raise Exception("filas de distinto tamaño")

		datamat[row] =  line # strip () elimina el primer y último espacio o saltos de línea de las cadenas de forma predeterminada
		row += 1
		try:
			line = input()
		except EOFError:
			line = ''

	return ret

def matrix_to_clingo(data):
	tiles = {}
	n = len(data['m'])

	for y in range(n):
		for x in range(n):
			l = data['m'][y][x]
			if l != '.':
				if l in tiles:
					tiles[l]['cd'] = (y+1,x+1)
				else:
					tiles[l] = {'co': (y+1,x+1)}

	print('#const n='+str(n)+'.')
	for l in tiles:
		print('tile(cell'+str(tiles[l]['co'])+',cell'+str(tiles[l]['cd'])+','+l+').')

	print('exit('+data['l']+','+str(data['x']+1)+').')



matrix_to_clingo(txt_to_matrix())