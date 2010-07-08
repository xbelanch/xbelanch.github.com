---
layout: post
title: La tipografía web como servicio
---


{{ page.title }}
================

{{ page.date | date: "%d/%m/%Y"}} &ndash; Barcelona

## La tipografía juega un rol de gran importancia en la definición del diseño de una web. Una elección equivocada de la tipografía arruina el mejor diseño y, por el contrario, una tipografía acertada encubre sin problemas defectos de composición o de una paleta de colores poco armónica. 

La tipografía web ha estado un verdadero campo de batalla donde los diseñadores web reclamaban un imposible: equiparar las condiciones entre el diseño sobre papel y el diseño web. Si no había límites de elegir una tipografía en la realización de un libro, revista o *fly*, una página web tampoco iba a ser distinto. Pero la naturaleza heterogénea de la web en la que proliferan diferentes navegadores, diferentes dispositivos, diferentes sistemas operativos y diferentes pantallas dibuja un escenario complejo y completamente distinto al del papel. En comparación, la tipografía web está todavía en una fase embrionaria si la comparamos con su hermana impresa. Algunas de las reglas que rigen la tipografía en papel no funcionan en absoluto en la web. Pero estas limitaciones no suponen un deterioro del arte tipográfico. Todo lo contrario, la evolución de la tipografía será adaptarse con la mayor celeridad a un medio que, al contrario de sus predecesores, no descansa en reinventarse en ciclos de tiempo muy cortos.


