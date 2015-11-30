//: Tarea Velocimetro

import UIKit

enum Velocidades : Int{
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50,
    VelocidadAlta = 120
    init(velocidadInicial : Velocidades){
        self = velocidadInicial
    }
    
}

class Auto{
    var velocidad : Velocidades
    init()
    {
        velocidad = Velocidades.Apagado
    }
    func cambioDeVelocidad()->(actual : Int, velocidadEnCadena : String)
    {
        var vel : Int = velocidad.rawValue
        
        switch velocidad{
        case Velocidades.Apagado:
            
            velocidad = Velocidades.VelocidadBaja
            return (vel,"Apagado")
        case Velocidades.VelocidadBaja:
            
            velocidad = Velocidades.VelocidadMedia
            return (vel,"Velocidad Baja")
        case Velocidades.VelocidadMedia:
            
            velocidad = Velocidades.VelocidadAlta
            return (vel,"Velocidad Media")
        case Velocidades.VelocidadAlta:
            
            velocidad = Velocidades.VelocidadMedia
            return (vel,"Velocidad Alta")
        default:
            
            velocidad = Velocidades.Apagado
            return (vel,"Otra Velocidad")
        }
    }
}

var auto = Auto()
for i in 1 ... 20{
    print("\(auto.cambioDeVelocidad())\n")
}
