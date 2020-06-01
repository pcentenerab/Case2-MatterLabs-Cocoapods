# Case2-MatterLabs-Cocoapods

## Secciones

- [General](#general)
- [Primeros pasos](#primeros_pasos)
- [Uso](#uso)
- [Contribución](#contribucion)

## General <a name = "general"></a>

Este repositorio forma parte del proyecto correspondiente a mi Trabajo de Fin de Grado del Grado en Ingeniería de Tecnologías y Servicios de la Telecomunicación en la Universidad Politécnica de Madrid: Desarrollo de un servicio de gestión de asignaturas basado en Blockchain e implementación de clientes nativos para dispositivos iOS. Mi tutor durante el desarrollo del trabajo, defendido en junio de 2020, ha sido Santiago Pavón.

En concreto, Case2-MatterLabs-Cocoapods es una aplicación iOS desarrollada con Xcode que permite la comunicación con una red de tipo Blockchain con Ganache. Esta aplicación es nativa en Swift, que utiliza la librería [web3swift](https://github.com/matter-labs/web3swift) para acceder al nodo de Ganache.

## Primeros pasos <a name = "primeros_pasos"></a>

Se debe clonar el repositorio. Este proyecto ya contiene la librería [web3swift](https://github.com/matter-labs/web3swift) incluida, por lo que no es necesaria ninguna configuración adicional.

### Prerrequisitos

Se debe haber instalado y configurado el proyecto Contador-Contracts disponible en [este repositorio](https://github.com/pcentenerab/Contador-Contract).

### Instalación

Para instalar el proyecto en el entorno, hay que ejecutar el siguiente comando desde un terminal.

```
$ git clone https://github.com/pcentenerab/Case2-MatterLabs-Cocoapods
```

Además, se debe consultar la dirección en la que está desplegado el contrato en la red propia de Ganache para introducirla en la clase ViewController (línea 33). También debe tenerse la dirección de la cuenta de Ganache desde la que se quieren realizar las transacciones. Se debe introducir en esta misma clase en la línea 38.


## Uso <a name = "uso"></a>

A partir de aquí, ya se tiene la aplicación instalada. Se abre el proyecto Xcode y se ejecuta.


## Contribución <a name = "contribucion"></a>

Este repositorio se enmarca en el proyecto ya mencionado, que proporciona una guía de desarrollo disponible para toda la comunidad de desarrolladores. Estaré encantada de recibir contribuciones al respecto para poder mejorar el potencial de la investigación.