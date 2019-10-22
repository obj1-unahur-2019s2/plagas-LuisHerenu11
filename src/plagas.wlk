import casas.*

class Plagas{
	var property poblacion
	method transmitenEnfermedades(){
		return poblacion >= 10
	}
	method atacar(elemento){
		self.efectoDeAtaque()
		elemento.recibirAtaque(self)
	}
	method efectoDeAtaque(){
		poblacion += (poblacion / 10)
	}
}

class Cucarachas inherits Plagas{
	var property peso
	method nivelDeDanio(){
		return poblacion / 2
	}
	override method transmitenEnfermedades(){
		return super() and peso >= 10
	}
	override method efectoDeAtaque(){
		super()
		peso += 2
	}
}

class Pulgas inherits Plagas{ 
	method nivelDeDanio(){
		return poblacion * 2
	}
}

class Garrapatas inherits Pulgas{
	override method efectoDeAtaque(){
		poblacion += (poblacion / 5)
	}
}

class Mosquitos inherits Plagas{
	method nivelDeDanio(){
		return poblacion
	}
	override method transmitenEnfermedades(){
		return super() and poblacion % 3 == 0
	}
}