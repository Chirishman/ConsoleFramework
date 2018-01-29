function New-CFMenu {
    [cmdletbinding()]
    Param(
        [hashtable[]]$Items,
        [ConsoleFramework.Controls.Menu]$ThisMenu = ([ConsoleFramework.Controls.Menu]::new()),
        [ConsoleFramework.Controls.HorizontalAlignment]$HorizontalAlignment = 'Center',
        [switch]$Nested
    )
    
    $ThisMenu.HorizontalAlignment = $HorizontalAlignment

    $Items | %{
        $ThisMenuItem = [ConsoleFramework.Controls.MenuItem]::new()
	    $ThisMenuItem.Title = $_.Title
	    $ThisMenuItem.Name = $_.Name

	    if ($_.Click){
		    $ThisMenuItem.Add_Click($_.Click)
	    }
        if ($_.Items){
            $ThisMenuItem.Type = 'Submenu'
            New-CFMenu -Items $_.Items -Nested | %{
                $ThisMenuItem.Items.Add($_)
            }

        }
        If ($Nested) {
            $ThisMenuItem
        } else {
            $ThisMenu.Items.Add($ThisMenuItem)
        }
    }

    if (-not $Nested) {
        $ThisMenu
    }
}