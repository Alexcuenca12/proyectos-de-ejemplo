
# mruby howto

Enlace de interés:
* [mruby-examples](https://github.com/rmosolgo/mruby-examples/blob/master/readme.md)
* http://mruby.org/
* [GitHub de mruby](https://github.com/mruby/mruby)
* [Executing Ruby code with mruby](http://mruby.org/docs/articles/executing-ruby-code-with-mruby.html)
* [How to compile an mruby example? - Stack Overflow](https://stackoverflow.com/questions/19329146/how-to-compile-an-mruby-example)
* [RubyConf 2019 - mruby/c](https://youtu.be/1VFPSHs3WvI): Running on Less Than 64KB RAM Microcontroller by HAMUSI Hitoshi I will show you an actual IoT product which uses one-chip-microcontr...

# Ejemplo 1

* `rbenv install mruby-2.1.0`, instalar **mruby** usando **rbenv**.
* `mrbc demo.rb`, compilar el ejemplo **demo.rb**.
* `ruby -b demo.mrb`, ejecutar **demo.mrb**.

# ANEXO: Instalación directa de mruby

* Descargar el zip estable.
* Descomprimir.
* cd FOLDER
* `./minirake`, compile inside of the mruby source root.
* `./minirake test`, generate and execute the test tools.
* `./minirake clean`, clean all build files.

## Proyectos con mruby

* MRuby::CLI (http://mruby-cli.org/): A utility for setting up a CLI with mruby that compiles binaries to Linux, OS X, and Windows.
* https://github.com/dabroz/mruby-simple-game-engine: This project is based on a talk I gave at Game Industry Conference 2016 in Poznań titled "Why (m)ruby should be your next scripting language?". This project implements a very basic component-based game engine. The backend is written in C++ and uses SFML for rendering. All game logic is in mruby scripts.
* https://github.com/ruby-rcade/mruby-game-engine-example