>Until now, using any typefaces beyond those installed with computer operating systems by default meant using images, Flash, or some other workaround. But browser makers have put the ball in our court by implementing the @font-face CSS property, which allows designers to link to any font file and pull it into their pages. 
> 
>Jason Santa Maria, [On Web Typography](http://www.alistapart.com/articles/on-web-typography/)

Para entendernos: el sueño de un diseñador web es elegir un tipo de fuente y que ésta se vea sin problemas de definición y de legibilidad en todos los dispositivos, navegadores y pantallas del mundo mundial. Pero como éste no es un mundo perfecto, la tipografía web ha recorrido un angosto camino de dificultades:

* No todos los sistemas operativos (GNU/Linux, Apple Snow Leopard o Microsoft Windows son un ejemplo) tienen instaladas las mismas fuentes. En primer lugar tenemos un problema de *copyright*: no todos los tipos de fuentes son libres en cuanto a distribución y uso. No es, por lo tanto, extraño que existan proyectos como [Liberation Fonts](https://www.redhat.com/promo/fonts/) que tengan como objetivo ofrecer una alternativa real a fuentes propietarias como la Arial, Helvetica, Times New Roman o Courier. En segundo lugar, el conjunto de fuentes que viene por defecto en un sistema operativo es limitado (no supera más de la cincuentena). Luego es arriesgado utilizar un tipo de fuente *exótica* en un diseño web ya que es muy probable que los usuarios no dispongan de la fuente instalada en su sistema operativo. El navegador suple la carencia por otro tipo de fuente que comparta la misma *familia* de la fuente que hemos elegido, lo que acaba por corromper completamente el diseño original.
* El escenario anterior ayudó a la proliferación de páginas web realizadas enteramente en Flash. La tecnología Flash permitía incrustar cualquier tipo de fuente y verse sin problemas en cualquier navegador (siempre que tuviera instalado el *plugin* de Flash). Esta solución representó, en muy poco tiempo, un problema mayor: ninguna de las webs realizadas enteramente en Flash eran indexadas por los buscadores, especialmente por Google. Aparte de ser costosas de mantener y actualizar, el respaldo a los estándares y accesibilidad de la web, las páginas web realizadas en Flash como solución integral quedaban completamente aparcadas. Pero no del todo...
* ...porque aún quedaba latente la necesidad de los diseñadores de controlar los tipos de fuentes en sus diseños web, especialmente si ven limitadas sus aspiraciones a un estrecho margen de tipos, las conocidas por *Core Web Fonts*, unas diez fuentes que fueron diseñadas en la década de 1990 como un paquete de fuentes *seguras* para la web. Utilizarlas suponía asegurarse la representación correcta del tipo de fuente. Estas fuentes, como la Arial, la Times New Roman o la denostada Comic Sans, estaban instaladas en la mayoría de ordenadores a principios del 2000. 
* La solución pasaba por la declaración en la hoja de estilos (CSS) de una pila de fuentes (*CSS Font Stacks*). Una pila de fuentes es, en realidad, una lista de tipos de fuentes ordenadas por prioridad del diseño. La siguiente declaración

  ``h1 {font-family: Impact, Arial Black, sans-serif; }``

  indica que todas las cabeceras de primer nivel de la página web están pensadas para el tipo de fuente **Impact**. Si el navegador no localiza esta fuente en el sistema operativo pasa a buscar la segunda, la Arial Black. Por último, si no es posible esta segunda opción, el navegador buscará una tipo que pertenezca a la familia de las *sans serif*.
* Lo anterior contenía un riesgo, tal como señaló Nathan Ford en su artículo [Better CSS Font Stacks](http://unitinteractive.com/blog/2008/06/26/better-css-font-stacks/): *When creating a stack, first consider the context of the text. Is it going to be a headline, sub-head, or body copy?*. Las pilas de fuentes están bien, pero son insuficientes y ciegas. Algunos tipos de fuentes funcionan mejor como títulos, otras para el cuerpo del texto de lectura. Nathan recomendaba la siguiente convención en el momento de declarar una pila de fuentes:
	
 ``font-family: Ideal, Alternative, Common, Generic;``

  No es una solución, sino una prevención basada en la experiencia y así evitar sobresaltos de diseño tipográfico en la web. Pero también es una constatación de cómo las pilas de fuentes tampoco dan una respuesta convincente. El mismo Nathan denuncia la penosa situación en [Why is the web great for everything except fonts?](http://unitinteractive.com/blog/2009/04/22/why-is-the-web-great-for-everything-except-fonts/): *I don’t want it to render as an image and I don’t want to have to adjust and readjust my CSS to accommodate the buggy results. I don’t want to have to worry about line breaks or dimension or anything else that is non-contextual. I just want text to behave like text. Period.*
* En el lamento de Nathan encontramos una de las marranadas más utilizadas en la web para superar la barrera de las fuentes seguras o de las pilas de fuentes declaradas en la hoja de estilo: las técnicas se reemplazo de texto (*Text Replacament Techniques*). Los inicios de estas técnicas de reemplazo de texto por imágenes o por objetos Flash se remontan a mediados del 2003. Técnicas como la FIR ([Fahrner Image Replacement](http://stopdesign.com/archive/2003/03/07/replace-text.html)) u otras más sofisticadas venían a ayudar a los diseñadores exigentes con el uso de tipos, de controlar el cuerpo, el *kerning* y el *tracking* de la fuente elegida, pero sin olvidar la cuestión de la accesibilidad de la información. Diseño visual sí, pero siempre que la página web se lea sin problemas en un navegador como [Lynx](http://es.wikipedia.org/wiki/Lynx_%28navegador%29), verdadera prueba de fuego de control de accesibilidad.
* Las técnicas de reemplazo del texto son, en realidad, un apaño que demuestra la pobreza de la tipografía a la web. El ingenio de los diseñadores web por un lado y la falta de una respuesta que diera por finalizada la absurda carrera de parches y arreglos. La aparición del atributo ''@font-face'' del módulo de CSS3 dedicado a la tipografía web parecía ser la solución a tanta fontanería desigual.

El problema de las fuentes en la web era simple y, hasta momento, irresoluble: la tipografia variaba según la elección de las fuentes, bla, bla

Aún así, esto no satisfacía el deseo de verlo (recuerda artículo ListAPart sobre técnicas SFIR) las fuentes y el remedio fue infinitamente peor que la limitación: se intentaba jugar con imágenes, pero se reducía la accesibilidad; se intentó por medio de objetos Flash, pero resultaba excesivamente complicado e intrusivo. Incrustrar las fuentes de las maneras anteriores era un método costoso: el hacer la fuentes en Flash es comparado a matar pulgas a cañonazos o, en el peor de los escenarios, utilizar librerías del lado del servidor que generarse las imágenes de las tipografías. La solución posible tenía que venir de la mano del uso exclusivo del CSS. Y apareció el atributo ``@font-face``, incorporado en las recomendaciones del módulo CSS 3 Web Fonts.

## ¿Cómo funciona el atributo @font-face? 

Incrustar una fuente en una página web es tan simple como realizar una declaración de la fuente que queremos utilizar y, posteriormente, su aplicación. Veamos un ejemplo:

Declaramos la fuente elegida

	@font-face {
		font-family: LaFuenteElegida;
		src: url('fonts/la_fuente_elegida.otf') format ("opentype");
		font-weight: bold;
	}

y, a continuación, aplicamos la fuente elegida a todas las cabeceras de primer nivel:

	h1 {
		font-family: LaFuenteElegida, Arial, sans-serif;
	}


Si el navegador no soporta el atributo ``@font-face``, no cargará en memoria la fuente elegida y procederá a utilizar la segunda fuente declarada en la pila (Arial).

Se ha de tener en cuenta la licencia de la fuente. Utilizarla significa  distribuirla (subimos la fuente al servidor, accesible para el navegador y para quienes visiten la página) y, por lo tanto, en función de la licencia de la fuente (¿permite la licencia un uso comercial?, ¿permite la licencia la distribución de la fuente a terceros? ), podríamos incurrir a un uso ilegal de aquella.

## Y aquí entra el servicio...

Del problema legal anterior surge la alternativa de *enlazar* fuentes gracias a servicios como [TypeKit](http://typekit.com/), [FontDeck](http://fontdeck.com/), [Typotheque](http://www.typotheque.com/news/typotheque_launches_its_web_fonts_service) o [Kernest](http://kernest.com/). Estos servicios trazan un nuevo escenario donde los diseñadores web pueden utilizar sin problemas legales fuentes propietarias y, cómo no, los diseñadores de tipos pueden hacer algo de dinero. Por el contrario, en un gesto *menos comercial*, tenéis el servicio [Google Fonts](http://code.google.com/webfonts). El directorio de fuentes de Google es, en realidad, otro servicio de enlazar fuentes bajo licencia *open source*. Como siempre, la garantía de los servidores Google es uno de sus puntos fuertes como la excelente documentación técnica.

## pero también nuevos retos!

Especialmente si, gracias a la libertad de usar cualquier fuente en nuestros diseños, superamos definitivamente las limitaciones de las fuentes seguras y pensamos en otras dificultades, de las que hablaremos más adelante:

>And as we know, with great power comes great responsibility. Just because you can use the font that looks like it’s wearing bellbottoms, doesn't mean you should. 
> 
>Jason Santa Maria, [On Web Typography](http://www.alistapart.com/articles/on-web-typography/)