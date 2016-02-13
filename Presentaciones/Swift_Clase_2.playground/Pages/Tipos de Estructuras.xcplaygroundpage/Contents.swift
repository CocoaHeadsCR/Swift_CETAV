/*:

# __*Swift Día 2*__

---

# Tipos de Estructuras

## `Enums` (Enumeradores)

Una enumeración define un tipo común para un grupo de valores relacionados y da la libertad de trabajar con esos valores en una forma segura dentro del código.

Permite la asignación de nombres relacionados a ciertos valores.

### Ejemplo:
*/

enum Profesores: String {
  case Leo
  case Christopher
  case Esteban
}

let leo: Profesores = .Leo
let chris = Profesores.Christopher

/*:
Además en `Swift` los enumeradores pueden tener valores asociados permitiéndonos asignar valores extra a los valores del enumerador.
*/

enum Profe {
  case Leo(String)
  case Christopher(Int)
  case Esteban(Float)
}

let leo2: Profe = .Leo("Picado")
let chris2: Profe = .Christopher(1)
let esteban: Profe = .Esteban(1.5)

switch leo2 {
case .Leo(let apellido): print(apellido)
case .Christopher(_): print("Chris?")
case .Esteban(_): print("Esteban?")
}

/*:

## `Class` (Clases) y `Structs` (Estructuras)

Las clases y las estructuras son de propósito general, constructores flexible que se convierten en las bases del código. Se definen propiedades y métodos para agregar funcionalidad a las clases o estructuras usando la misma sintáxis para constantes, variables y funciones.

A diferencia de otros lenguajes de programación, `Swift` no requiere separar la interface de la implementación en archivos diferentes para clases y estructuras propias.

### Ejemplo:
*/

struct S1 {
  var nombre: String
  
  mutating func nuevoNombre(nombre: String) -> Void {
    self.nombre = nombre
  }
}

class C1 {
  var nombre: String
  
  func nuevoNombre(nombre: String) -> Void {
    self.nombre = nombre
  }
  
  init(nombre: String) {
    self.nombre = nombre
  }
}

var s1 = S1(nombre: "Ash")
s1.nuevoNombre("Furrow")

let c1 = C1(nombre: "Orta")
s1.nuevoNombre("Therox")

/*:

### Diferencias:

* Las estructuras son valores de «__COPIA__» mientras que las clases son de «__REFERENCIA__». 
  Ésto quiere decir que al momento de pasarse como parámetros o a otros objetos las estructuras crean una copia de si mismas y ese es el valor que se pasa.
  Las clases por otro lado pasan una referencia al objeto (un puntero a la posición en memoria) por lo que si se modifican dentro de una función se modificará también el objeto que se pasó como parámetro.
*/

func cambiarEstructura(var s1: S1) {
  s1.nuevoNombre("Cambiado Dentro")
}

func cambiarClase(c1: C1) {
  c1.nuevoNombre("Cambiado Dentro")
}

var s2 = S1(nombre: "Estructura")
print("Estructura :\(s2.nombre)")

var c2 = C1(nombre: "Clase")
print("Clase: \(c2.nombre)")

cambiarEstructura(s2)
print("Estructura: \(s2.nombre)")

cambiarClase(c2)
print("Clase: \(c2.nombre)")

//: [Patrones de Diseño](@next)
