# Bash and Powershell scripts


## Powershell:

This script contains 3 functions,
* The first function creates a task in the Windows task scheduler,
the task runs the mytask.ps1 script that every minute opens a notepad instance and insert text into it.
* The second function changes the status of the scheduled task to "disable".
* The third function displays a list of all the tasks in the task scheduler.

Example usage:
```
.\Task-Generator.ps1 -TaskName "MyCoolTaskName" -WaitSeconds "120"
```


## Bash:

Bash script that verifies password strength according to the following parameters:
* Length – minimum of 10 characters.
* Contain both alphabet and number.
* Include both the small and capital case letters.

Example usage:
```
./password-validator.sh "MyP@ssw0rd!"
```