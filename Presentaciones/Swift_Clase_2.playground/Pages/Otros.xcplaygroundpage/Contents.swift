/*:

# __*Swift Día 2*__

---

# Otros
## `Model-View-ViewModel`

### Definición:

El patrón `MVVM` es un patrón de diseño creado por `Microsoft` que aísla la interfaz de usuario de la lógica de negocios que la «*guía*». `MVVM` pertenece a una clase de patrones llamada «*Separación de Presentación*». Estos patrones proveen un clara separación entre el `UI` y el resto de la aplicación. Esto mejora la habilidad de probar la aplicación y permite que la aplicación y su `UI` evolucionen de forma más fácil e independiente.

`MVVM`, de manera muy superficial tiene las siguientes condiciones:

* Los modelos no pueden hablar con nadie (al igual que en `MVC`)
* Los `ViewModels` sólo pueden hablar con los modelos
* Los `ViewControllers` no pueden hablar con los modelos de forma directa, sólo pueden interactuar con los `ViewModels`
* Las vistas sólo pueden hablar con los `ViewControllers`, notificándoles de interacciones por eventos (igual que en `MVC`)
* Y eso es todo ¯\_(ツ)_/¯ no es tan diferente de `MVC`

![Model-View-ViewModel](mvvm.png)

---

## `View, Interactor, Presenter, Entity, and Routing`

### Definición:

`VIPER` es una aplicación de Arquitectura Limpia para aplicaciones de `iOS`. La palabra `VIPER` es un «*backronym*» para `View`, `Interactor`, `Presenter`, `Entity` y `Routing`. Divide la estructura lógica de una aplicación en diferentes capas de responsabilidad. Esto hace que sea más simple aislar dependencias (ej. la base de datos) y probar las interacciones en las fronteras entre capas.

![VIPER](viper.jpg)

[`UIKit`](@next)

*/
