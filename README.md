# Prueba técnica de Backend

## Requisitos previos
No todos ellos son imprescindibles, pero para realizar la prueba de la forma más eficiente posible se debería disponer de un entorno de desarrollo con los siguientes elementos:
* Git
* Cuenta de GitHub
* RVM
* Un sistema de base de datos PostgreSQL, MySQL o similar
* RubyGems
* Ruby on Rails 5.x o superior

## Cómo desarrollar la prueba
Se deberá realizar la prueba de la siguiente manera:
* Crear un fork de este repositorio
* Realizar en el fork las modificaciones necesarias para cumplir los requisitos a desarrollar
* Realizar un pull request desde el fork a este repositorio

## Requisitos a desarrollar
La prueba consistirá en añadir a esta aplicación la funcionalidad de `Lista de tareas`. Para ello:
* La ruta raíz de la aplicación deberá renderizar la acción index del nuevo controlador que se creará para la `Lista de tareas`, donde se implemente todo el CRUD de este nuevo modelo. Dicho índice mostrará por separado las tareas pasadas, futuras y las que están sucediendo en este momento.
* El nuevo modelo deberá contar con los siguientes atributos:
  * Título (requerido)
  * Intervalo de fecha y hora de inicio y fin de la tarea (requerido)
  * email para avisos (opcional)
* El modelo deberá contar con las validaciones necesarias para:
  * Exigir los atributos requeridos
  * El email, como se indica, es opcional, pero en caso de incluirse deberá tener un formato válido
  * No debe haber dos tareas solapadas en el tiempo
* Se deberán soportar todas las acciones CRUD, y además:
  * Crear un primer acercamiento al desarrollo de una API implementando una acción que renderice una respuesta en JSON con todas las tareas: pasadas, pendientes y futuras; con un atributo más que indique dicho estado
  * Proteger el acceso a esta acción con el método de autenticación que se considere más indicado (por ejemplo: API Key, autenticación HTTP básica, etc)
* Preparar tareas asíncronas (Active Job) para que:
  * En caso de que se incluya una dirección de correo en la tarea, se envíe a dicha dirección un email (Action Mailer) a la hora de inicio de la tarea (no se require implementar la conexión con un proveedor de correo real, sólo implementar la tarea de fondo, el mailer, sus métodos y vistas)
* Realizar los test necesarios para cubrir toda la implementación

## Aspectos a valorar
* Comentarios en el código que clarifiquen cualquier aspecto que se considere relevante
* Limpieza en el código y respeto a convenios en cuanto a estilo (https://github.com/rubocop-hq/ruby-style-guide)
* El tiempo de entrega y finalización de la prueba
* Se pide una eficiencia máxima en el esquema de base de datos creado y en todas las consultas realizadas
