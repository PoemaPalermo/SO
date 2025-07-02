@echo off
:inicio
cls
echo Bienvenido al Quiz!
set /p respuesta1="Pregunta 1: ¿Cuánto es 2+2? "
if "%respuesta1%"=="4" (
    set /p respuesta2="Pregunta 2: ¿Cuánto es 5-3? "
    if "%respuesta2%"=="2" (
        set /p respuesta3="Pregunta 3: ¿Cuánto es 2*8? "
        if "%respuesta3%"=="16" (
            echo Lo lograste!
            pause
            exit
        ) else (
            echo Respuesta incorrecta. Intenta de nuevo.
        )
    ) else (
        echo Respuesta incorrecta. Intenta de nuevo.
    )
) else (
    echo Respuesta incorrecta. Intenta de nuevo.
)
goto inicio