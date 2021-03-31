param ([string]$TaskName, [int32]$WaitSeconds)

function Create-Task {
    
    $Action = New-ScheduledTaskAction -Execute 'pwsh.exe' -Argument '-NonInteractive -NoLogo -NoProfile -File "C:\mytask.ps1"'
    $Trigger = New-ScheduledTaskTrigger -Once -At (Get-Date) -RepetitionInterval (New-TimeSpan -Minutes 1)
    $Settings = New-ScheduledTaskSettingsSet
    $Task = New-ScheduledTask -Action $Action -Trigger $Trigger -Settings $Settings
    Register-ScheduledTask -TaskName $TaskName -InputObject $Task

}

function Change-TaskStatus {

    Start-Sleep -s $WaitSeconds
    Disable-ScheduledTask -TaskName $TaskName

}

function Get-AllTasks {
    Get-ScheduledTask | select TaskName | ft -HideTableHeaders
}

Create-Task
Change-TaskStatus
Get-AllTasks