﻿$imageName = "mcr.microsoft.com/businesscentral/onprem:1904-na"
$containerName = "d365bc-14"
$password = ConvertTo-SecureString -String "Password1" -AsPlainText -Force
$credential = New-Object PSCredential 'admin', $password
$licenseFile = "C:\___n4u\licenses\n4u_d365bc_14.flf"

New-BCContainer -accept_eula `
                -imageName $imageName `
                -containerName $containerName `
                -auth NavUserPassword -Credential $credential `
                -licenseFile $licenseFile `
                -memoryLimit 4G `
                -alwaysPull `
                -includeCSide