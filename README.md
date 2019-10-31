# Plaster templates for creating project folders

There are [Plaster](https://github.com/PowerShell/Plaster) templates
for scaffolding new projects automatically.

To use templates, you should have module Plaster installed.
If you don't yet have it, you can install it from [Powershell Gallery](https://www.powershellgallery.com/):

```powershell
Install-Module Plaster
```

## Using templates

After installing module, you can use templates:

```powershell
Invoke-Plaster -TemplatePath .\PWModule\ -Destination ~\Projects\NewModule
```

## List of templates

Currently there are following templates for Powershell projects:

- [PWModule](PWModule) - for Powershell module where every function is
separate .ps1 file
- [PWScript](PWScript) - for Powershell script project with no module
- [AddPWFunction](AddPWFunction) - for adding new function to existing project
- [AddPWScript](AddPWScript) - for adding new script to existing project
