﻿#
# Module manifest for module 'psCheckPoint'
#
# Generated by: Tim Koopman
#
# Generated on: 28/03/2018
#

@{
# Script module or binary module file associated with this manifest.
RootModule = if($PSEdition -eq 'Core')
{
'netstandard1.6\psCheckPoint.dll'
}
else # Desktop
{
'net45\psCheckPoint.dll'
}

# Version number of this module.
ModuleVersion = '0.0.0'

# Supported PSEditions
CompatiblePSEditions = @('Desktop', 'Core')

# ID used to uniquely identify this module
GUID = 'b98e04a4-aebf-4b76-9f0e-448d4145a8b1'

# Author of this module
Author = 'Tim Koopman'

# Company or vendor of this module
CompanyName = ''

# Copyright statement for this module
Copyright = '(c) 2017 Tim Koopman. All rights reserved.'

# Description of the functionality provided by this module
Description = 'Commands for accessing Check Point Web-API Calls'

# Minimum version of the Windows PowerShell engine required by this module
PowerShellVersion = '5.1'

# Name of the Windows PowerShell host required by this module
# PowerShellHostName = ''

# Minimum version of the Windows PowerShell host required by this module
# PowerShellHostVersion = ''

# Minimum version of Microsoft .NET Framework required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
# DotNetFrameworkVersion = '4.5'

# Minimum version of the common language runtime (CLR) required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
# CLRVersion = ''

# Processor architecture (None, X86, Amd64) required by this module
# ProcessorArchitecture = ''

# Modules that must be imported into the global environment prior to importing this module
RequiredModules = @()

# Assemblies that must be loaded prior to importing this module
RequiredAssemblies = @()

# Script files (.ps1) that are run in the caller's environment prior to importing this module.
ScriptsToProcess = @()

# Type files (.ps1xml) to be loaded when importing this module
TypesToProcess = @()

# Format files (.ps1xml) to be loaded when importing this module
FormatsToProcess = @(
	'Views\AddressRange.Format.ps1xml',
	'Views\Group.Format.ps1xml',
	'Views\GroupWithExclusion.Format.ps1xml',
	'Views\HashDetails.Format.ps1xml',
	'Views\Host.Format.ps1xml',
	'Views\Network.Format.ps1xml',
	'Views\Summary.Format.ps1xml',
	'Views\SyncAction.Format.ps1xml'
)

# Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
NestedModules = @()

# Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
FunctionsToExport = @()

# Cmdlets to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no cmdlets to export.
CmdletsToExport = @(
	'Add-CheckPointIdentity',
	'Close-CheckPointSession',
	'Debug-CheckPointSession',
	'Export-CheckPointObjects',
	'Get-CheckPointAccessLayer',
	'Get-CheckPointAccessLayers',
	'Get-CheckPointAccessRule',
	'Get-CheckPointAccessRuleBase',
	'Get-CheckPointAddressRange',
	'Get-CheckPointAddressRanges',
	'Get-CheckPointApplication',
	'Get-CheckPointApplicationCategories',
	'Get-CheckPointApplicationCategory',
	'Get-CheckPointApplications',
	'Get-CheckPointFullObject',
	'Get-CheckPointGroup',
	'Get-CheckPointGroups',
	'Get-CheckPointGroupsWithExclusion',
	'Get-CheckPointGroupWithExclusion',
	'Get-CheckPointHash',
	'Get-CheckPointHost',
	'Get-CheckPointHosts',
	'Get-CheckPointIdentity',
	'Get-CheckPointMulticastAddressRange',
	'Get-CheckPointMulticastAddressRanges',
	'Get-CheckPointNetwork',
	'Get-CheckPointNetworks',
	'Get-CheckPointObject',
	'Get-CheckPointObjects',
	'Get-CheckPointSecurityZone',
	'Get-CheckPointSecurityZones',
	'Get-CheckPointServiceGroup',
	'Get-CheckPointServiceGroups',
	'Get-CheckPointServicesTCP',
	'Get-CheckPointServicesUDP',
	'Get-CheckPointServiceTCP',
	'Get-CheckPointServiceUDP',
	'Get-CheckPointSession',
	'Get-CheckPointSessions',
	'Get-CheckPointSimpleGateway',
	'Get-CheckPointSimpleGateways',
	'Get-CheckPointTask',
	'Get-CheckPointWhereUsed',
	'Get-CheckPointWhereUsedCustom',
	'Install-CheckPointPolicy',
	'Invoke-CheckPointGroupSync',
	'Invoke-CheckPointScript',
	'New-CheckPointAccessLayer',
	'New-CheckPointAddressRange',
	'New-CheckPointApplication',
	'New-CheckPointApplicationCategory',
	'New-CheckPointGroup',
	'New-CheckPointGroupWithExclusion',
	'New-CheckPointHost',
	'New-CheckPointMulticastAddressRange',
	'New-CheckPointNetwork',
	'New-CheckPointSecurityZone',
	'New-CheckPointServiceGroup',
	'New-CheckPointServiceTCP',
	'New-CheckPointServiceUDP',
	'Open-CheckPointSession',
	'Publish-CheckPointSession',
	'Remove-CheckPointAccessLayer',
	'Remove-CheckPointAddressRange',
	'Remove-CheckPointApplication',
	'Remove-CheckPointApplicationCategory',
	'Remove-CheckPointGroup',
	'Remove-CheckPointGroupWithExclusion',
	'Remove-CheckPointHost',
	'Remove-CheckPointIdentity',
	'Remove-CheckPointMulticastAddressRange',
	'Remove-CheckPointNetwork',
	'Remove-CheckPointSecurityZone',
	'Remove-CheckPointServiceGroup',
	'Remove-CheckPointServiceTCP',
	'Remove-CheckPointServiceUDP',
	'Reset-CheckPointSession',
	'Send-CheckPointKeepAlive',
	'Set-CheckPointAccessLayer',
	'Set-CheckPointAddressRange',
	'Set-CheckPointApplication',
	'Set-CheckPointApplicationCategory',
	'Set-CheckPointGroup',
	'Set-CheckPointGroupWithExclusion',
	'Set-CheckPointHost',
	'Set-CheckPointMulticastAddressRange',
	'Set-CheckPointNetwork',
	'Set-CheckPointSecurityZone',
	'Set-CheckPointServiceGroup',
	'Set-CheckPointServiceTCP',
	'Set-CheckPointServiceUDP',
	'Test-CheckPointPolicy',
	'Wait-CheckPointTask'
)

# Variables to export from this module
VariablesToExport = @()

# Aliases to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no aliases to export.
AliasesToExport = @()

# DSC resources to export from this module
DscResourcesToExport = @()

# List of all modules packaged with this module
ModuleList = @()

# List of all files packaged with this module
FileList = @()

# Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
PrivateData = @{
    PSData = @{
		Prerelease = '-pre'
        # Tags applied to this module. These help with module discovery in online galleries.
        Tags = @("firewall", "checkpoint")

        # A URL to the license for this module.
        LicenseUri = 'https://raw.githubusercontent.com/tkoopman/psCheckPoint/master/LICENSE'

        # A URL to the main website for this project.
        ProjectUri = 'https://github.com/tkoopman/psCheckPoint'

        # A URL to an icon representing this module.
        # IconUri = ''

        # ReleaseNotes of this module
        # ReleaseNotes = ''
    } # End of PSData hashtable
} # End of PrivateData hashtable

# HelpInfo URI of this module
HelpInfoURI = 'https://tkoopman.github.io/psCheckPoint/'

# Default prefix for commands exported from this module. Override the default prefix using Import-Module -Prefix.
# DefaultCommandPrefix = ''
}