//: velocimetro

enum Velocidades:Int{
    
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init(velocidadInicial:Velocidades){
        self = velocidadInicial
    }
    
}

class Auto {
    
    var velocidad:Velocidades
    init(){
        velocidad = Velocidades(velocidadInicial: .Apagado)
    }
    
    func cambioDeVelocidad() -> ( actual : Int,
        
        velocidadEnCadena: String){
        
        var aviso = ""
        let actual = velocidad.rawValue
        
        switch velocidad {
        
        case .Apagado:
            velocidad = .VelocidadBaja
            aviso = "Apagado"
        
        case .VelocidadBaja:
            velocidad = .VelocidadMedia
            aviso = "Velocidad Baja"
        
        case .VelocidadMedia:
            velocidad = .VelocidadAlta
            aviso = "Velocidad Media"
        case .VelocidadAlta:
            velocidad = .Apagado
            aviso = "Velocidad Alta"
        }
        return (actual, aviso)
    }
    
}

let auto = Auto()

for i in 1...20 {
    let result = auto.cambioDeVelocidad()
    print("\(i). \(result.actual), \(result.velocidadEnCadena)")
}
