set doEverything=%~1

if "$%doEverything%"=="$--everything" (
    py compile.py --run --everything
) else (
   py compile.py --run
)