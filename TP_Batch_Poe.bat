@echo off
:inicio
setlocal enabledelayedexpansion
cls

echo Bienvenido
echo --- MENU ---
echo 1. Sumar
echo 2. Restar
echo 3. Multiplicar
echo 4. Contar
echo 5. Salir
set /p opcion=Elija una opcion (1-5):

if "%opcion%"=="1"(
    echo Genial ahora elija dos numeros:
    set /p num1="Ingrese el primer número: "
    set /p num2="Ingrese el segundo número: "
    set /a resultado=num1+num2
    echo El resultado de la suma es: %resultado%
) else if "%opcion%"=="2" (
    echo Genial ahora elija dos numeros:
    set /p num1="Ingrese el primer número: "
    set /p num2="Ingrese el segundo número: "
    set /a resultado=num1-num2
    echo El resultado de la resta es: %resultado%
) else if "%opcion%"=="3" (
    echo Genial ahora elija dos numeros:
    set /p num1="Ingrese el primer número: "
    set /p num2="Ingrese el segundo número: "
    set /a resultado=num1*num2
    echo El resultado de la multiplicación es: %resultado%
) else if "%opcion%"=="4" (
    set /p num1="Ingresa el número menor: "
    set /p num2="Ingresa el número mayor: "
    echo Contando:
    for /l %i in (num1,1,num2) do @echo %i & timeout /t num2 >nul
) else if "%opcion%"=="5" (
    exit
) else (
    echo Opción no válida. Intente de nuevo.
)