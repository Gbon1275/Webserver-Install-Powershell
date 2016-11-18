Import-Module ServerManager

Add-WindowsFeature,
    Web-DEfault-Doc,
    Web-Dir-Browsing,
    Web-Static-Content,
    Web-Stat-Compression,
    Web-CertProvider,
    Web-ASP,
    Web-Asp-Net45


Remove-Item C:\inetpub\wwwroot\* -Recurse

Copy-Item -path C:\temp\webfiles\* '
    -Destination C:\inetpub\wwwroot '
    -Recurse

Backup-Webconfiguration -Name IISConfigBackup
    
