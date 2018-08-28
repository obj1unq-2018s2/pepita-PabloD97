object patagonia {
	method energiaRevitalizadora() = 30
}

object sierrasCordobesas {
	method energiaRevitalizadora() = 70
}

object marDelPlata {
	var property esTemporadaAlta= false
	
	method energiaRevitalizadora() = 
		if ( esTemporadaAlta ) -20	else 80

	
}