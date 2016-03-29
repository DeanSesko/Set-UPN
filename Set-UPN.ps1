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
$ADUsers = Get-ADUser -Filter * -Properties MailNickName
foreach ($User in $ADUsers) {
	
	if ($User.MailNickName -ne $null) {
		$upn = $User.MailNickName + $DomainName
		Set-ADUser -Identity $user -UserPrincipalName $upn
	}
	Else {
		$upn = $User.SamAccountName + $DomainName
		Set-ADUser -Identity $user -UserPrincipalName $upn
	}
	
	
}

