function New-CFList {
    [cmdletbinding()]
    Param(
        [String]$Name,
        #[int]$Height,
        #[int]$Width,
        [string[]]$Items
    )

    $FolderList = New-Object ConsoleFramework.Controls.ListBox -Property @{
		Name = $Name
		Margin = New-Object ConsoleFramework.Core.Thickness -Property @{Top = 2; Bottom = 2; Left = 2; Right = 2}
	}

    $Items | %{
        $FolderList.Items.Add($_)
    }
    $FolderList
}