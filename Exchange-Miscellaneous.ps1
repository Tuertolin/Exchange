
# Get SMTP Aliases
get-mailbox -Identity itregistrations@kia.com.au | Select-Object DisplayName,@{Name="EmailAddresses";Expression={$_.EmailAddresses |Where-Object {$_ -LIKE "SMTP:*"}}} | Out-GridView

# Configure an SMTP Alias to a mailbox
Set-Mailbox "Dan Jump" -EmailAddresses @{add="dan.jump@northamerica.contoso.com"}

# Repair mailbox
New-MailboxRepairRequest -Mailbox user -CorruptionType ProvisionedFolder,SearchFolder,AggregateCounts,Folderview

