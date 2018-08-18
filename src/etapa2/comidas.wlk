
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
	
	
	method energiaPorGramo(){
		return canelon 
	}
}





