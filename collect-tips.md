# SharpHound / Collection Tips (Paradox Oracle)

## Classic SharpHound (Windows)

```powershell
# All collection methods
.\SharpHound.exe -c All

# Stealthier / specific
.\SharpHound.exe -c Session,LoggedOn,Group,ACL,Trusts,Container,ObjectProps,SPNTargets,GPOLocalGroup

# Output to specific folder
.\SharpHound.exe -c All --outputdirectory C:\Temp\BH
```

## BloodHound CE Collector

Use the official collector that matches your BloodHound CE version.

## After Collection

1. Zip the output (or use the generated zip)
2. Upload into BloodHound UI
3. Run analysis queries (shortest paths to Domain Admin, high value targets, etc.)

## Common Useful Queries

- Shortest paths to Domain Admins
- Kerberoastable users
- AS-REP roastable users
- Users with DCSync rights
- Unconstrained delegation
- Sessions on high-value targets
