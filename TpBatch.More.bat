@echo off
setlocal enabledelayedexpansion
cls

:inicio
echo.
echo Bienvenido
echo --- MENU ---
echo 1. Sumar
echo 2. Restar
echo 3. Multiplicar
echo 4. Contar
echo 5. Salir
set /p opcion=Elija una opcion (1-5):
echo.


if "%opcion%"=="1" goto opcion_1
if "%opcion%"=="2" goto opcion_2
if "%opcion%"=="3" goto opcion_3
if "%opcion%"=="4" goto opcion_4
if "%opcion%"=="5" exit

:opcion_1
echo Genial ahora elija dos numeros:
set /p num1="Ingrese el primer numero: "
set /p num2="Ingrese el segundo numero: "
set /a resultado=%num1%+%num2%
echo El resultado de la suma es: %resultado%
goto inicio

:opcion_2
echo Genial ahora elija dos numeros:
set /p num1="Ingrese el primer numero: "
set /p num2="Ingrese el segundo numero: "
set /a resultado=%num1%-%num2%
echo El resultado de la resta es: %resultado%
goto inicio

:opcion_3
echo Genial ahora elija dos numeros:
set /p num1="Ingrese el primer numero: "
set /p num2="Ingrese el segundo numero: "
set /a resultado= %num1%*%num2%
echo El resultado de la multiplicacion es: %resultado%
goto inicio

:opcion_4
set /p num1="Ingresa el numero menor: "
set /p num2="Ingresa el numero mayor: "
echo Contando:
for /L %%i in (%num1%,1,%num2%) DO echo resultado = %%i
goto inicio