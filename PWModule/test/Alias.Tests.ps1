#Requires -Modules BuildHelpers, Pester

[System.Diagnostics.CodeAnalysis.SuppressMessage('PSUseDeclaredVarsMoreThanAssigments', '', Scope='*', Target='SuppressImportModule')]
$SuppressImportModule = $false
. $PSScriptRoot\Shared.ps1

$RequiredVersion = (Get-Module $ModuleName).Version

if ($ExportedAliases = (Get-Module $ModuleName).ExportedAliases.Values.Name)
{

	foreach ($ExportedAlias in $ExportedAliases)
	{
		Describe "Testing exported alias $ExportedAlias" {

			$script:AliasInSession = $null

			It "Get-Alias should not error out" {
				{ $script:AliasInSession = Get-Alias $ExportedAlias -ErrorAction Stop } | Should Not Throw
			}

			It "Get-Alias should find alias in session" {

				$script:AliasInSession.Name | Should Be $ExportedAlias
			}

			It "Get-Alias should find value" {

				$script:AliasInSession.ResolvedCommandName -or $script:AliasInSession.Definition | Should Be $True
			}
		}
	}
}
else
{
	Write-Host "Module.TestAliases.Tests.ps1:  $ModuleName ($RequiredVersion) does not export any aliases."
}
