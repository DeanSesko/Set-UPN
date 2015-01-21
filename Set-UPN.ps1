#########################################################################################
# COMPANY: CDW								                                            #
#                                                                                       #
# NAME:Set-UPN.ps1                                                                      #
#                                                                                       #
# AUTHOR:  Dean Sesko                                                                   #
#                                                                                       #
# DATE:  01/21/2015                                                                     #
# EMAIL: Dean.SEsko@CDW.com                                                             #
#                                                                                       #
# COMMENT: Used to Chang UPN Suffixes                                                   #
#                                                                                       #
# VERSION HISTORY" V1.0 Initial Version                                                 #
#                                                                                       #
#                                                                                       #
#########################################################################################


Import-Module ActiveDirectory
$DomainName = "@ExchangeBytes.com"
$ADUsers = Get-ADUser -Filter * 
foreach ($User in $ADUsers) {
	

		$upn = $User.SamAccountName + $DomainName
		Set-ADUser -Identity $user -UserPrincipalName $upn
	
	
}
# SIG # Begin signature block
# MIIUhAYJKoZIhvcNAQcCoIIUdTCCFHECAQExCzAJBgUrDgMCGgUAMGkGCisGAQQB
# gjcCAQSgWzBZMDQGCisGAQQBgjcCAR4wJgIDAQAABBAfzDtgWUsITrck0sYpfvNR
# AgEAAgEAAgEAAgEAAgEAMCEwCQYFKw4DAhoFAAQU40SPtYtLpgqIjLqaG1xiYDi/
# uf+ggg8TMIIEFDCCAvygAwIBAgILBAAAAAABL07hUtcwDQYJKoZIhvcNAQEFBQAw
# VzELMAkGA1UEBhMCQkUxGTAXBgNVBAoTEEdsb2JhbFNpZ24gbnYtc2ExEDAOBgNV
# BAsTB1Jvb3QgQ0ExGzAZBgNVBAMTEkdsb2JhbFNpZ24gUm9vdCBDQTAeFw0xMTA0
# MTMxMDAwMDBaFw0yODAxMjgxMjAwMDBaMFIxCzAJBgNVBAYTAkJFMRkwFwYDVQQK
# ExBHbG9iYWxTaWduIG52LXNhMSgwJgYDVQQDEx9HbG9iYWxTaWduIFRpbWVzdGFt
# cGluZyBDQSAtIEcyMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAlO9l
# +LVXn6BTDTQG6wkft0cYasvwW+T/J6U00feJGr+esc0SQW5m1IGghYtkWkYvmaCN
# d7HivFzdItdqZ9C76Mp03otPDbBS5ZBb60cO8eefnAuQZT4XljBFcm05oRc2yrmg
# jBtPCBn2gTGtYRakYua0QJ7D/PuV9vu1LpWBmODvxevYAll4d/eq41JrUJEpxfz3
# zZNl0mBhIvIG+zLdFlH6Dv2KMPAXCae78wSuq5DnbN96qfTvxGInX2+ZbTh0qhGL
# 2t/HFEzphbLswn1KJo/nVrqm4M+SU4B09APsaLJgvIQgAIMboe60dAXBKY5i0Eex
# +vBTzBj5Ljv5cH60JQIDAQABo4HlMIHiMA4GA1UdDwEB/wQEAwIBBjASBgNVHRMB
# Af8ECDAGAQH/AgEAMB0GA1UdDgQWBBRG2D7/3OO+/4Pm9IWbsN1q1hSpwTBHBgNV
# HSAEQDA+MDwGBFUdIAAwNDAyBggrBgEFBQcCARYmaHR0cHM6Ly93d3cuZ2xvYmFs
# c2lnbi5jb20vcmVwb3NpdG9yeS8wMwYDVR0fBCwwKjAooCagJIYiaHR0cDovL2Ny
# bC5nbG9iYWxzaWduLm5ldC9yb290LmNybDAfBgNVHSMEGDAWgBRge2YaRQ2XyolQ
# L30EzTSo//z9SzANBgkqhkiG9w0BAQUFAAOCAQEATl5WkB5GtNlJMfO7FzkoG8IW
# 3f1B3AkFBJtvsqKa1pkuQJkAVbXqP6UgdtOGNNQXzFU6x4Lu76i6vNgGnxVQ380W
# e1I6AtcZGv2v8Hhc4EvFGN86JB7arLipWAQCBzDbsBJe/jG+8ARI9PBw+DpeVoPP
# PfsNvPTF7ZedudTbpSeE4zibi6c1hkQgpDttpGoLoYP9KOva7yj2zIhd+wo7AKvg
# IeviLzVsD440RZfroveZMzV+y5qKu0VN5z+fwtmK+mWybsd+Zf/okuEsMaL3sCc2
# SI8mbzvuTXYfecPlf5Y1vC0OzAGwjn//UYCAp5LUs0RGZIyHTxZjBzFLY7Df8zCC
# BJ8wggOHoAMCAQICEhEhQFwfDtJYiCvlTYaGuhHqRTANBgkqhkiG9w0BAQUFADBS
# MQswCQYDVQQGEwJCRTEZMBcGA1UEChMQR2xvYmFsU2lnbiBudi1zYTEoMCYGA1UE
# AxMfR2xvYmFsU2lnbiBUaW1lc3RhbXBpbmcgQ0EgLSBHMjAeFw0xMzA4MjMwMDAw
# MDBaFw0yNDA5MjMwMDAwMDBaMGAxCzAJBgNVBAYTAlNHMR8wHQYDVQQKExZHTU8g
# R2xvYmFsU2lnbiBQdGUgTHRkMTAwLgYDVQQDEydHbG9iYWxTaWduIFRTQSBmb3Ig
# TVMgQXV0aGVudGljb2RlIC0gRzEwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEK
# AoIBAQCwF66i07YEMFYeWA+x7VWk1lTL2PZzOuxdXqsl/Tal+oTDYUDFRrVZUjtC
# oi5fE2IQqVvmc9aSJbF9I+MGs4c6DkPw1wCJU6IRMVIobl1AcjzyCXenSZKX1GyQ
# oHan/bjcs53yB2AsT1iYAGvTFVTg+t3/gCxfGKaY/9Sr7KFFWbIub2Jd4NkZrItX
# nKgmK9kXpRDSRwgacCwzi39ogCq1oV1r3Y0CAikDqnw3u7spTj1Tk7Om+o/SWJMV
# TLktq4CjoyX7r/cIZLB6RA9cENdfYTeqTmvT0lMlnYJz+iz5crCpGTkqUPqp0Dw6
# yuhb7/VfUfT5CtmXNd5qheYjBEKvAgMBAAGjggFfMIIBWzAOBgNVHQ8BAf8EBAMC
# B4AwTAYDVR0gBEUwQzBBBgkrBgEEAaAyAR4wNDAyBggrBgEFBQcCARYmaHR0cHM6
# Ly93d3cuZ2xvYmFsc2lnbi5jb20vcmVwb3NpdG9yeS8wCQYDVR0TBAIwADAWBgNV
# HSUBAf8EDDAKBggrBgEFBQcDCDBCBgNVHR8EOzA5MDegNaAzhjFodHRwOi8vY3Js
# Lmdsb2JhbHNpZ24uY29tL2dzL2dzdGltZXN0YW1waW5nZzIuY3JsMFQGCCsGAQUF
# BwEBBEgwRjBEBggrBgEFBQcwAoY4aHR0cDovL3NlY3VyZS5nbG9iYWxzaWduLmNv
# bS9jYWNlcnQvZ3N0aW1lc3RhbXBpbmdnMi5jcnQwHQYDVR0OBBYEFNSihEo4Whh/
# uk8wUL2d1XqH1gn3MB8GA1UdIwQYMBaAFEbYPv/c477/g+b0hZuw3WrWFKnBMA0G
# CSqGSIb3DQEBBQUAA4IBAQACMRQuWFdkQYXorxJ1PIgcw17sLOmhPPW6qlMdudEp
# Y9xDZ4bUOdrexsn/vkWF9KTXwVHqGO5AWF7me8yiQSkTOMjqIRaczpCmLvumytmU
# 30Ad+QIYK772XU+f/5pI28UFCcqAzqD53EvDI+YDj7S0r1txKWGRGBprevL9DdHN
# fV6Y67pwXuX06kPeNT3FFIGK2z4QXrty+qGgk6sDHMFlPJETiwRdK8S5FhvMVcUM
# 6KvnQ8mygyilUxNHqzlkuRzqNDCxdgCVIfHUPaj9oAAy126YPKacOwuDvsu4uyom
# jFm4ua6vJqziNKLcIQ2BCzgT90Wj49vErKFtG7flYVzXMIIGVDCCBTygAwIBAgIC
# ET4wDQYJKoZIhvcNAQEFBQAwgYwxCzAJBgNVBAYTAklMMRYwFAYDVQQKEw1TdGFy
# dENvbSBMdGQuMSswKQYDVQQLEyJTZWN1cmUgRGlnaXRhbCBDZXJ0aWZpY2F0ZSBT
# aWduaW5nMTgwNgYDVQQDEy9TdGFydENvbSBDbGFzcyAyIFByaW1hcnkgSW50ZXJt
# ZWRpYXRlIE9iamVjdCBDQTAeFw0xNDEyMDMwOTMzMTdaFw0xNjEyMDQwNjQ4NTda
# MIGMMRkwFwYDVQQNExA5aTRDRnhkZUs1YjV3eFI1MQswCQYDVQQGEwJVUzERMA8G
# A1UECBMITWljaGlnYW4xFDASBgNVBAcTC0dyYW5kIEJsYW5jMRMwEQYDVQQDEwpE
# ZWFuIFNlc2tvMSQwIgYJKoZIhvcNAQkBFhVEZWFuU2Vza29AaG90bWFpbC5jb20w
# ggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQC+UrC1q8YK+/2dJuDPbAXi
# 938ZT0EfuB1bACi+lvi0xldZlCM4q13ReXxk3va7H6S4YQmg0DKRBio7olf2gyUK
# Jg/x4+Tl0REk7kT2aVdAyelm4UuD/tUjsLnYPg6oX1Ql3IjUecByy2nYh6CHHDEi
# RTdtbidsqQX8CKUT6hm0vcN9hRRyGLPPdapQuOPu3egY9oFG3I+zwrxXcVl9Gswn
# Ip/QNbpf7E7Pta/4tvtcDpc94mkW7h+KYZ+ACJpQnZt1bD+r2QgJV0xLlTSUjNm6
# k1YgGt7DMGhX3IRGyfhyVX6FQIJ/FyYfCif2u3lDf63w0O8eIt19nVpcEzOfOWK1
# AgMBAAGjggK8MIICuDAJBgNVHRMEAjAAMA4GA1UdDwEB/wQEAwIHgDAiBgNVHSUB
# Af8EGDAWBggrBgEFBQcDAwYKKwYBBAGCNwoDDTAdBgNVHQ4EFgQUQnGp+vKZGEvn
# uOKfnlso84+cUhgwHwYDVR0jBBgwFoAU0E4PQJlsuEsZbzsouODjiAc0qrcwggFM
# BgNVHSAEggFDMIIBPzCCATsGCysGAQQBgbU3AQIDMIIBKjAuBggrBgEFBQcCARYi
# aHR0cDovL3d3dy5zdGFydHNzbC5jb20vcG9saWN5LnBkZjCB9wYIKwYBBQUHAgIw
# geowJxYgU3RhcnRDb20gQ2VydGlmaWNhdGlvbiBBdXRob3JpdHkwAwIBARqBvlRo
# aXMgY2VydGlmaWNhdGUgd2FzIGlzc3VlZCBhY2NvcmRpbmcgdG8gdGhlIENsYXNz
# IDIgVmFsaWRhdGlvbiByZXF1aXJlbWVudHMgb2YgdGhlIFN0YXJ0Q29tIENBIHBv
# bGljeSwgcmVsaWFuY2Ugb25seSBmb3IgdGhlIGludGVuZGVkIHB1cnBvc2UgaW4g
# Y29tcGxpYW5jZSBvZiB0aGUgcmVseWluZyBwYXJ0eSBvYmxpZ2F0aW9ucy4wNgYD
# VR0fBC8wLTAroCmgJ4YlaHR0cDovL2NybC5zdGFydHNzbC5jb20vY3J0YzItY3Js
# LmNybDCBiQYIKwYBBQUHAQEEfTB7MDcGCCsGAQUFBzABhitodHRwOi8vb2NzcC5z
# dGFydHNzbC5jb20vc3ViL2NsYXNzMi9jb2RlL2NhMEAGCCsGAQUFBzAChjRodHRw
# Oi8vYWlhLnN0YXJ0c3NsLmNvbS9jZXJ0cy9zdWIuY2xhc3MyLmNvZGUuY2EuY3J0
# MCMGA1UdEgQcMBqGGGh0dHA6Ly93d3cuc3RhcnRzc2wuY29tLzANBgkqhkiG9w0B
# AQUFAAOCAQEAX5L1IxTlmyXtOPeameNgxb1vdf1+5EY3pD3fBqcwztd0Yi4OWhJH
# GCSFJ98DxCyYHnietjOGFWSf6gfQvMcPHACKMLfkTplOrI7Y7wIzLvvqvxyQ4cJC
# DFhXGCbEKi3wWwdK54721wNOXOBREKHj0JBdQzi6TD0Knsy+Bhy8/QG1RPu2ou3M
# U/ajbiFLMGHqk5rJJZaWzKg//M8pf/kq+QwrW6qCZkSDl1SaHp5kfN87di/9iHKK
# +jk2keWWZtYtZ5SoQRMwkZUwpP1jc4uhmy60ct8Q0YRKqcslB8vStusUNBphImh3
# NvDl06Y2HKeJsN8OE7l1+Dxr4Gf94LsYrDGCBNswggTXAgEBMIGTMIGMMQswCQYD
# VQQGEwJJTDEWMBQGA1UEChMNU3RhcnRDb20gTHRkLjErMCkGA1UECxMiU2VjdXJl
# IERpZ2l0YWwgQ2VydGlmaWNhdGUgU2lnbmluZzE4MDYGA1UEAxMvU3RhcnRDb20g
# Q2xhc3MgMiBQcmltYXJ5IEludGVybWVkaWF0ZSBPYmplY3QgQ0ECAhE+MAkGBSsO
# AwIaBQCgeDAYBgorBgEEAYI3AgEMMQowCKACgAChAoAAMBkGCSqGSIb3DQEJAzEM
# BgorBgEEAYI3AgEEMBwGCisGAQQBgjcCAQsxDjAMBgorBgEEAYI3AgEVMCMGCSqG
# SIb3DQEJBDEWBBSNzDcVvemd0F7JyNdS2OD4GxZPyjANBgkqhkiG9w0BAQEFAASC
# AQBk0CEE0AkLinLJOFfKy8ojRZnyKWHmUqTvhGqkZ8ah4yUN/zbJ6gvSB1KS6/HY
# daCt5wvDoUJrL5lQj91+OeckX27evTv15q1sGNlThLewJxEoL9TPyK5abcCeUIAO
# FjrdtdTkDbClLB/4BbHPL5ty7qQYI46xQBd+Sg4Sos1nWlB0ncFfDsA3puzdiFcs
# 4V8P7Gr1cjQhbWgJFJ9C09nrhuKaIrVXow6MPKiRBel8UiWFA+jo8pYgJU4FcpnQ
# +iIg4T+2s4dv8f+2M9dRivsNOoApQxAYKTENZzBHZf7Uy26C2ZroFIDOqW+8SgQ5
# t+tEB/mJAze1w+cTVIopDF5PoYICojCCAp4GCSqGSIb3DQEJBjGCAo8wggKLAgEB
# MGgwUjELMAkGA1UEBhMCQkUxGTAXBgNVBAoTEEdsb2JhbFNpZ24gbnYtc2ExKDAm
# BgNVBAMTH0dsb2JhbFNpZ24gVGltZXN0YW1waW5nIENBIC0gRzICEhEhQFwfDtJY
# iCvlTYaGuhHqRTAJBgUrDgMCGgUAoIH9MBgGCSqGSIb3DQEJAzELBgkqhkiG9w0B
# BwEwHAYJKoZIhvcNAQkFMQ8XDTE1MDEyMTE4MjcxNFowIwYJKoZIhvcNAQkEMRYE
# FL3ZmKRGhFj+d4qtkoQZA67rxGc5MIGdBgsqhkiG9w0BCRACDDGBjTCBijCBhzCB
# hAQUjOafUBLh0aj7OV4uMeK0K947NDswbDBWpFQwUjELMAkGA1UEBhMCQkUxGTAX
# BgNVBAoTEEdsb2JhbFNpZ24gbnYtc2ExKDAmBgNVBAMTH0dsb2JhbFNpZ24gVGlt
# ZXN0YW1waW5nIENBIC0gRzICEhEhQFwfDtJYiCvlTYaGuhHqRTANBgkqhkiG9w0B
# AQEFAASCAQB/tDGqxN7E4TBLVo5y6m3uX/09OHFbLcteFSzufJgYRWvXQXLJDtWL
# UDjGTDrUD/kvsEua04/QD0NJfLPTJihHEhponI68QyE3q01VUBMLmBdQ7quvMmFN
# yn4ayHe8Z3LUVaAjBSssgpBETcg0uzQ2Cm9JRQY3WcbPQtgi8pM9LcGpD6aAghqV
# D0A0lmqtd5BCYM810Hvk9xJvV/XOwW6AdHSPLsli36NI3LlSbbPtqpnkI5Z8JbeK
# kZ2CE2oYddCEHwV51W53ua9E3EzjrNns0d6HBZDzwhF6WiZIHRm2qFtzMaMZkWx6
# N4RiHa5OWd7izGQilhLUGJb1elxiyDPC
# SIG # End signature block
