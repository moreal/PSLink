function New-HardLink {
    param (
        [Parameter(Mandatory=$true)]
        [string]
        $From,
        
        [Parameter(Mandatory=$true)]
        [string]
        $To
    )

    Invoke-Expression "cmd /c mklink /h $to $from"
}

function New-SoftLink {
    param (
        [Parameter(Mandatory=$true)]
        [string]
        $From,

        [Parameter(Mandatory=$true)]
        [string]
        $To
    )

    Invoke-Expression "cmd /c mklink $To $From"
}

Export-ModuleMember -Function "New-*"

New-ModuleManifest -Path .