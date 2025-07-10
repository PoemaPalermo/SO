@echo off
:inicio
cls
echo Elige una opcion
echo 1.Sumar
echo 2.Restar
echo 3.Multiplicar
echo 4.Contar con for
echo 5.Salir

set /p opcion=Opcion elegida
if "%opcion%" == "1" (
    set /p num1=Primer numero: 
    set /p num2=Segundo numero: 
    set /a resultado=%num%$+%num2%
    echo El resultado es %resultado%
    pause
    goto inicio
) else if "%opcion%" == "2" (
    set /p num1=Primer numero: 
    set /p num2=Segundo numero: 
    set /a resultado=%num1%-%num2%
    echo El resultado es%resultado%
    pause
    goto inicio
) else if "%opcion%" == "3" (
    set /p num1=Primer numero: 
    set /p num2=Segundo numero: 
    set /a resultado=%num1%*%num2%
    echo El resultado es %resultado%
    pause
    goto inicio
) else if "%opcion%" == 4 (
    set /p num1=Primer numero: 
    set /p num2=Segundo numero: 
    FOR /L %%i IN (num1, 1, num2) DO echo Número: %%i
    pause
    goto inicio
)