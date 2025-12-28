set doEverything=%~1

if "$%doEverything%"=="$--everything" (
    py compile.py --compile --everything
) else (
   py compile.py --compile
)