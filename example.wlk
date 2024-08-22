object pepita {
	var energia = 100
	
	method comer(comida) {
		energia += comida.energiaQueAporta()
	}
	
	method volar(distancia) {
		energia = (energia - 10) - distancia
	}
	
	method energia() = energia
}

object alpiste {
	method energiaQueAporta() = 20
}

object manzana {
	var madurez = 1
	const base = 5
	
	//Getter: devuelve un atributo
	//Si es getter NO PUEDE modificar nada
	method madurez() = madurez
	
	//Setter: pisa el valor existente, por convencion se pone el par con _ adelante
	//Si es setter NO PUEDE devolver informacion
	method madurez(_madurez) {
		madurez = _madurez
	}
	
	method madurar() {
		self.madurez(madurez + 1)
	}
	
	method energiaQueAporta() = base * madurez
}

object pepon {
	var energia = 30
	
	method energia() = energia
	
	method comer(alimento) {
		energia += alimento.energiaQueAporta() / 2
	}
	
	method volar(distancia) {
		energia = (energia - 20) - (2 * distancia)
	}
}

object roque {

	var ave = pepita // Inicialmente es pepita.
	var cenas = 0	 // Inicia en cero con cada ave
	
	//Getters
	method ave() {
		return ave
	}

	method cenas(){
		return cenas
	}

	//Setters
	method alimentar(alimento) {
		ave.comer(alimento)
		cenas += 1 // cada vez que alimente a su ave, suma 1 a cenas.
	}
	
	method cambiarAve(_ave) {
		ave = _ave
		cenas = 0	//Cada vez que cambie de ave, reseteara las cenas almacenadas.
	}


}