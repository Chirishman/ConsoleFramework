function New-CFWindow {
    [cmdletbinding()]
    Param(
        [String]$Title,
        [String]$Name,
        $Height,
        $Width,
        [ConsoleFramework.Core.Thickness]$Margin,
		[string]$HorizontalAlignment='Left',
		[string]$VerticalAlignment='Top',
        $Content
    )
    $WC = @{
		Title = $Title
		Name = $Name
		Margin = $Margin
		HorizontalAlignment = $HorizontalAlignment
		VerticalAlignment = $VerticalAlignment
		Content = $Content
	}
	
		
	if($Height){
		$WC.Height = $Height
	}
	
	if($Width){
		$WC.Width = $Width
	}

	$Window = New-Object ConsoleFramework.Controls.Window -Property $WC
    $Window
}