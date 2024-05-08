# Ejercicio Semanal

## Enunciado

Se desea desarrollar en terraform un módulo que permita desplegar el siguiente workload:

- Múltiples instancias de máquinas virtuales especificadas a través de un mapa de objetos. Cada una de estas máquinas puede tener diferentes atributos.
- Un balanceador de carga que distribuya el tráfico entre las instancias de máquinas virtuales.
- El resto de elementos de red necesarios para completar la configuración de red de la solución.

El módulo debe ser alojado en un repositorio de GitHub y debe contener un README.md con la documentación necesaria para su uso.

Adicionalmente se debe crear un segundo repositorio de GitHub que disponga de un workflow de GitHub Actions que cumpla con los siguientes requisitos:

- Se debe ejecutar un plan de terraform cada vez que se realice un pull request a la rama principal del repositorio. 
- [**OPCIONAL**]El resultado del plan debe ser publicado como comentario en el pull request.
- Se debe ejecutar un apply de terraform cada vez que se realice un merge y/ó push a la rama principal del repositorio.
- [**OPCIONAL**]Se debe disponer de la opción de ejecutar plan/apply/destroy de terraform de forma manual para poder ejecutarlo en cualquier momento en caso de necesidad.

Un ejemplo de uso del módulo desarrollado debe ser incluido en el repositorio de GitHub que contiene el workflow de GitHub Actions y debe ser desplegado en Azure utilizando para ello el Service Principal de Microsoft Azure que se le haya facilitado.

## ¡Importante!

Ten mucho cuidado con los valores sensibles que puedas exponer en tus soluciones. Recuerda que otras personas pueden ver la información de tus entregables y, por lo tanto, acceder a este tipo de información. **¡Siempre trata de mantener la seguridad de tus datos y de los datos de tus clientes!**

Recuerda terminar cada prueba que realices con un `terraform destroy` para evitar costes innecesarios. **¡No lo olvides!**