param(
    [int]$r,
    [int]$g,
    [int]$b
)

$cli = "C:\Users\drcha\AppData\Local\AlienFX Tools\alienfx-cli.exe"

$hex = "{0:X2}{1:X2}{2:X2}" -f $r,$g,$b

& $cli light -z 0 -c $hex
& $cli light -z 1 -c $hex
& $cli light -z 2 -c $hex
& $cli light -z 3 -c $hex
