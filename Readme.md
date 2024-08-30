# Instalación y Configuración de Neovim

Neovim es un editor de texto empleado en la terminal el cual es una evolución del editor vim el cual se caracteriza por su rendimiento y bajo consumo de recursos de maquina.

## Importante
Tener en cuenta que los pasos mostrados de instalación son para distros Linux basadas en Debian y dependiendo del gestor de paquetes de la distro empleada el comando puede cambiar, en cuyo caso se recomienda buscar información en los sitios oficiales o foros.

## Necesarios
Antes de clonar el repositorio es necesario tener lo siguiente instalado en el sistema.

1. Instalación de Lua
```bash
sudo apt install lua5.3 > o la mas reciente
```

2. Instalación de neovim
```bash
sudo apt install neovim
```

3. Instalación de git
```bash
sudo apt install git
```

4. Instalación de Packer
```bash
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

## Clonación del Repositorio
Clonar el repositorio en la siguiente ruta
```bash
git clone git@github.com:padermo/nvim.git ~/.config/
```

## Instalación de Plugins con Packer

Una vez clonado el repositorio ingresar en el archivo *init.lua* e instalar los plugins con Packer

1. Ingresar en init.lua
```bash
nvim init.lua
```

2. Una vez dentro del archivo y estando en modo normal teclear (:) seguido de PackerInstall seguido de (Enter)
```bash
:PackerInstall
```

## Instalación de Nerdfont
Las nerdfont son fuentes especializadas que integran una amplia gama de íconos directamente en la tipografía, el uso de este tipo de fuentes es para el plugin *nvim-tree/nvim-web-devicons* y poder tener iconos de los archivos dentro del editor.

1. Descargar Nerdfont: ir a la página [Nerd Fonts](https://www.nerdfonts.com/font-downloads) en la cual podras encontrar y descargar la fuente que gustes.

2. Estraer fuentes del archivo .zip en Downloads: vamos a crear una carpeta llamada fonts sobre la cual vamos a extraer el archivo .zip
```bash
mkdir fonts/ && unzip nerd_font.zip -d fonts/
```

3. Agregar fuentes .ttf al sistema: antes de agregar las fuentes en el sistema verificar si contamos con la carpeta fonts en la siguiente ruta
```bash
ls ~/.local/share

# En caso que no exista la carpeta fonts en dicha ruta
mv ~/Downloads/fonts/ ~/.local/share/

# En caso que la carpeta fonts exista en dicha ruta
mv ~/Downloads/fonts/*.ttf ~/.local/share/fonts/
```

4. Actualizar cache de fuentes
```bash
fc-cache -fv
```

5. Agregar fuente en la terminal: dependiendo del emulador de terminal que emplees puede cambiar la configuración pero un panorama general es en la siguiente ruta
```bash
# Estando en la terminal
Edit -> Profile Preferences -> General -> Fonts

# Luego seleccionar la fuente agregada, en caso que esta no se muestre pueden reiniciar el sistema
sudo reboot
```

## Manejo del Editor
Una vez instalado y configurado todo lo necesario para usar neovim, se recomienda ir al archivo *maps.lua* para revisar o reconfigurar la tecla Leader o demas atajos

```
nvim ~/.config/nvim/lua/padermo/maps.lua
```
