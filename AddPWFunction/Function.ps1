
#Requires -Version <%=$PLASTER_PARAM_ScriptPsVersion%>

function <%=$PLASTER_PARAM_FunctionName%> {
    # .EXTERNALHELP Module-help.xml

    [CmdletBinding(
        DefaultParameterSetName='Parameter Set 1',
        SupportsShouldProcess=$true,
        PositionalBinding=$false,
        HelpUri = 'http://www.microsoft.com/',
        ConfirmImpact='Medium'
    )]
    [OutputType([String])]

    Param (
                # Param1 help description
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
        $Param1,

                # Param2 help description
            [Parameter(ParameterSetName='Parameter Set 1')]
            [AllowNull()]
            [AllowEmptyCollection()]
            [AllowEmptyString()]
            [ValidateScript({
                $true
            })]
            [ValidateRange(0,5)]
            [int]
        $Param2,

                # Param3 help description
            [Parameter(ParameterSetName='Another Parameter Set')]
            [ValidatePattern("[a-z]*")]
            [ValidateLength(0,15)]
            [string]
        $Param3
    )

    begin {
        Write-Verbose -Message 'Starting function'
    }

    process {
        if ($PSCmdlet.ShouldProcess("Target", "Operation")) {
        }

        Write-Warning -Message 'Not yet implemented'
    }

    end {
        Write-Verbose 'Ending function'
    }
}
