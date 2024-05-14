# Stardew Access Traducción al Español

Este es el repositorio para la traducción al español del mod [Stardew Access](https://www.nexusmods.com/stardewvalley/mods/16205)
El mod depende de [Project Fluent](https://www.nexusmods.com/stardewvalley/mods/12638) para gestionar las traducciones, por lo que se debe instalar junto con Stardew Access.

El mod de traducción tiene dos partes: la primera es el paquete de contenido de Fluent que contiene todas las traducciones, por lo que esta es la parte más importante.
La segunda parte, que es opcional, es un mod escrito en C# que contiene la lógica para la pluralización avanzada de los nombres de los objetos para los idiomas.
Puedes tener una pluralización básica configurada con Fluent, pero eso se complica para ciertos idiomas en los que la pluralización depende de ciertas condiciones como el tipo de objeto (el plural de `madera` es `trozos de madera`, mientras que el plural de `bolígrafo` es `bolígrafos`).

* actualmente la parte escrita en C# del mod no se incluye en esta plantilla. *

## ¿Por qué Project Fluent?

1. Es posible dividir el archivo de traducción en varios archivos de traducción (Stardew Access tiene 6).
2. Soporta variantes de localización (se puede diferenciar entre es-ES y es-AR, pero también proporcionar una variante estándar).
3. Se pueden usar condiciones en una entrada de traducción, lo que permite fusionar varias entradas en una sola.
4. Tiene funciones personalizadas dentro de las entradas de traducción que extienden la funcionalidad.

## cómo instalar y usar esta traducción

1. Descarga la traducción desde gyt hub haciendo lo siguiente:
   * Ve al inicio de esta página web, busca y selecciona el botón code, o código, que desplegará un submenú.
   * selecciona download zip, o descargar archivo zip
   * De forma alternativa, puedes [usar este enlace para descargar la traducción más reciente directamente desde este repositorio](https://github.com/Marc2p/stardew-access-es/archive/refs/heads/main.zip)
2.  Ahora que descargaste el zip, extrae la carpeta llamada "[Fluent][ES] Stardew Access" que está dentro del archivo y pégala en la carpeta de mods de stardew valley, por defecto en windows usando steam: "C:\Program Files (x86)\Steam\steamapps\common\Stardew Valley\mods"
   3. para verificar que se ha cargado el idioma nuevo con éxito, ejecuta stardew desde smapi y debería haber un mensaje en la consola que dice "[Project Fluent] Loading content pack `marc2p.fluent.stardewaccess.es`..."
   4. de todos modos, debería anunciarse también en español la carga de stardew access junto con su número de versión, y listo, esto sería todo.

## Configuración del paquete de contenido de Fluent

1. Renombra la carpeta `[Fluent][EN] Stardew Access` y reemplaza `EN` con el código del idioma al que vas a traducir, teniendo en cuenta su variante, si la hubiera.
2. Cambia los valores de `Name`, `Author`, `Description` y `UniqueID` para describir tu traducción. (No cambies los `UniqueID` que están dentro de `ContentPackFor` y `Dependencies`)
    - El valor del campo `Name` debería ser el mismo que el nombre de la carpeta que acabas de cambiar, así que solo tendrás que reemplazar `EN` con el código de tu idioma.
    - Sigue este formato para el UniqueID: `<tu-nombre>.fluent.stardewaccess.<código-de-idioma>`
      - Un ejemplo para el mod de traducción al español sería `marc2p.fluent.stardewaccess.es`
3. Crea una carpeta llamada `i18n` dentro de la carpeta. Esta contendrá todos los archivos de traducción `.ftl`.
4. Copia los archivos `.ftl` de la carpeta `i18n` de la versión beta o de lanzamiento del mod y renómbralos con el código de tu idioma.
5. ¡Eso es todo! Ya puedes empezar a traducir estos archivos.

Puedes encontrar la guía de sintaxis de Fluent [aquí](https://projectfluent.org/fluent/guide/).
También hay un [editor en línea](https://projectfluent.org/play/) donde puedes probar cosas de forma segura.
Es posible que también necesites consultar las funciones personalizadas añadidas por [Project Fluent](https://hackmd.io/@Shockah/H1q8H-mcc/https%3A%2F%2Fhackmd.io%2F%40Shockah%2FHy8nTM7c5) y [Stardew Access](https://github.com/khanshoaib3/stardew-access/blob/c966d188ea506a70782edb5177ef6e87c685f890/stardew-access/Translation/CustomFluentFunctions.cs#L29-L91)

<TODO Add the doc link for custom functions in stardew access.>

Como este es un paquete de contenido, se carga como cualquier otro mod. Así que una vez que hayas terminado de traducir o quieras probar tus traducciones, copia o mueve `[Fluent][EN] Stardew Access` a la carpeta `Mods`.
Se recomienda que también alojes este paquete de contenido en Nexus (si es posible, de lo contrario, github u otra plataforma estarán bien) para que podamos mencionar tu mod de traducción en las páginas de Stardew Access.
