# CIU - Práctica 3

Autor: Héctor Miguel Martín Álvarez

## Introducción

Representación de un sistema planetario en Processing

## Desarrollo

El proyecto ha sido desarrollado empleando 4 ficheros, el fichero principal CIU_3 en el que se crean los planetas, cargan las texturas de los planetas y se implementan los eventos de teclado y de la rueda del ratón.
El fichero AstronomicalObject define una clase abstracta que representa cualquier objeto astronómico.
El fichero Planeta define una clase que extiende de AstronomicalObject que representa un planeta y se utiliza para la creación de todos planetas del sistema planetario y su estrella.
El fichero Satellite define una clase que extiende de AstronomicalObject que representa un satélite y se utiliza para la creación de los satélites de planetas del sistema planetario.

## Controles

Rueda del ratón para hacer zoom sobre el sistema planetario.</br>
Tecla 'A' gira el sistema hacia la derecha. </br>
Tecla 'D' gira el sistema hacia la izquierda.

## Herramientas

  - Processing 3.5.4

## Referencia

  - Material de la asignatura Creando Interfaces de Usuario
  - Documentación de Processing
  - Texturas del sol, todos los planetas, la Luna y el fondo https://www.solarsystemscope.com/textures/
  - Texturas de Fobos y Deimos http://www.planetaryvisions.com

![No gif here :(](https://github.com/HectorMartinAlvarez/CIU_3/blob/main/CIU_3/animation.gif)
