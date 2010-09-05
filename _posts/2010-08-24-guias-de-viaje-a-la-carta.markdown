---
layout: post
title: Guías de viaje a la carta
---

{{ page.title }}
================

{{ page.date | date: "%d/%m/%Y"}} &ndash; Barcelona

Recientemente realicé con mi pareja un periplo por algunas de las ciudades y municipios de la región del [Véneto](http://es.wikipedia.org/wiki/V%C3%A9neto) y [Lombardía](http://es.wikipedia.org/wiki/Lombard%C3%ADa). Como era un viaje profundamente cultural y gastronómico, decidí recopilar la información que había disponible en la red en lugar de dirigirme a la primera librería y buscar la guía que mejor se adaptara a la ruta elegida. Desde la Wikipedia hasta las opiniones de otros turistas que pasaron por los mismos lugares y sintieron el prurito de compartir la experiencia, amén de las fotos, fui elaborando la secuencia del viaje. La consulta a las páginas oficiales de transporte de ferrocarriles de Italia me proporcionaba los horarios que necesitaba y que nos ayudarían a planificar mejor las idas y venidas. La Wikipedia y otras páginas de información cultural y artística nos regalaban información de interés de las obras que visitaríamos. Las opiniones de los viajeros nos darían pistas de restaurantes, locales, eventos, rutas de interés que, aunque no sea una información infalible, en algunos momentos del viaje resultó ser de gran ayuda.

Después de varios días recogiendo y agrupando la información acabé la guía. Todo el texto que seleccioné y añadí a la guía lo estructuré bajo el lenguaje de marcas [Markdown](http://xbeta.org/wiki/show/Markdown#syntax) con la idea en la cabeza de publicar una *trip e-guide*, es decir, nada de llevar una guía impresa \-lo mínimo\-. A todo esto coincidió la publicación de este artículo [HOW TO: Self-Publish Anything Online](http://mashable.com/2010/08/05/self-publish-anything/) en [Mashable](http://mashable.com) y el descubrimiento de [sicp-kindle](http://github.com/twcamper/sicp-kindle), un proyecto personal en el que autor ha reestructurado el libro *Structure and Interpretation of Computer Programs, 2nd Edition, by Harold Abelson and Gerald Jay Sussman with Julie Sussman, The MIT Press* en, cómo no, Markdown y creado un archivo **mobi** para ser leído en el Kindle de Amazon. Esto último me llevó a la página oficial del [Amazon Kindle's Publishing Program](http://www.amazon.com/gp/feature.html?docId=1000234621) y descargar la aplicación KindleGen v1.1 y Kindle Previewer 1.0. Como podéis leer bajo el apartado de *Download KindleGen v1.1*

>This tool is best for publishers and individuals who are familiar with HTML and want to convert their HTML, XHTML, XML (OPF/IDPF format), or ePub source into a Kindle Book.

Es decir, la meta de todo esto era, sencillamente, disponer de la ayuda y herramientas necesarias para transformar la guía que había elaborado a partir de muchos retales en un *ebook*. En lugar de comprar una guía impresa general de Italia (ya que ninguna se ajusta a los itinerarios de todo el mundo excepto si eliges como destino una gran ciudad) y arrastrarla durante el viaje, llevaría la *e-guía* en el Kindle. Esto tendría, a mi parecer, unas cuantas ventajas respecto a la guía tradicional en papel:

* **Personalización frente a la generalización**. Al margen de la fiabilidad de los contenidos, el corpus de la guía está enteramente realizada en relación al viaje, no a los *otros* viajes que pueda realizar más adelante. Comprar una guía de viaje de Italia porque no encuentro nada más específico significa utilizarla en un 15% como mucho. 
* **Usabilidad**. Las guías de viaje tradicionales acostumbran a ser pesadas (especialmente las genéricas de países), con un cuerpo de letra pequeño y una maquetación que, personalmente, marea (esa mezcla caótica de imágenes, texto y colorido).
* **Liviandad**. Aparte de la guía de viaje, gracias al *eReader* puedo llevar otras lecturas complementarias como, por ejemplo, obras de escritores, ensayistas o periodistas que han escrito sobre la zona que estás viajando. Si estoy en Florencia, ¿por qué no iba a tener a mano la obra de Stendhal, *Roma, Nápoles y Florencia* y disfrutar de las sensaciones \-y síndromes\- *in situ* del autor francés? 
* **Serendipidad**. Mediante el Kindle y otros eReaders con disponibilidad de WiFi es posible consultar información sobre la marcha. Un ejemplo: en dirección de Padova a Mantova y hablando de una posible excursión al [Lago de Garda](http://es.wikipedia.org/wiki/Lago_de_Garda), surgió el nombre de [Saló](http://es.wikipedia.org/wiki/Sal%C3%B3) y su historia como capital de la [República Social Italiana](http://es.wikipedia.org/wiki/Rep%C3%BAblica_Social_Italiana)
* **Usabilidad**. Buscar, navegar y recuperar información por la *e-guía* resulta más cómodo, rápido e inmediato que los índices de contenidos de las tradicionales.
* **[#cultofless](http://twitter.com/#search?q=cultofless)**. Un libro menos en la estantería que, al poco tiempo, sólo ocupa espacio.


De la teoría a la práctica
--------------------------

Recopilada la información en diferentes archivos (dia1.markdown, dia2.markdown,...), lo que llevó un poco de trabajo fue retocar el *script* que transformaba los archivos markdown en la estructura que exige la aplicación *kindlegen* para generar correctamente el ebook. El *script* está desarrollado en Ruby y necesita algunas librerías (*gemas*) para su funcionamiento:

* [maruku](http://maruku.rubyforge.org/) es la responsable de interpretar y transformar el lenguaje de marcas de Markdown a HTML. 
* [nokogiri](http://nokogiri.org/) es un *parser* de HTML, XML, SAX vía XPath o los selectores CSS3 con el fin de poder modificar o extraer información limpiamente de los documentos HTML. Esta *gema* resulta enormemente útil si, por ejemplo, queremos generar una tabla de contenidos de la guía (extraemos las secciones y subsecciones de cada página).
* [htmlentities](http://htmlentities.rubyforge.org/) es la última *gema* que tiene por finalidad realizar el *encoding* de las *entities* de los documentos HTML. Esto es más que importante ya que, de lo contrario, acentos, diéresis y otros caracteres no aparecerán correctamente en el Kindle.

El resultado final lo podéis descargar [aquí](/lectures/Guia.mobi). Si no tenéis un Kindle a mano podéis utilizar el visualizador de Kindle o, en caso que tengáis un eReader diferente al de Amazon, utilizad [Calibre](http://calibre-ebook.com/) o el [Conversor universal](http://www.online-convert.com/) para obtener un ePub.

Servicios de e-guías a la carta
-------------------------------

Durante el viaje comprobé la efectividad de llevar la guía como ebook en un ereader como el iPad (y más adelante, cualquier futuro *tablet*) como alternativa al portátil de viaje. Las guías de viaje digitales podrían representar un papel importante en la adopción general de los e-readers. Creo que ha estado, en cierta manera, un error vender el ereader como un dispositivo de *sólo* libros de lectura (vale, ya tengo 1000 libros en el e-reader, pero he de leerlos!) sin pensar en las posibilidades de la *flexibilidad* que proporciona el dispositivo de lectura digital. Con esto me refiero a la oportunidad comercial de la creación y venta de guías a la carta. Un servicio web en el que definas tu propia *guía de viaje* según las ciudades que visites, tus intereses personales (cultural, ocio, gastronomía, comercial, fotográfico, descanso,...) o económicos. La creación de la guía sería un *mashup* de información objetiva, opiniones, consejos, etc. de la propia red. 

El precio de cada guía variaría en función de la información que demanda. Pero los precios no deberían nunca equipararse con el de las guías de papel (sería un absurdo). Un ejemplo: no es lo mismo la información turística de Barcelona que la de otro municipio menor en dimensiones o en complejidad turística. Incluso en ciudades grandes se podrían seleccionar zonas o barrios. El usuario pagaría por aquello que cree que le puede servir de ayuda durante el viaje. El servicio le proporcionaría el *e-guide* con un solo clic.

Por último, y que ya lo he comentado más arriba, la creación a la carta de las guías de viajes vendría acompañada de un sistema de *sugerencias* o *lecturas de viaje recomendadas*. Es una idea muy simple: alrededor de la personalización de la guía de viaje giran las recomendaciones, lecturas complementarias (y por lo tanto, promoción y venta de libros digitales), publicidad, incluso guías semi-profesionales creadas a partir de la experiencia de otros viajeros (un sistema similar al de [Flattr](http://flattr.com/), por ejemplo). Pero claro está que nadie es profeta en su tierra...

![me like ghandi](/images/posts/me-ghandi.jpeg "Me like Ghandi")

