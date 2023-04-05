$hostnames = Get-Content "hosts.txt"

foreach ($hostname in $hostnames) {
    Write-Host "Testing Connection to $hostname"
    Test-Connection -ComputerName $hostname -Count 1
    Write-Host "-------------------------------------"
}
