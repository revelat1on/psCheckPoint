# psCheckPoint Example - Close Sessions
If like me, you "sometimes" forget to reset & close sessions, this one liner will close all disconnected sessions that have no pending changes.

```powershell
(Get-CheckPointSessions -Session $Session).Objects | 
   where {$_.ExpiredSession -and $_.Changes -eq 0} | 
   Reset-CheckPointSession -Session $Session
```

`$Session` is your current logged in session.