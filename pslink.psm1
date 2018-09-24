function New-HardLink {
    param (
        [Parameter(Mandatory=$true)]
        [string] $From,
        [string] $To
    )

    Invoke-Expression "cmd /c mklink /h $to $from"
}

function New-SoftLink {
    param (
        [Parameter(Mandatory=$true)]
        [string] $From,
        [string] $To
    )

    Invoke-Expression "cmd /c mklink $To $From"
}

Export-ModuleMember -Function "New-*"