param(
    [int]$r,
    [int]$g,
    [int]$b
)

$cli = "C:\Users\drcha\AppData\Local\AlienFX Tools\alienfx-cli.exe"

$hex = "{0:X2}{1:X2}{2:X2}" -f $r,$g,$b

# Aplica el color a las 4 zonas
& $cli setzone=0,$r,$g,$b
& $cli setzone=1,$r,$g,$b
& $cli setzone=2,$r,$g,$b
& $cli setzone=3,$r,$g,$b
