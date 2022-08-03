get-ciminstance win32_networkadapterconfiguration | where-object {$_.ipenabled -eq $true } | 
select description, dnsserversearchorder, dnsdomain, index, IPaddress, IPsubnet | format-table