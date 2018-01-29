function New-CFList {
    [cmdletbinding()]
    Param(
        [String]$Name,
        #[int]$Height,
        #[int]$Width,
        [string[]]$Items
    )

    $FolderList = [ConsoleFramework.Controls.ListBox]::new()
    $FolderList.Name = $Name
    $Items | %{
        $FolderList.Items.Add($_)
    }
    $FolderList
}