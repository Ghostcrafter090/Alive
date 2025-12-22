set flag1=%*
if not "$%~1"=="$--skipBuild" (
    if not "$%flag1%"=="$" (
        py build.py --build %flag1%
    ) else (
        py build.py --build
    )
)

py release.py --release