param(
    [string]$color
)

# Convert HEX (RRGGBB) to decimal RGB
$R = [Convert]::ToInt32($color.Substring(0,2),16)
$G = [Convert]::ToInt32($color.Substring(2,2),16)
$B = [Convert]::ToInt32($color.Substring(4,2),16)

# Path to CLI
$cli = "$env:LOCALAPPDATA\AlienFX Tools\alienfx-cli.exe"

# Send color to entire device
& $cli "setall=$R,$G,$B"
