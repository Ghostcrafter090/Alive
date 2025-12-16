set doEverything=%~1

if "$%doEverything%"=="$--notEverything" (
    py build.py --run --notEverything
) else (
   py build.py --run
)

py release.py --run