import golosinas.*

object mariano {
	const golosinas = []
	const golosinasHistoricas = []
	
	method comprar(unaGolosina){ 
		golosinas.add(unaGolosina)
		golosinasHistoricas.add(unaGolosina)
	}
	method desechar(unaGolosina){ golosinas.remove(unaGolosina)}
	method cantidadDeGolosinas()= golosinas.size()
	method tieneLaGolosina(unaGolosina)= golosinas.contains(unaGolosina)
	method probarGolosinas(){golosinas.forEach({ g => g.recibirMordisco()})}
	method hayGolosinaSinTacc() = golosinas.any({ g => g.libreDeGluten()})
	method preciosCuidados() = golosinas.all({ g => g.precio() <= 10 })
	method golosinaDeSabor(unSabor)= golosinas.find({ g => g.sabor() == unSabor}) 
	method golosinasDeSabor(unSabor)= golosinas.filter({ g => g.sabor() == unSabor})
	method sabores()= golosinas.map({ g => g.sabor()  }).asSet().asList()
	method golosinaMasCara()= golosinas.max({ g => g.precio()})
	method pesoGolosinas()= golosinas.sum({ g=> g.peso()})
	method golosinasFaltantes(golosinasDeseadas)= golosinasDeseadas.difference(golosinas.asSet())
	method gustosFaltantes(gustosDeseados)= gustosDeseados.difference(self.sabores())

	method gastoEn(sabor)= golosinas.filter({g => g.sabor() == sabor}).sum({g => g.precio()})

	
	method cantidadGolosinasSabor(unSabor)= golosinas.count({g => g.sabor() == unSabor}) //aux
	method saborMasPopular()= self.sabores().max({s => self.cantidadGolosinasSabor(s) })
	method saborMasPesado()= self.sabores().max({s => self.golosinasDeSabor(s).sum({g=> g.peso()})})
	method comproYDesecho(golosina)= golosinasHistoricas.asSet().difference(golosinas.asSet()).contains(golosina)
	
}
