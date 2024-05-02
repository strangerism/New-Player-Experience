

function CreateBuildFolders {
    
    New-Item -Path "build" -ItemType Directory | Out-Null

    New-Item -Path "build/NPE" -ItemType Directory | Out-Null
    
}

function BuildMod {

    $target = "build/NPE"
    Copy-Item -Recurse -Force -Path ".\fomod", ".\Main", ".\Module", ".\Examples" -Destination $target -Exclude .bak

    # Copy-Item -Force -Path ".\doc\NPE.pdf" -Destination $target
}

CreateBuildFolders
BuildMod

$compress = @{
    Path = "build/NPE" 
    CompressionLevel = "Fastest"
    DestinationPath = "release/NPE.zip"
}
Compress-Archive @compress -Force

Remove-Item -Force -Recurse -Path "./build"