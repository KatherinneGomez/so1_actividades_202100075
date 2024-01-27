# Actividad 1

## Datos

Carnet | Nombre Completo
------ | --------------- 
202100075 | Katherinne Gabriela Gómez Marroquin

## Tipos de Kernel y sus diferencias
* **Kernel Monolítico:** es un núcleo grande y complicado capaz de realizar todas las tareas y servicios del sistema. Se encarga de gestionar la memoria, los procesos, la comunicación entre psocesos y brindar soporte a los drivers y el hardware. Algunos de sus inconvenientes son la falta de modularidad y la dificultad de debugueo.
* **Microkernel:** es un núcleo de tamaño reducido generado únicamente con los requerimientos escenciales del sistema operativo. Las demás funciones son agregadas a través de la suma de módulos externos, otorgando flexibilidad y permitiend la extensión. Su mayor inconveniente es el efecto sobre el rendimiento debido a la necesidad de comunicación entre procesos.
* **Kernel Híbrido:** resulta de la combinación del kernel monolítico y el microkernel. Algunas funcionalidades se ejecutan en el espacio del núcleo mientras otras se ejecutan como servicios independientes. Unificando la eficiencia y rendimiento del kernel monolítico con la modularidad y flexibilidad del microkernel.
* **Exokernel:** denominado sistema operativo verticalmente estructurado. El kernel se encarga únicamente de asignar los recursos del hardware a los diferentes programas. Toda la funcionalidad deja de estar presente en la memoria y pasa a estar en el exterior, en librerías activas. Su rendimiento es excepcional, pero es muy complejo de implementar.
## User vs Kernel Mode
### User Mode
Cuando se inicia un programa en un sistema operativo se hace en modo de usuario. El modo usuario es un modo de visualización estándar y típico, lo que implica que la información no puede ejecutarse por sí sola ni hacer referencia a ningún bloque de memoria; necesita una interfaz de protocolo de aplicación (API) para lograr estas cosas. En modo usuario:
* Los programas en modo de usuario tienen menos privilegios que las aplicaciones en modo de usuario y no pueden acceder a los recursos del sistema directamente. 
* En caso de una interrupción un único proceso falla.
* Todos los procesos obtienen un espacio de direcciones virtuales separados.
* Un fallo del sistema se puede recuperar simplemente reanudando la sesión.
* El bit de modo del modo de usuario es 1.
### Kernel Mode
El modo kernel puede referirse a cualquier bloque de memoria del sistema y también puede dirigir la CPU para la ejecución de una instrucción, lo que lo convierte en un modo muy potente y significativo. En modo Kernel:
* Los programas tienen acceso directo y sin restricciones a los recursos del sistema.
* Todo el sistema operativo podría dejar de funcionar si se produce una interrupción.
* Todos los procesos comparten un único espacio de direcciones virtuales.
* Un fallo del sistema en modo kernel es grave y complica las cosas.
* El bit de modo del modo kernel es 0.

![User vs Kernel Mode](https://media.geeksforgeeks.org/wp-content/uploads/20220106132002/Uservskernelmode-660x371.png)
## Interruptions vs Traps
### Interruptions
Una interrupción es el rompimiento en la secuencia de un programa para ejecutar un programa especial llamando una rutina de servicio cuya característica principal es que al finalizar regresa al punto donde se interrumpió el programa.
### Traps
Una trampa se puede identificar como una transferencia de control, que es iniciada por el programador. El término Trampa se usa indistintamente con el término Excepción (que es una interrupción de software que ocurre automáticamente). Es simplemente una llamada de subrutina especial. Por tanto, entran en la categoría de interrupciones invocadas por software.
### ¿Cuál es la diferencia entre Interrupt y Trap?
Las interrupciones son interrupciones de hardware, mientras que las trampas son invocadas por software. Las apariciones de interrupciones de hardware generalmente inhabilitan otras interrupciones de hardware, pero esto no es cierto para las trampas. A diferencia de las trampas, las interrupciones deben preservar el estado anterior de la CPU.