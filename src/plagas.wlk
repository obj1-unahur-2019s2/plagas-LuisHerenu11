class Plagas{
	var property poblacion
	method transmitenEnfermedades(){
		return poblacion >= 10
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
}

class Pulgas inherits Plagas{ 
	method nivelDeDanio(){
		return poblacion * 2
	}
}

class Garrapatas inherits Pulgas{}

class Mosquitos inherits Plagas{
	method nivelDeDanio(){
		return poblacion
	}
	override method transmitenEnfermedades(){
		return super() and poblacion % 3 == 0
	}
}