---
layout: post
title: DokuVimKi
---

{{ page.title }}
================

{{ page.date | date: "%d/%m/%Y"}} &ndash; Barcelona

[DokuVimKi](http://www.chimeric.de/projects/dokuwiki/dokuvimki#installation) es un proyecto de [Michael Klier](http://www.chimeric.de/user/chi) que aúna la edición y resaltado de páginas de una Dokuwiki en [Vim](http://vim.org/) a través de la interfaz [XML-RPC](http://www.dokuwiki.org/wiki%3Axmlrpc). En otras palabras, ¿para qué seguir sufriendo las limitaciones del editor web de la Dokuwiki (y de la mayoría de wikis) si podemos trabajar con editores profesionales como es el Vim?



Integración nativa de Python (y Ruby!) de Vim en MacOSX
-------------------------------------------------------

Gracias a DokuVimKi descubro que la versión 7 de Vim ofrece la posibilidad de ejecutar comandos de Python en línea... y supongo que también este soporte se extiende a Ruby! En definitiva, una maravilla. ¿Qué significa en términos más mundanos? La mayor parte de mi trabajo consiste en navegar páginas y páginas de la Dokuwiki del trabajo reparando, corrigiendo, editando, etc. Hacerlo desde la web sería una tarea interminable y frustrante, pero no desde un editor como Vim.

El problema es que bajo MacOSX, el Vim que viene de fábrica no está compilado con integración de Python (o Ruby), luego no habrá más remedio que empezar de cero, es decir, compilar la fuentes de Vim con soporte para Python y Ruby.

He seguido los pasos que indica [Chris Moyer](http://blog.coredumped.org/2010/01/osx-vim-and-python.html)

1. Clonar el repositorio MacVim.git `git clone git://repo.or.cz/MacVim.git vim7`. Para más información, visita la página [Building MacVim from the Git repository](http://code.google.com/p/macvim/wiki/Building).
2. Configurar y compilar Vim con soporte de Python y Ruby: `cd vim7/src; ./configure --with-features=huge --enable-pythoninterp --enable-rubyinterp; make`
3. Si ha compilado Vim con éxito y sin errores, moveremos `MacVim.app`, localizado en `vim7/src/MacVim/build/Release`, al directorio de Aplicaciones de MacOSX.
4. Añadimos la siguiente línea `[ -x "/Applications/MacVim.app/Contents/MacOS/Vim" ] && alias vim=/Applications/MacVim.app/Contents/MacOS/Vim` al `shell rc` (en mi caso, como utilizo `bash`, corresponde a `.bashrc`).
5. Abrimos un nuevo terminal y ejecutamos el nuevo Vim (desde Bash) recién salido del horno: y bravo! Nos aparece el siguiente mensaje de error:

<code>
$ ./Vim 
Error detected while processing /Users/xbelanch/.vim/plugin/dokuvimki.vim:
line 1084:
DokuVimKi Error: The dokuwikixmlrpc python module is missing!
Press ENTER or type command to continue
</code>

Buena señal: Vim está buscando la librería que hará de puente entre Vim y la Dokuwiki, pero que todavía no hemos instalado. 

DokuWikiXMLRPC en MacOSX
------------------------

En teoría no debería representar ningún problema.

1. Clonamos el repositorio dokuwikixmlrpc.git `git clone http://github.com/chimeric/dokuwikixmlrpc.git`
2. Entramos en el directorio `dokuwikixmlrpc` y ejecutamos `python setup.py install`. Obtendremos un par de //warnings//, pero nada que impida una instalación correcta.
3. Ejecutamos de nuevo el Vim desde Bash y el mensaje de error anterior ha desaparecido. 


Editar la configuración de DokuVimKi
------------------------------------

Llegado hasta aquí sólo nos queda configurar las dos partes implicadas, Dokuwiki y DokuVimKi. 

En Dokuwiki activaremos la opción XMLRPC que encontraréis en el apartado de  configuración. En el caso de DokuVimKi sólo necesitará añadir unas cuantas líneas más al fichero `~/.vimrc`:

<code>
    " user name with which you want to login at the remote wiki
    let g:DokuVimKi_USER = 'username'

    " password
    let g:DokuVimKi_PASS = 'password'

    " url of the remote wiki (without trailing '/')
    let g:DokuVimKi_URL  = 'https://yourwikidomain.org'

    " width of the index window (optional, defaults to 30)
    let g:DokuVimKi_INDEX_WINWIDTH = 40

    " set a default summary for :w (optional, defaults to [xmlrpc dokuvimki edit])
    let g:DokuVimKi_DEFAULT_SUM = 'fancy default summary'
</code>

Guardaremos la configuración, abriremos Vim y escribiremos `:DokuVimki`. Al acceder a la Dokuwiki desde Vim nos encontraremos con la siguiente pantalla en la que, a la izquierda, se sitúa el árbol de navegación general y, en el área mayor, la ayuda de DokuVimKi.

Ya hemos entrado. Mirad la siguiente captura de pantalla:


Finalmente, ahora sólo es cuestión de familiarizarse con el nuevo entorno de edición. Más adelante intentaré integrar algunos de los scripts en Ruby que realicé en su momento para corregir y editar páginas de la Dokuwiki del trabajo (y que me han ahorrado mucho tiempo). En definitiva, felicidades para Michael Klier por su fantástico plugin que, en gran manera, corrobora una vez más la evolución de las wikis a una edición descentralizada: escriba felizmente desde su editor favorito y aléjese de la edición web, que sólo es sinónimo de frustración y limitaciones.º 







 