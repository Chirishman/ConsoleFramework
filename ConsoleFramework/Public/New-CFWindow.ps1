function New-CFWindow {
    [cmdletbinding()]
    Param(
        [String]$Title,
        [String]$Name,
        [int]$Height,
        [int]$Width,
        [ConsoleFramework.Core.Thickness]$Margin,
        $Content
    )
    $Window = [ConsoleFramework.Controls.Window]::new()

    $Window.Title = $Title
    $Window.Name = $Name
    $Window.Height = 15
	$window.Width = 20
    $Window.Margin = $Margin
    $Window.Content = $Content
    $Window
}