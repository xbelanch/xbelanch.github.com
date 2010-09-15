---
layout: post
title: Rediseñando
---

{{ page.title }}
================

{{ page.date | date: "%d/%m/%Y"}} &ndash; Barcelona


![La pissarra màgica](/images/posts/pissarra.jpeg "La pissarra màgica")

Hará unos meses que [Albert](http://twitter.com/albertgasset) y yo comentamos delante de la pizarra blanca, detrás de nuestros despachos, cuál podría ser la evolucíón de la [wiki](https://ioclabs.xtec.cat/doku/index) del [IOC](http://ioc.xtec.cat/educacio/). En aquel momento, poco antes de enviar los primeros materiales a imprenta generados por la wiki, intercambiamos opiniones sobre esto y aquello que había funcionado bien, regular y mal. Coincidimos que no todo lo malo se debía a la wiki. Es decir, si todo cambio tecnológico dentro de una organización lleva consigo un índice elevado de desconfianza y resistencia (recomiendo la lectura [Driving Technical Change: Why People On Your Team Don't Act On Good Ideas, and How to Convince Them They Should](http://pragprog.com/titles/trevan/driving-technical-change)), los errores que puedan derivarse de su evolución a lo largo del tiempo no serán exclusivamente errores del sistema (corregibles en gran medida, si el diseño inicial del sistema es suficientemente flexible). En mi opinión hay cinco factores que ayudan a que un sistema se vuelva en contra de sus promotores y fortalezcan, todavía más, los argumentos de sus detractores

* **Diseño rígido**. Es quizá uno de los errores más graves que podemos cometer en el momento de definir cómo será la nueva tecnología. En general, pensamos más en un *producto cerrado que mira mucho al pasado, poco al presente y nada al futuro*. Es fácil acabar, al poco tiempo, en un frente de contradicciones cuando  se ha determinado una estructura rígida, es decir, se ha copiado literalmente una necesidad actual y no se ha pensado en futuros cambios, mejoras o actualizaciones que, en muchos de los casos, comprometen la funcionalidad general del sistema.
* **Formación**. Una tecnología que reemplaza a otra tendrá que pasar por la manos de aquellos que la utilizaran *obligatoriamente* y, por lo tanto, serán los primeros en informar de los errores, preguntar en cómo traducir la metogología de trabajo anterior al nuevo sistema y un largo etcétera de dudas que deberán ser solucionadas de manera *immediata y rápida*. La formación tradicional, en estos procesos de transición de un sistema actual o otro diferente, no funcionan. Todo lo contrario, desinforman al situar a todos los participantes en una horizontalidad absurda. 
* **Falta de recursos humanos**. Una transición de un sistema actual a otro nuevo y diferente, poco probado y, lógicamente, con incidencias de todo tipo a la vuelta de la esquina, no puede descansar, a lo sumo, en dos personas o, en el peor de los escenarios posibles, en una y que, además, tenga otros frentes abiertos. Todo el ímpetu inicial en la promoción del nuevo sistema desaparece cuando este sale del laboratorio y entra en contacto con los usuarios. No olvido otro atenuante que adquiere tintes de cinismo cuando la ayuda viene de terceros poco o nada cualificados (*¿wiki-qué?*) o nada asertivos con los sufridos usuarios del sistema.
* **Desinformación**. 
* **Descoordinación** de los diferentes actores implicados en el nuevo sistema. O cómo una tecnología de uso colectivo va en contra de la filosofía de *Juan Palomo* (yo me lo guiso, yo me lo como).
* *Unit testing* (no me refiero a utilizar cobayas humanas) simplemente a seguir el ejemplo de probar situaciones similares a la de los documentos de referencia con el fin de predecir, en la medida de lo posible, el resultado final.

 wiki nació hace exactamente un año de la mano de [Scopia](http://www.scopia.es/es/component/content/article/14-servicio-wikis/7-wikis-corporativos). Yo no estuve presente en la gestación ni en las reuniones que definieron la primera versión del que sería el entorno de edición del IOC. En aquel momento parecía que sólo iba a tener una presencia residual y que sólo afectaría a una pequeña parte de la producción de libros de texto de Ciclos Formativos. No ha estado así. Todo lo contrario, la wiki se introdujo con calzador en la producción de nuevos libros de texto que antes gestionaba una empresa externa. No es este el momento de hacer valoraciones de lo que ha supuesto incorporar un volumen de trabajo superior a los pocos recursos humanos destinados a una transición *traumática* (todavía no conozco ninguna transición que afecte a mucha gente y que no sea *traumática*) de un modelo *word-centric* (los autores trabajan directamente sobre una plantilla en MS Word), *opaco* (una vez entregado el documento Word, la autoría perdía de vista el desarrollo de producción) y, por qué no decirlo, *cómodo* (la empresa externa se encarga de, literalmente, todo) a un entorno *wiki-centric*, que vive en las antípodas de la metodología de trabajo con editores visuales de escritorio; que es transparente en cuanto a que todo el proceso de creación está registrado  . Lo que sí conviene decir es que la experiencia nos ha servido, como mínimo, de guía en todo lo que se refiere a no cometer los errores del primer diseño.

La wiki del IOC, en términos técnicos, está basada en [Dokuwiki](http://www.dokuwiki.org/dokuwiki), una wiki simple, pero no menos potente, destinada a la gestión de contenidos de pequeñas organizaciones. A diferencia de otras wikis y gestores de contenidos, Dokuwiki almacena la información en archivos de texto plano. Esta característica, que en un primer momento parece un *retroceso*, contribuye a un tratamiento enormemente versátil de la información. Cada página de la wiki corresponde a un fichero de texto; cada *namespace* a un directorio o carpeta. La creación y edición de una de estas páginas se realiza desde la propia web de la wiki a través de un simple editor de texto en crudo, sin formato. La diferencia importante entre una instalación básica de la Dokuwiki y la Dokuwiki del IOC es doble y, por extensión, compleja: una ampliación de las marcas de la wiki que copien diferentes estilos de edición anterior y una herramienta externa de importación/exportación a dos formatos, uno de impresión \-PDF\- y otro como página web \-HTML\-. Estas modificaciones han tenido como propósito emular, en lo posible, el procedimiento anterior de edición y lejos de parecérsele. En general, el procedimiento anterior de edición establecía una secuencia *en serie* y fuertemente *segmentada* de la creación de materiales, desde el principio hasta el final. El trabajo de autoría se desarrollaba íntegramente en MS Word, al cual se le añadía una extensión que cubriera las particularidades del estilo de texto. Una vez terminado los diferentes procesos de revisión entre autoría y edición, el documento pasaba a otro estadio, el de la maquetación del documento que, finalmente, irá a imprenta. Este procedimiento presentaba una ventaja importante: la creación y la edición se realizaban en un entorno familiar tanto para autoría como los diferentes actores de edición (correctores linguísticos, científicos, etc.). Pero también presentaba claras insuficiencias, de las cuales destacaría las siguientes:

* ¿Qué ocurría si la autoría trabajaba en un entorno diferente al que exige edición? Pongamos por caso que la autoría trabaja en un SO como GNU/Linux en el que es imposible la instalación del entorno de edición, MS Word. 
* La seguridad e integridad de los documentos es responsabilidad de autoría.
* Es una metodología de trabajo de *escasa movilidad*, sujeta a un dispositivo de trabajo. Si queremos trabajar en otros dispositivos, es necesario reproducir de nuevo el mismo entorno de trabajo.
* La gestión y organización de los archivos está fuertemente sujeto a una comunicación mediante el cliente de correo ya que, el uso de un gestor de proyectos o documentación representaría un trabajo añadido a autoría.
* No queda constancia de ningún histórico del proceso de trabajo.

La wiki corrige estas limitaciones. Proporciona un entorno único de edición independiente del sistema operativo o dispositivo de acceso que utilice tanto autoría como edición; la integridad y seguridad de la información corresponde al servidor que la centraliza y que, a diferencia de autoría, realiza copias de seguridad diarias y, ligado a esto último, sí consta un registro o histórico del proceso de trabajo.

Pero la wiki tampoco es una solución ahora mismo óptima en varios frentes. Y aquí entra la necesidad y la importancia de rediseñar lo que ahora mismo tenemos. En realidad, lo que viene a continuación es, en mi opinión, una manera de mostrar las carencias actuales pero desde la óptica de la solución, no del problema. 

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






