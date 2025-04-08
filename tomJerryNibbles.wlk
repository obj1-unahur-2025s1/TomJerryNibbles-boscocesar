object tom {
    var energia = 50
    var distanciaRecorrida = 0
    var ultimoRatonComido = jerry
    method comer(raton) {
        energia = energia + 12 + raton.peso()
        ultimoRatonComido = raton
    }

    method correr(metros){
        energia = energia + metros * 0.5
        distanciaRecorrida = distanciaRecorrida + metros
    }

    method velocidadMaxima(){
        return (5 + energia/10)
    }

    method puedeCazar(distancia) {
        return energia >= distancia * 0.5
    }

    method cazar(raton, distancia) {
        if (self.puedeCazar(distancia)){
            self.correr(distancia)
            self.comer(raton) // siempre llamar otros methods con SELF
        }      
    }

    method energia() {
      return (energia)
    }
} 

object jerry {
    var edad = 2 
    //var peso = jerry.edad() * 20 mal. usar un method

    method cumplirAnios() {
        edad += 11
    }
    
    method peso() {return (edad * 20)}


}

object nibbles {
    method peso() {return 35} 
}

object jorgito {
    var peso = 30
    method peso(){
        return
    }

    method cambiarPeso(nuevoPeso) {
        peso = nuevoPeso      
    }
}

// Inventar otro ratón