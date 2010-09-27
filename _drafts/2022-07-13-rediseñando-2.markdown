Diferentes temas pendientes que han de mejorar el entorno de producción y edición de la wiki:

* Exportación PDF vía LaTeX (
* Editor tipo Bespin (Canvas!) http://ajaxian.com/archives/canvas-for-a-text-editor o, por el contrario, el uso de WYMeditor (http://www.wymeditor.org/), con la implementación del lenguaje Dokuwiki nativo + Scriptor (adaptación del lenguaje Scriptorium) + Plugins
* Mejorar la gestión de versiones: probar http://github.com/adrianlang/dokuwiki-diffpreview/ 
* Edición semántica 
* Galería de imágenes para gestionar las imágenes de un módulo: http://www.dokuwiki.org/plugin:gallery
* Arreglar el tema de la subida de ficheros: http://www.dokuwiki.org/plugin:archiveupload en caso que el batch no funcione (http://www.dokuwiki.org/mediamanager)
* Editor de tablas? http://forum.dokuwiki.org/thread/5765
* Contar espacios? http://www.dokuwiki.org/tips:wordcounter
* Rediseñar la web
* Lazy Editors: http://wiki.plattsalat.de/doku.php?id=wiki:openofficemacro


El largo camino del HTML a PDF
==============================

¿El adiós a PISA?
----------------


http://www.alistapart.com/articles/boom
http://eegg.wordpress.com/2010/01/17/html-to-pdf/

http://thinkrelevance.com/blog/2010/06/15/rethinking-pdf-creation-in-ruby.html




Den a la wiki lo que es de la wiki
----------------------------------

Una de las características más importantes de las wikis como gestores de información es su flexibilidad y agilidad en la creación, edición y control de los contenidos. Esta característica no ha brillado demasiado en la wiki del IOC por varios motivos, pero fundamentalmente uno: la intención de copiar el modelo anterior sobre un entorno de producción de contenidos antitético. Se ha intentado *emularlo*, sacrificando del todo la naturaleza permeable de la wiki. Ahora mismo, la wiki está diseñada en términos de producción y publicación de *libros de texto*, lo que ha llevado a establecer unos preámbulos de trabajo antinaturales para autores, editores y administradores de la wiki.

Este *recorte de libertades* de la wiki original ha comportado, por ejemplo, el retraso de incorporar nuevas funcionalidades de las versiones que han ido publicándose de la Dokuwiki original a riesgo que el andamiaje artificial se desplomara, o la creación ágil de otro tipo de documentación, muy lejos del formato de libro de texto. Es urgente que la wiki se desprenda de todo aquello que suponga un artificio o lastre en su evolución; desprenderse del límite de *clon económico de producción de libros de texto* a favor de *herramienta de propósito general de gestión y publicación de la información*, pero orientado a causar un efecto *neguentrópico* sobre la información interna/visible del IOC.


De crudo a cocido
-----------------

La edición en texto plano resulta enervante, especialmente si estamos acostumbrados 

Bespin


¿Adiós a Pisa?
--------------

El proyecto [Pisa](http://www.xhtml2pdf.com/) es la librería encargada de transformar el HTML generado a PDF final. Desarrollada en Python \-como el resto del exportador\-, soporta la mayoría de los elementos característicos de un documento de impresión, como columnas, cabeceras, numeración, fuentes True Type, etc. Es fácil de adivinar que, el proceso de generación de los documentos PDF en la wiki implica una doble transformación:

1. De la sintaxi dokuwiki a HTML
2. Del HTML anterior a PDF

El resultado final, sin el documento wiki original no es excesivamente complejo, es bueno. El problema viene cuando intentamos replicar un *layout* o diseño complejo ayudándonos de una librería que, en sus propias palabras, *The primary focus is not on generating perfect printable webpages but to use HTML and CSS as commonly known tools to generate PDF files within Applications.*

Por otro lado, la convivencia de fórmulas en LaTeX con el flujo de texto normal ha representado también 

Sabiendo que el resultado intermedio es una HTML, uno puede pensar que tiene un margen de edición antes de generar el PDF final. El problema viene cuando te enfrentas a un HTML que, con el objetivo de representar el complejo diseño anterior, está construido en base a tablas y tablas. 


* Creación de plantillas en LaTeX
* Edición del LaTeX directamente
* Integración completa de gráficos, fórmulas y flujo de texto
* 

Tenemos dos vías para llegar a LaTeX:

1. De la sintaxi dokuwiki a HTML y de HTML a LaTeX vías Pandoc.
2. De la sintaxi dokuwiki a LaTeX.

La primera vía representa una evolución de la actual situación. Cambiamos Pisa por Pandoc. 

La segunda correspondería a una conversión directa de la sintaxi dokuwiki a LaTeX. Esto representaría:

* Un exportador de la sintaxi dokuwiki a LaTeX. Incluye la dificultad de convertir la sintaxi de las tablas a LaTex, que no es un tema trivial. 
* Incluir la sintaxi propia del diseño de impresión a LaTeX
* Incluir a cada plugin su correspondiente traducción a LaTeX
* Crear el layout en LaTeX del diseño, incorporando nuevos elementos?



Problemas:

* Exportar la sintaxi de las tablas de la dokuwiki a LaTeX
* 
