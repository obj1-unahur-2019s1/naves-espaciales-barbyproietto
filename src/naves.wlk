class NaveEspacial {
	var velocidad = 0
	var direccion = 0	
	
	method velocidad(cuanto) { velocidad = cuanto }
	method acelerar(cuanto) { velocidad = (velocidad + cuanto).min(100000) }
	method desacelerar(cuanto) { velocidad -= cuanto }
	
	method irHaciaElSol() { direccion = 10 }
	method escaparDelSol() { direccion = -10 }
	method ponerseParaleloAlSol() { direccion = 0 }
	
	method acercarseUnPocoAlSol() { direccion += 1 }
	method alejarseUnPocoDelSol() { direccion -= 1 }
}


class NavesBaliza inherits NaveEspacial {
	
	method cambiarColorDeBaliza(colorNuevo){
		return colorNuevo
	}
	
}

class NavesDePasajeros inherits NaveEspacial {
	var property pasajeros = 10
	var property racionComida 
	var property bebida 
	
	method cargarComida(cantidad){
		racionComida = racionComida + cantidad
		
	}
	method cargarBebida(cantidad){
		bebida = bebida + cantidad
	}
	method descargarComida(cantidad){
		racionComida = racionComida - cantidad
	}
	method descargarBebida(cantidad){
		bebida = bebida - cantidad
	}

}

class NavesDeCombate inherits NaveEspacial {
	var property visibilidad 
	var property misilesDesplegados
	var mensajes = []
	
	method ponerseVisible(){
		 visibilidad = true
	}
	method ponerseInvisible(){
		visibilidad = false
	}
	method estaInvisible(){
		return not visibilidad
	}
	
	method desplegarMisiles(){
		misilesDesplegados = true
	}
	method replegarMisiles(){
		misilesDesplegados = false
		}
	method misilesDesplegados(){
		return misilesDesplegados
	}
	
	method emitirMensaje(mensaje){
		 mensajes.add(mensaje)
		 return (mensaje)
	}
	method mensajesEmitidos(){
		return mensajes
	}
	method primerMensajeEmitido(){
		return mensajes.first()
	}
	method ultimoMensajeEmitido(){
		return mensajes.last()
	}
	method esEscueta(){
		
	}
}