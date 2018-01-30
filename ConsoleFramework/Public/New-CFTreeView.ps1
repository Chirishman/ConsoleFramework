function New-CFTreeView {
    [cmdletbinding()]
    Param(
        [String]$Name,
        #[int]$Height,
        #[int]$Width,
		[ConsoleFramework.Controls.VerticalAlignment]$HorizontalAlignment = 'Stretch',
		[ConsoleFramework.Controls.VerticalAlignment]$VerticalAlignment = 'Top',
		[ConsoleFramework.Core.Thickness]$Margin,
        [string[]]$Items
    )

    $TreeView = New-Object ConsoleFramework.Controls.TreeView -Property @{
		Name = $Name
		Margin = $Margin
		HorizontalAlignment = $HorizontalAlignment
		VerticalAlignment = $VerticalAlignment
	}

	#$TreeView.Add_Click({$AppInstance.Exit()})
	
    $Items | %{
        $TreeView.Items.Add(( New-Object ConsoleFramework.Controls.TreeItem -Property @{ Title = $_ } ))
    }
    $TreeView
}