function Invoke-BloodHound
{
    [CmdletBinding(PositionalBinding = $false)]
    param(
        [Alias("c")]
        [String[]]
        $CollectionMethods = [String[]]@($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABlAGYAYQB1AGwAdAA=')))),
        [Alias("d")]
        [String]
        $Domain,
        [Alias("s")]
        [Switch]
        $SearchForest,
        [Switch]
        $Stealth,
        [String]
        $LdapFilter,
        [String]
        $DistinguishedName,
        [String]
        $ComputerFile,
        [ValidateScript({ Test-Path -Path $_ })]
        [String]
        $OutputDirectory = $( gl ),
        [ValidateNotNullOrEmpty()]
        [String]
        $OutputPrefix,
        [String]
        $CacheName,
        [Switch]
        $MemCache,
        [Switch]
        $RebuildCache,
        [Switch]
        $RandomFilenames,
        [String]
        $ZipFilename,
        [Switch]
        $NoZip,
        [String]
        $ZipPassword,
        [Switch]
        $TrackComputerCalls,
        [Switch]
        $PrettyPrint,
        [String]
        $LdapUsername,
        [String]
        $LdapPassword,
        [string]
        $DomainController,
        [ValidateRange(0, 65535)]
        [Int]
        $LdapPort,
        [Switch]
        $SecureLdap,
        [Switch]
        $DisableCertVerification,
        [Switch]
        $DisableSigning,
        [Switch]
        $SkipPortCheck,
        [ValidateRange(50, 5000)]
        [Int]
        $PortCheckTimeout = 500,
        [Switch]
        $SkipPasswordCheck,
        [Switch]
        $ExcludeDCs,
        [Int]
        $Throttle,
        [ValidateRange(0, 100)]
        [Int]
        $Jitter,
        [Int]
        $Threads,
        [Switch]
        $SkipRegistryLoggedOn,
        [String]
        $OverrideUsername,
        [String]
        $RealDNSName,
        [Switch]
        $CollectAllProperties,
        [Switch]
        $Loop,
        [String]
        $LoopDuration,
        [String]
        $LoopInterval,
        [ValidateRange(500, 60000)]
        [Int]
        $StatusInterval,
        [Alias("v")]
        [ValidateRange(0, 5)]
        [Int]
        $Verbosity,
        [Alias("h")]
        [Switch]
        $Help,
        [Switch]
        $Version
    )
    ${/===\_/\/=\__/\_/} = New-Object System.Collections.Generic.List[System.Object]
    if(!($PSBoundParameters.ContainsKey($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('aABlAGwAcAA=')))) -or $PSBoundParameters.ContainsKey($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('dgBlAHIAcwBpAG8AbgA=')))))){
        $PSBoundParameters.Keys | % {
            if ($_ -notmatch $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('dgBlAHIAYgBvAHMAaQB0AHkA')))){
                ${/===\_/\/=\__/\_/}.add($ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('LQAtACQAXwA='))))
                if($PSBoundParameters.item($_).gettype().name -notmatch $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('cwB3AGkAdABjAGgA')))){
                    ${/===\_/\/=\__/\_/}.add($PSBoundParameters.item($_))
                }
            }
            elseif ($_ -match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('dgBlAHIAYgBvAHMAaQB0AHkA')))) {
                ${/===\_/\/=\__/\_/}.add("-v")
                ${/===\_/\/=\__/\_/}.add($PSBoundParameters.item($_))
            }
        }
    }
    else {
        $PSBoundParameters.Keys |? {$_ -match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('aABlAGwAcAA='))) -or $_ -match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('dgBlAHIAcwBpAG8AbgA=')))}| % {
            ${/===\_/\/=\__/\_/}.add($ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('LQAtACQAXwA='))))
        }
    }
    ${/=\___/=\/==\/=\_} = [string[]]${/===\_/\/=\__/\_/}.ToArray()
	${/====\_/\/\_/====} = New-Object IO.Compression.DeflateStream([IO.MemoryStream][Convert]::FromBase64String(${__/=\/\_/\/=\____}),[IO.Compression.CompressionMode]::Decompress)
	${_/\_/=\__/==\____} = New-Object Byte[](1046528)
	${/====\_/\/\_/====}.Read(${_/\_/=\__/==\____}, 0, 1046528) | Out-Null
	${_/\/=\_/=\/=\_/==} = [Reflection.Assembly]::Load(${_/\_/=\__/==\____})
	${___/\____/\/=\/==} = [Reflection.BindingFlags] $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAB1AGIAbABpAGMALABTAHQAYQB0AGkAYwA=')))
	${/===\_/\/===\___/} = @()
	${_/\/=\_/=\/=\_/==}.GetType($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBvAHMAdAB1AHIAYQAuAEEAcwBzAGUAbQBiAGwAeQBMAG8AYQBkAGUAcgA='))), $false).GetMethod($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QQB0AHQAYQBjAGgA'))), ${___/\____/\/=\/==}).Invoke($Null, @())
	${_/\/=\_/=\/=\_/==}.GetType($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBoAGEAcgBwAGgAbwB1AG4AZAAuAFAAcgBvAGcAcgBhAG0A')))).GetMethod($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SQBuAHYAbwBrAGUAUwBoAGEAcgBwAEgAbwB1AG4AZAA=')))).Invoke($Null, @(,${/=\___/=\/==\/=\_}))
}