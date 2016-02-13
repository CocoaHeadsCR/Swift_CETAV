/*:
# __*Swift Día 2*__

---

## Delegados:
### Definición:

Patrón que permite a una clase o estructura entregar (delegar) algunas de sus responsabilidades a instancias de otro tipo. Este patrón de diseño es implementado mediante la definición de un protocolo que encapsula las responsabilidades del delegado, tal que un tipo que adapta (conocido como delegado) garantiza que provee TODA la funcionalidad esperada. La delegación puede ser usada para responder a acciones particulares, regresar datos de una fuente externa sin necesidad de saber el tipo específico de esa fuente.

![](delegate.jpg)

*/

protocol FuenteDatos {
  func entregarDatos() -> [String]
}

struct Cargador: FuenteDatos {
  func entregarDatos() -> [String] {
    return ["Uno", "Dos", "Tres"]
  }
}

struct Tabla {
  let fuente: Cargador
}

//: #### Uso:

extension Tabla {
  func imprimir() -> Void {
    for dato in fuente.entregarDatos() {
      print(dato)
    }
  }
}

let fuente = Cargador()
let tabla = Tabla(fuente: fuente)
tabla.imprimir()

//: [`Model-View-Controller`](@next)
