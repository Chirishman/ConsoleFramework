function New-CFWindowHost {
    [cmdletbinding()]
    Param(
        #[String]$Name,
        [ConsoleFramework.Controls.Menu]$MainMenu,
        [ConsoleFramework.Controls.Window]$Show
    )

	$WindowHost = [ConsoleFramework.Controls.WindowsHost]::new();
    #$WindowHost.Name = $Name
	$WindowHost.MainMenu = $MainMenu
    $WindowHost.Show($Show)
    $WindowHost
}