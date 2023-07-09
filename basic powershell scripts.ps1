##to view object structure
Get-Process | Get-Member | Out-Host -Paging

Get-Process | Get-Member -MemberType Properties

## to check parts of objects
Get-CimInstance -Class Win32_LogicalDisk |
    Select-Object -Property Name, FreeSpace

    ##Get-CimInstance -Class Win32_SystemDriver |
    Where-Object {$_.State -eq "Running"} |
    Where-Object {$_.StartMode -eq "Auto"}
