@echo off
:inicio
cls
echo Bienvenido alTrabajo Práctico Integrador de Batch!
echo 1. Sumar
echo 2. Restar
echo 3. Multiplicar
echo 4. Contar con for
echo 5. Salir

set /p opcion=Opción elegida:  


IF %opcion% == 1 (
set /p numero=ingresá tu nombre:
echo %numero%
pause
)

@REM if %opcion% == 1 (
@REM     set /p num1=primero
@REM     set /p num2=segundo
@REM     set /a resultado=%num1% + %num2%
@REM     echo el resultado es %resultado%
@REM ) 

pause

@REM else if "%opcion%" == "2" (
@REM     set /p num1 = "Ahora elegi el primer numero: "
@REM     set /p num2 = "Ahora elegi el segundo numero: "
@REM     set /a resultado=num1-num2
@REM     echo el resultado es %resultado%
@REM ) else if "%opcion%" == "3" (
@REM     set /p num1 = "Ahora elegi el primer numero: "
@REM     set /p num2 = "Ahora elegi el segundo numero: "
@REM     set /a resultado=num1-num2
@REM     echo el resultado es %resultado%
@REM )