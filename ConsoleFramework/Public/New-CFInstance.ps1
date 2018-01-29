function New-CFInstance {
    [cmdletbinding()]
    Param()
    [ConsoleFramework.ConsoleApplication]::Instance;
}