$process = Start-Process -PassThru notepad;

$SW_SHOW = 5;
$sig = '[DllImport("user32.dll")] public static extern bool ShowWindow(IntPtr hWnd, int nCmdShow);';
Add-Type -MemberDefinition $sig -name NativeMethods -namespace Win32;
[Win32.NativeMethods]::ShowWindow($process.Id, $SW_SHOW) | Out-Null;

Add-Type -AssemblyName System.Windows.Forms;
[System.Windows.Forms.SendKeys]::SendWait('I love the bootcamp!');