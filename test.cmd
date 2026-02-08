set flag1=%*

if not "$%flag1%"=="$" (
    py autoTest.py --runTest %flag1%
) else (
    py autoTest.py --runTest
)