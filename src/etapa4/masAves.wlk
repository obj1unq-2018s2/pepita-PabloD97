
object pepon {
	// aca falta un atributo
	var energia = 0
	
	method comer(cosa, cuanto) { energia += cosa.energiaPorGramo() * cuanto / 2 }  // implementar
	method volar(kms) { energia -= kms * 0.5 + 1 }           // implementar
	method haceLoQueQuieras() { self.volar(1) }   // implementar
}

// implementar el objeto entero, salvo haceLoQueQuieras que lo damos hecho
// ayuda: conviene ponerle dos atributos
object pipa {
	var kilometros = 0
	var cuantosGramosComio = 0
	
	method volar(kms){ kilometros += 1 }
	method kmsRecorridos(){ return kilometros }
	method comer(cosa, cuanto){ cuantosGramosComio += cuanto }
	method gramosIngeridos(){ return cuantosGramosComio }
	
	method haceLoQueQuieras() { }   // queda asi
	// pregunta: ¿por qué es necesario agregar este método, sin código
}
