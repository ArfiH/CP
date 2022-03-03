@echo off

if [%1]==[] (set /A numLoop = 100) else (set /A numLoop = %1)
if [%2]==[] (set /A doComp = 1) else (set /A doComp = %2)

if %doComp% equ 1 (
    echo Compiling solution, gen, brute...

    g++ -std=c++17 gen.cpp -o gen
    g++ -std=c++17 solution.cpp -o solution
    g++ -std=c++17 brute.cpp -o brute

    echo Done compiling.
)

set "diff_found="

for /l %%x in (1, 1, %numLoop%) do (
    echo %%x
    gen.exe > inputf.in
    solution.exe < inputf.in > outputf.in 
    brute.exe < inputf.in > outputf2.in

    rem add \f after "fc" to ignore trailing whitespaces and to convert
    rem multiple whitespaces into one space
    fc outputf.in outputf2.in > diagnostics
    if errorlevel 1 (
        set "diff_found=y"
        goto :break
    )
)

:break

if defined diff_found (
    echo A difference has been found.
    echo Input: 
    type inputf.in
    echo.
    echo.

    echo Output:
    type outputf.in
    echo.

    echo Expected:
    type outputf2.in
    echo.
) else (
    echo All tests passed :D
)
