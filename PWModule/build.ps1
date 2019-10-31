#Requires -Modules psake
[CmdletBinding()]
param ()

# Builds the module by invoking psake on the build.psake.ps1 script.
Invoke-PSake $PSScriptRoot\build.psake.ps1 -taskList Build -Verbose:$VerbosePreference
