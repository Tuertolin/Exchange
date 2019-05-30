# Get the mailboxes databases
Get-MailboxDatabase

 # Get info for the user
 get-mailbox -Identity harrypotter@contoso.com
 
 # Migrate the mailbox of harrypotter@contoso.com to the mailbox MAILBOX-DATABASE
 get-mailbox -Identity harrypotter@contoso.com | New-MoveRequest -TargetDatabase MAILBOX-DATABASE
 
 # Check the status of the database
 Get-MoveRequestStatistics -MoveRequestQueue MAILBOX-DATABASE

# How to check if there are mailboxes in Quarantine 
Get-Mailbox | Get-MailboxStatistics | Where {$_.IsQuarantined -eq $True} | Select DisplayName,IsQuarantined,QuarantineEnd

#Disable quarantine
Disable-MailboxQuarantine "Harry Potter"