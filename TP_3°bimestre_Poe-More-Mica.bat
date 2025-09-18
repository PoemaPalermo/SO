@echo off

setlocal EnableExtensions
setlocal EnableDelayedExpansion
chcp 65001
cls


:inicio_programa
:inicio_parte_1
:: Pide el nombre del proyecto y lo guarda en la variable nombre
set /p nombre=Nombre del proyecto: 

:: Guarda el nombre del directorio Proyecto_!nombre! (e.j. si !nombre! es TIC queda Proyecto_TIC\).
:: Conviene hacer esto para no estar escribiendo "Proyecto_!nombre!"\ todo el tiempo
set directorio="Proyecto_!nombre!"

:: Crea el directorio Proyecto_!nombre!, luego entra a él
mkdir "!directorio!"
cd "!directorio!"

:: Crea el archivo hola.txt en Proyecto_!nombre!\ y le escribe Bienevenido a mi proyecto !nombre!
echo Bienevenido a mi proyecto !nombre! > hola.txt

:: hola.txt en Proyecto_!nombre!\ y lo deja vacío
type nul > editable.txt

:: Crea la carpeta Textos
mkdir Textos

:: Crea doc1 a doc10.txt vacíos dentro de Textos
for /L %%i in (1, 1, 10) do (
    type nul > "Textos\doc%%i.txt"
)

:: Crea basura1 a basura5.txt vacíos dentro de Textos
for /L %%i in (1, 1, 5) do (
    type nul > "Textos\basura%%i.txt"
)

:: Crea el directorio Otros (vacío)
mkdir Otros

:: Muestra el contenido
echo Contenido de !cd!:
tree /f

:inicio_parte_2

::Se muestra en pantalla un menú de opciones
echo.
echo 1.Borrar carpeta seleccionada.
echo 2.Agregar texto seleccionado dentro del editable.txt
echo 3.Guardar Textos dentro de Otros
echo 4.Eliminar solo basura dentro de Textos.
echo 5.Salir del programa.
echo.

::El usuario debe elejir una opción
set /p input=Elija una opcion 
echo.

:: Si el usuario elije la opcióon 1, tiene que ingresar que carpeta quiere borrar y vuelve al menú de opciones
if !input! == 1 (
    set /p carpeta_a_borrar=¿Qué carpeta desea borrar? 
    rmdir /s /q !carpeta_a_borrar!
)

:: Si el usuario elije la opcióon 2, tiene que ingresar un texto quiere para agregar en editable.txt y vuelve al menú de opciones
if !input! == 2 (
    set /p texto=Ingrese un texto 
    echo !texto! >> editable.txt
)

:: Si el usuario elije la opcióon 3, se copian todos los archivos de Textos en Otros y vuelve al menú de opciones
if !input! == 3 (
    xcopy Textos Otros /e
)

:: Si el usuario elije la opcióon 4, se borran todos los archivos que se llamen "basura" en Otros y vuelve al menú de opciones
if !input! == 4 (
    del /s Textos\basura*
)

:: Luego de ejecutar la acción, se vuelve a mostrar el menú
goto inicio_parte_2

:: Si el usuario elije la opcion 5, se va al fin del programa
if !input! == 5 (
    goto fin_programa
)

:fin_parte_2
:fin_programa

endlocal

exit /b