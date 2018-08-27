

object alpiste {
	method energiaPorGramo() { return 4 }
}

object mondongo {
	method energiaPorGramo() { return 100 }
}

// comida que esta fallada
object bigMac {
	method energiaPorGramo() { return 2 }
}

/*
 * el alcaucil da 20 joules por gramo
 */ 
object alcaucil {
	method energiaPorGramo() { return 20 }
}

/*
 * el sorgo da 9 joules por gramo
 */ 
object sorgo {
	method energiaPorGramo() { return 9 }
}

object mijo {
	var mijo = 0
	method mojarse() { 
		 mijo =  15
	}
	
	method secarse(){
		mijo = 20 
	}
	
	method energiaPorGramo() { return mijo }
}

object canelones {
	var canelon = 20
	
	method salsa(){	canelon += 5} 
	
	method sacarSalsa(){ 
		if( canelon > 26 ) {
			canelon -= 5
		}
	}
	
	
	method queso(){	canelon += 7}
	
	method sacarQueso(){ 
		if( canelon > 28 ){
			canelon -= 7
		}
	}
}

object pepita {
	var energia = 0
	method energia() { return energia }
	method comer(cosa, gramos) { energia += cosa.energiaPorGramo() * gramos }
	method volar(kms) { energia -= kms + 10 }
	
	// metodos nuevos
	method estaDebil() { return energia < 50 }  // implementar
	method estaFeliz() { return energia.between(500, 1000)  }  // implementar
	
	method cuantoQuiereVolar() { 
		var cuanto = self.energia() / 5
		if (energia.between(300, 400)) { cuanto += 10 }
		if (energia % 20 == 0) { cuanto += 15 }
		return cuanto
	}

	method salirAComer() {
		self.volar(5)		
		self.comer(alpiste, 80)
		self.volar(5)		
	}
	
	method haceLoQueQuieras() {    
		if ( self.estaDebil() ) {
			self.comer(alpiste, 20)
		} 

		else if ( self.estaFeliz() ) {
			self.volar(8)
		}	
	}
}



object roque {
	method entrenar() {
		pepita.volar(10)
		pepita.comer(alpiste, 300)
		pepita.volar(5)
		pepita.haceLoQueQuieras()
	}  
}



