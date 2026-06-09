class Dependencias {
  const flotaDeRodados = []
  const cantidadDeEmpleados 

  method agregarAFlota(rodado) { flotaDeRodados.add(rodado) }
  method agregarRodados(listaDeRodados) { flotaDeRodados.addAll(listaDeRodados) }//No lo especifica el enunciado, pero para agilizar 
  method quitarDeFlota(rodado) { flotaDeRodados.remove(rodado) }  
  method quitarRodados(listaDeRodados) { flotaDeRodados.removeAll(listaDeRodados) }//No lo especifica el enunciado, pero para agilizar

  method pesoTotal() = flotaDeRodados.sum({ r => r.peso() })
  method estaBienEquipada() = flotaDeRodados.size() >= 3 and self.todosLosRodadosPuedenIrAlMenosA(100)
  method todosLosRodadosPuedenIrAlMenosA(velocidad) = flotaDeRodados.all({ r => r.velocidadMaxima() >= velocidad })
  method capacidadTotalEnColor(color) = self.rodadosDeColor(color).sum({ r => r.capacidad() })
  method rodadosDeColor(color) = flotaDeRodados.filter({ r => r.color() == color })
  method colorDelRodadoMasRapido() = flotaDeRodados.max({ r => r.velocidadMaxima() }).color()
  method capacidadFaltante() = cantidadDeEmpleados - self.capacidadTotalDeFlota()
  method capacidadTotalDeFlota() = flotaDeRodados.sum({ r => r.capacidad() })
  method esGrande() = cantidadDeEmpleados >= 40 and flotaDeRodados.size() >= 5

}

