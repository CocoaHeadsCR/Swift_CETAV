/*:

# __*Swift Día 2*__

---

## Model View Controller
### Definición:

`Model-View-Controller` (`MVC`) es sin lugar a dudas uno de los patrones más usados (máxime en `iOS`). Clasifica objetos acorde a su rol general en la aplicación y promueve una separación limpia del código basado en su rol.

Los tres roles son:
1. `Model` | `Modelo`: El objeto que tiene la información de la aplicaci´øn y define como se debe manipular. Por ejemplo en la aplicación de `Fotos` un modelo puede ser la clase `Album`.
1. `View` | `Vista`: El objeto que está a cargo de la representación visual del `Modelo` y los controles con los cuales el usuario puede interactuar, básicamente, todos los objetos derivados de `UIView`. Siguiendo el ejemplo de la aplicación de `Fotos` la vista sería la clase `AlbumView`.
1. `Controller` | `Controlador`: El cotrolador es el mediador que coordina todo el trabajo. Accede a los datos del modelo y los desplega con las vistas, escucha eventos y manipula los datos como es debido.

![](mvc.png)

*Nota: ES también uno de los patrones peor utilizados y que resulta en controladores MASIVOS que controlan toda la interacción*

### Ciclo de vida:

1. Creación
El controlador es «desempacado» de su archivo `XIB` o `Storyboard` y llama a `awakeFromNib()`.
Si el controlador es creado por código el método llamado es `loadView()` y se debe proveer manualmente el código para dibujar la vista.

1. Carga
Una vez que el controlador es desempacado o generado el método que se llama es `viewDidLoad()`; éste método es llamado una vez que la vista en cargada en memoria; independientemente de si fue cargada por `XIB` o por código.

1. Aparición
`viewWillAppear(animated:)` y `viewDidAppear(animated:)` son llamados respectivamente cuando la vista es agregada por primera vez a la herarquía de vistas.

#### Ejemplo:

*• Model*
*/

class Persona: CustomDebugStringConvertible {
  var nombre: String
  var apellido1: String
  var apellido2: String?
  
  var nombreCompleto: String {
    get {
      let ap2: String = self.apellido2 ?? ""
      
      return "\(self.nombre) \(self.apellido1) \(ap2)"
    }
  }
  
  init(nombre: String, apellido1: String, apellido2: String?=nil) {
    self.nombre = nombre
    self.apellido1 = apellido1
    self.apellido2 = apellido2
  }
  
  var debugDescription: String {
    return nombreCompleto
  }
}

//// Native Imports
import UIKit
import XCPlayground

/*:
*• View*: `UITableView`

*• Controller*
*/
class ViewController: UIViewController ,UITableViewDelegate, UITableViewDataSource {
  
  var tableView: UITableView!
  var items: [Persona] = [Persona(nombre: "Leo", apellido1: "Picado"), Persona(nombre: "Christopher", apellido1: "Jiménez")]
  
  override func viewDidLoad() {
    super.viewDidLoad()
    self.view.frame = CGRect(x: 0, y: 0, width: 320, height: 480)
    self.tableView = UITableView(frame:self.view!.frame)
    self.tableView.delegate = self
    self.tableView.dataSource = self
    self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
    self.view.addSubview(self.tableView)
  }
  
  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return self.items.count;
  }
  
  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as UITableViewCell
    
    let persona = self.items[indexPath.row]
    print(persona)
    cell.textLabel!.text = persona.nombreCompleto
    
    return cell
  }
}

XCPlaygroundPage.currentPage.liveView = ViewController()
XCPlaygroundPage.currentPage.needsIndefiniteExecution = true

/*:
*Nota: Si no puedes ver la vista previa del controlador procede a mostrar el «*Assitant Editor*»:*
![](Preview.png)

*Y luego selecciona «*Timeline*» -> «*MVC.xcplaygroundpage*»*
![](TimelineView.png)
*/

//: [Otros Patrones](@next)
