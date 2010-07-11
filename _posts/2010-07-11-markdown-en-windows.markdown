---
layout: post
title: Markdown en Windows
---

{{ page.title }}
================

{{ page.date | date: "%d/%m/%Y"}} &ndash; Barcelona


Hace poco, mi buena amiga y compañera de trabajo [Mireia](http://www.gretel.cat/esp/membres/m_manresa.html) me pidió una alternativa al Word. Estaba literalmente harta de ver cómo su tesis doctoral, un documento de alrededor de 600 páginas, se desconfigura cada vez que modifica un párrafo o actualiza un esquema. Esta situación no es exclusiva de Mireia. De hecho, este problema forma parte de la rutina de edición de documentos en editores visuales, sobretodo cuando la extensión supera la decena de páginas.

Cuando Mireia me formuló la pregunta (*Hi ha una altra manera de treballar sense el Word o l'Open Office?*) yo respondí que sí, hay otras maneras de trabajar, pero pertenecen a otra metodología de edición no tan visual, pero mucho más eficiente y, sobre todo, menos estresante cuando has de actualizar, modificar o reciclar el documento. Sólo que tenía que añadir tres inconvenientes importantes: 

1. Mireia no está familiarizada con los lenguajes de marcas.
2. Mireia es *windows-user-centric*. Su entorno habitual de trabajo se desarrolla sobre Microsoft Windows, luego es necesario preparar un entorno de trabajo adecuado, especialmente bajo en *geeky-calorías*.
3. Los destinatarios de los documentos que publica Mireia son *word-centrics*, es decir, sólo admiten el formato nativo de Microsoft Word. Si los destinatarios del trabajo de Mireia reciben archivos de texto plano en lugar de un documento de Word, es muy posible que escriban un mensaje avisándole que, *sintiéndolo mucho, no podemos abrir el documento que nos ha enviado*.

Aprender un lenguaje de marcas como [Markdown](http://daringfireball.net/projects/markdown/) o [Textile](http://www.textism.com/tools/textile/) no resulta excesivamente complicado. Como mínimo, el esfuerzo en recordar las marcas más utilizadas (cabeceras, listas, negritas, itálicas,...) es mucho menor que el que representa entender la lógica de trabajo de un editor visual. Hay una razón de esto tan evidente como invisible, muy al estilo de la [carta robada](http://www.lamaquinadeltiempo.com/Poe/carta01.htm) de Poe: escribir siguiendo un lenguaje de marcas supone olvidarse completamente del estilo visual. Trabajar con editores visuales supone lo contrario, se mezcla la redacción del contenido con el diseño visual del documento, lo que conduce a una interminable confusión y pérdida de tiempo sólo en la corrección de estilo de los diferentes elementos estructurales que intervienen en el documento. Comentarios como *esta lista de picas no aparece como la anterior, el sangrado es distinto en algunas páginas, los espacios entre párrafos no son iguales, la paginación no es correcta, las imágenes se han desplazado a otra página,..* son habituales y contradicen el mensaje que *publicar documentos en Word es fácil e inmediato*. Cierto, siempre que el documento no sea excesivamente *largo*.

Editar en Markdown sobre Windows no es fácil. Veamos los pasos que ha de seguir Mireia para conseguir un entorno de trabajo óptimo:

1. En primer lugar, Mireia deberá instalar un editor de texto *de verdad*, y olvidarse por completo del inalterable **bloc de notas**. Visitará la página principal de [Notepad++](http://notepad-plus-plus.org/) y procederá a su instalación. Notepad++ es uno de los mejores editores en el entorno MS Windows y es libre.
2. Luego necesitará instalar un complemento que, por el momento, no viene de serie en Notepad++ y que resultará más tarde imprescindible en la conversión transparente de los documentos escritos en Markdown a formatos finales: [NppExec](http://sourceforge.net/projects/npp-plugins/files/). La instalación de un nuevo complemento en Notepad++ es un proceso muy simple: descarga el archivo comprimido, descomprímelo y copiarlo en ``c:\Archivos de programa\notepad++\plugins``. Deberá reiniciar el Notepad++ para que el nuevo complemento sea operativo.
3. Instalará [Pandoc](http://johnmacfarlane.net/pandoc/), uno de los mejores conversores entre formatos actualmente. Descargará el [instalador](http://code.google.com/p/pandoc/downloads/list) para MS Windows.
4. Abrirá un documento nuevo en Notepad++ y copiará, por ejemplo, el texto que encontrará en la [página siguiente](http://johnmacfarlane.net/pandoc/demo/README) y lo guardará con el nombre de, por ejemplo, ``foo.md`` en el Escritorio de su ordenador.
5. Hará clic en el menú ``Complements | NppExec | Execute`` y se abrirá una ventana emergente en el que escribirá la siguiente instrucción: ``pandoc "$(FULL_CURRENT_PATH)"  -o "$(CURRENT_DIRECTORY)\$(NAME_PART).odt"`` y hará clic sobre el botón **OK**. De esta manera, obtendrá un nuevo documento, ``foo.odt``, en el escritorio. La conversión se ha realizado con éxito.
6. ¿Y la exportación a PDF? Aquí entraría en escena LaTeX de la mano de [MiKTeX](http://miktex.org/). Mireia debería instalar este entorno de producción y publicación de LaTeX si quisiera una exportación más o menos directa a PDF. En esta conversión de Markdown a PDF intervendría dos procesos:
  1. Una exportación de Markdown a TeX a través de la siguiente instrucción: ``pandoc "$(FULL_CURRENT_PATH)"  -o "$(CURRENT_DIRECTORY)\$(NAME_PART).odt"``
  2. Una vez realizada la conversión a TeX, abrir el fichero TeX obtenido con MiKTeX y, desde allí realizar la exportación a PDF.

Finalmente, la exportación al formato de MS Word, ``.doc``, sería posible al disponer del documento en ``.odt``, es decir, en el Writer de OpenOffice. Este último tiene la capacidad de exportar el documento ``.odt`` a ``.doc``, pero claro está, no estaría la conversión exenta de cierta pérdida de formato. Aún así, Mireia tiene la oportunidad de probar una nueva manera de publicar contenidos, muy diferente a lo que estaba acostumbrada y, con la expectativa de no volver a repetir la situación que la ha llevado hasta aquí, la de no perder más tiempo en corregir problemas de estilo y composición cuando edita un documento de más de diez páginas.


