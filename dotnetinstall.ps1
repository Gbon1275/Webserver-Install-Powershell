$url = "Enter shortcut to .net"

$output = "C:\temp\dotnet.exe"

Invoke-WebRequest -uri $url -outFile $output

& "$output" /passive /norestart

C:\Windows\Microsoft.NET\Framework64\v4.0.30319\aspnet_repiis.exe -i
