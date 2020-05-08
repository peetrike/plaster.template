#Requires -Version <%=$PLASTER_PARAM_ScriptPsVersion%>

<#PSScriptInfo
    .VERSION <%=$PLASTER_PARAM_Version%>
    .GUID <%=$PLASTER_Guid1%>

    .AUTHOR <%=$PLASTER_PARAM_FullName%>
    .COMPANYNAME <%=$PLASTER_PARAM_ScriptCompanyName%>
    .COPYRIGHT (c) <%=$PLASTER_PARAM_ScriptCompanyName%> <%=$PLASTER_Year%>.  All rights reserved.

    .TAGS

    .LICENSEURI https://opensource.org/licenses/MIT
    .PROJECTURI
    .ICONURI

    .EXTERNALMODULEDEPENDENCIES
    .REQUIREDSCRIPTS
    .EXTERNALSCRIPTDEPENDENCIES

    .RELEASENOTES

    .PRIVATEDATA
#>

<#
    .SYNOPSIS
        <%=$PLASTER_PARAM_ScriptDesc%>

    .DESCRIPTION
        Longer Description

    .EXAMPLE
        PS C:\> <%=$PLASTER_PARAM_ScriptName%>
        Explanation of what the example does

    .INPUTS
        Inputs (if any)

    .OUTPUTS
        Output (if any)

    .NOTES
        General notes

    .LINK
        Powershell Online Help: http://microsoft.com/powershell
#>

[CmdletBinding(
    DefaultParameterSetName='Parameter Set 1',
    SupportsShouldProcess=$true,
    PositionalBinding=$false,
    HelpUri = 'http://www.microsoft.com/',
    ConfirmImpact='Medium'
)]
[OutputType([String])]

param (
        [Parameter(
            Mandatory=$true,
            Position=0,
            ValueFromPipeline=$true,
            ValueFromPipelineByPropertyName=$true,
            ValueFromRemainingArguments=$false,
            ParameterSetName='Parameter Set 1'
        )]
        [ValidateNotNull()]
        [ValidateNotNullOrEmpty()]
        [ValidateCount(0,5)]
        [ValidateSet("sun", "moon", "earth")]
        [Alias("p1")]
        # Param1 help description
    $Param1,

        [Parameter(ParameterSetName='Parameter Set 1')]
        [AllowNull()]
        [AllowEmptyCollection()]
        [AllowEmptyString()]
        [ValidateScript({
            $true
        })]
        [ValidateRange(0,5)]
        [int]
        # Param2 help description
    $Param2,

        [Parameter(ParameterSetName='Another Parameter Set')]
        [ValidatePattern("[a-z]*")]
        [ValidateLength(0,15)]
        [string]
        # Param3 help description
    $Param3
)

begin {
    Write-Verbose -Message 'Starting function'
}

process {
    if ($PSCmdlet.ShouldProcess("Target", "Operation")) {
        Write-Verbose -Message 'Operating with target'
    }

    Write-Warning -Message 'Not yet implemented'
}

end {
    Write-Verbose 'Ending function'
}
