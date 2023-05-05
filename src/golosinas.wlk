
object bombon {
	var peso = 15
	method precio()=5
	method peso()=peso
	method sabor()= "frutilla"
	method libreDeGluten()= false
	method recibirMordisco(){
		peso = (peso*0.8) -1
	}
}

object alfajor {
	var peso=300
	method precio()=12
	method peso()=peso
	method sabor()="chocolate"
	method libreDeGluten()=false
	method recibirMordisco(){
		peso = peso*0.8
	}
}
object caramelo {
	var peso=5
	method precio()= 1
	method peso()=peso
	method sabor()="frutilla"
	method libreDeGluten()=true 
	method recibirMordisco(){
		peso --
	}
}
object chupetin {
	var peso=7
	method precio()= 2
	method peso()=peso
	method sabor()="naranja"
	method libreDeGluten()= true
	method recibirMordisco(){
		peso = 2.max(peso*0.9)
	}
}

object oblea {
	var peso=250
	method precio()= 5
	method peso()= peso
	method sabor()="vainilla"
	method libreDeGluten()=false
	method recibirMordisco(){
		if(peso>70){peso = peso*0.5}
		else{peso = peso*0.75}
		
	}
}

object chocolatin {
	var pesoInicial 
	var peso
		
	method precio()= 0.5* pesoInicial
	method peso()=peso
	method setPesoInicial(unPeso){
		pesoInicial = unPeso
		peso = unPeso
	}
	method sabor()="chocolate"
	method libreDeGluten()=false
	method recibirMordisco(){
		peso= peso-2
	}
}

object golosinaBaniada {
	var property golosinaBase
	var pesoBanio = 4
	method precio()= golosinaBase.precio() + pesoBanio
	method peso()= golosinaBase.peso() + 4
	method sabor()=golosinaBase.sabor()
	method libreDeGluten()=golosinaBase.libreDeGluten()
	method recibirMordisco(){
	golosinaBase.recibirMordisco()
	pesoBanio = 0.max(pesoBanio-2)
	}
}

object tuttiFrutti {
	var property peso = 5
	var property esLibreDeGluten = true
	var cantMordiscos = 0
	const sabores = ["frutilla","chocolate","naranja"]
	method precio()= if(esLibreDeGluten){7}else{10}
	method sabor()= sabores.get(cantMordiscos % sabores.size())
	method libreDeGluten()= esLibreDeGluten 
	method recibirMordisco(){
		cantMordiscos++
	}
}