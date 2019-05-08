
#Get databases
Get-mailboxDatabase

#Get the mailboxes from the Database
Get-mailbox -Database EXCH-SML-MBX

#Move all the mailboxes from EXCH-SML-MBX to EXCH-MED-MBX
Get-Mailbox -Database EXCH-SML-MBX | New-MoveRequest -TargetDatabase EXCH-MED-MBX

#Check Progress
Get-MoveRequestStatistics -MoveRequestQueue EXCH-MED-MBX

#Dismount database
Dismount-Database -Identity EXCH-SML-MBX
