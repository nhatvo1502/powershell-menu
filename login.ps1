$User = "Domain01\User01"
$PWord = Read-Host -Prompt 'Enter a Password' -AsSecureString
$Credential = New-Object -TypeName System.Management.Automation.PSCredential -ArgumentList $User, $PWord