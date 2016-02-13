/*:
# __*Swift Día 2*__
___

# **Patrones de Diseño**

* ## Protocolos (Protocol Oriented Programming)
### Definición

Define planos de métodos, propiedades y otros requerimientos que conviene una tarea en particular o funcionalidad. El protocolo puede ser después adoptado por clases, structs o enumeradores para proveer una implementación actual de los requerimientos de dichos «planos». Cualquier tipo que satisfaga los requerimientos de un protocolo se dice que «adapta/acepta» el protocolo.

Además de especificar requerimientos para tipos que adapten su implementación, un protocolo puede ser extendido para implementar algunos de estos requerimientos o implementar funcionalidades adicionales que los tipos que lo adapten pueden tomar ventaja.

*/
protocol EjemploProtocolo {
  var numero: Int { get set }
  var saludo: String { get }
  func hola(nombre: String) -> String
}

//: ### Adopción en Declaración

struct Estructura: EjemploProtocolo {
  var nombre: String
  
  // MARK: Adopción del Protocolo
  var numero: Int
  var saludo: String {
    return "Hola"
  }
  
  func hola(nombre: String) -> String {
    return "\(saludo) \(nombre)"
  }
}

//: ### Adopción por Extensión

struct Estructura2 {
  var nombre: String
  var numero: Int
}

// MARK: Adopción del protocolo

extension Estructura2: EjemploProtocolo {
  var saludo: String {
    return "Adiós"
  }
  
  func hola(nombre: String) -> String {
    return "\(saludo) \(nombre)"
  }
}

//: #### Uso:

let leo = Estructura(nombre: "Leo", numero: 1)
let chris = Estructura2(nombre: "Chris", numero: 2)

leo.hola("Orta")
leo.saludo

chris.hola("Ash")
chris.saludo

//: [Delegados](@next)
