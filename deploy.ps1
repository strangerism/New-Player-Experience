

$dest = "D:\games\GAMMA\GAMMA RC3\mods\New Player Experience"

Copy-Item -Path ".\Main\gamedata", ".\Module\gamedata", ".\Examples\NPE Codec\gamedata", ".\Examples\NPE Examples\gamedata" -Destination $dest -Exclude .gitignore, .bak -Force -Recurse