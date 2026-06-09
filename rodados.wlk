import caracteristicasRodados.*

// Clase, porque habrá varios del mismo tipo
class ChevroletCorsa {
    //Sin inicializar porque debe especificarse al instanciar
    //Property porque necesito el método de consulta color()
    const property color
    
    method capacidad() = 4
    method velocidadMaxima() = 150
    method peso() = 1300
}

//Clase, porque habrá varios
class RenaultKwid {
    //Sin inicializar porque debe especificarse al instanciar
    const tieneTanque

    method capacidad() = if (!tieneTanque) 4 else 3
    method velocidadMaxima() = if (tieneTanque) 120 else 110
    method peso() = if (!tieneTanque) 1200 else 1350
    method color() = azul
}

//Objeto bien conocido (único, WKO) poruq es solo una
object trafic {
    var interior = comodo
    var motor = pulenta

    method cambiarInterior(nuevoInterior) { interior = nuevoInterior}
    method cambiarMotor(nuevoMotor) { motor = nuevoMotor}

    method capacidad() = interior.capacidad()
    method velocidadMaxima() = motor.velocidadMaxima()
    method peso() = 4000 + interior.peso() + motor.peso()
    method color() = blanco
}
//Clase, porque habrá varios
class AutoEspecial {
    //Sin inicializar ninguno porque deben especificarse al instanciar
    //Property porque necesito el metodo de consulta de cada uno para respetar polimorfismo    
    const property capacidad
    const property velocidadMaxima
    const property peso
    const property color
}
