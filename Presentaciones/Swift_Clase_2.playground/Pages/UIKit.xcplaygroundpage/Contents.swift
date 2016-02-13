/*:

# __*Swift Día 2*__

---

# `UIKit`

Las vistas son los pilares de construcción para crear las interfaces de usuarios. En lugar de usar una vista para presentar el contenido, los más probable y recomendable es utilizar varias vistas, desde simples botones, etiquetas de texto hasta vistas más complejas como vistas de tablase (`table views`), `picker views` y `scroll views`. Cada vista representa una porción particular de la interfaz de usuario y es generalmente optimizada para un tipo específico de contenido. Al construirse vista sobre vista se obtine una gerarquía de vistas.

![](windowlayers_world_clock_2x.png)

## Componentes

Algunos de los componentes disponibles en `iOS` son botones, etiquetas, vistas, indicadores de actividad, paginadores, tablas, vista de imágenes, etc.

![](Componentes.png)

### Ejemplo:
*/

import UIKit
import XCPlayground

class ViewController: UIViewController {
  var boton: UIButton!
  var etiqueta: UILabel!
  var textField: UITextField!
  var vistaImagen: UIImageView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    self.view.frame = CGRect(x: 0, y: 0, width: 320, height: 480)
    self.view.backgroundColor = UIColor.whiteColor()
    
    // UIButton
    self.boton = UIButton(frame: CGRectMake(10, 10, 300, 40))
    self.boton.setTitle("Botón", forState: .Normal)
    self.boton.setTitleColor(UIColor.blackColor(), forState: .Normal)
    self.boton.layer.borderColor = UIColor.blackColor().CGColor
    self.boton.layer.borderWidth = 1
    self.boton.layer.cornerRadius = 6
    
    // UILabel
    self.etiqueta = UILabel(frame: CGRectMake(10, 45, 300, 40))
    etiqueta.text = "Hola Mundo"
    
    // UITextField
    self.textField = UITextField(frame: CGRectMake(10, 90, 300, 40))
    self.textField.borderStyle = .Bezel
    self.textField.placeholder = "TextField"
    
    // UIImageView
    self.vistaImagen = UIImageView(frame: CGRectMake(10, 135, 220, 200))
    self.vistaImagen.image = UIImage(named: "cocoaheads")
    
    self.view.addSubview(boton)
    self.view.addSubview(etiqueta)
    self.view.addSubview(textField)
    self.view.addSubview(vistaImagen)
  }
}

XCPlaygroundPage.currentPage.liveView = ViewController()
XCPlaygroundPage.currentPage.needsIndefiniteExecution = true

/*:
*Nota: Si no puedes ver la vista previa del controlador procede a mostrar el «*Assitant Editor*»:*
![](Preview.png)

*Y luego selecciona «*Timeline*» -> «*MVC.xcplaygroundpage*»*
![](Timeline.png)
*/
