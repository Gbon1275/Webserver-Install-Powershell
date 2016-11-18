$Right = "ReadndExecute"
$Principal = "IIS_IUSRS"
$StartingDir = "C:\inetpub\wwwroot"

Foreach ($file in $(Get-ChildItem $StartingDir -recurse)) {
    $rule=new-object
    System.Security.AccessControl.FIleSystemAccessRule($Principal,$Right,"Allow")

    $acl=Get-Acl $file.FullName($rule)

    Write-Output $file.Fullname

    set-acl $file.Fullname $acl
}
