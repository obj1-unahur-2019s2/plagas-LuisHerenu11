import plagas.*

class Hogar {
	var property nivelDeMugre = 0
	var property confort = 0
	
	method evilOrGood(){
		return confort / 2 >= nivelDeMugre
	}
	method recibirAtaque(unaPlaga){
			nivelDeMugre += unaPlaga.nivelDeDanio()
	}
}

class Huerta {
	var property capacidad
	
	method evilOrGood(){
		return capacidad > nivelHuerta.nivel()
	}
	method recibirAtaque(unaPlaga){
		capacidad = capacidad - (unaPlaga.nivelDeDanio() / 10)
		if (unaPlaga.transmitenEnfermedades()){
			capacidad -= 10
		}
		else{}
	}
}
object nivelHuerta {	
	var property nivel
}

class Mascota {
	var property esBueno
	var property salud	
	
	method evilOrGood(){
		return  salud > 250
	}
	method recibirAtaque(unaPlaga){
		if (unaPlaga.transmitenEnfermedades()){
			salud -= unaPlaga.nivelDeDanio()
		}
		else{}	
	}
}
