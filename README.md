# Paradox Oracle

Active Directory relationship mapping, attack path discovery, and privilege escalation graphing.

Curated Paradox guide + usage notes for BloodHound / SharpHound ecosystem, focused on terminal & device workflows.

**Upstream:** [SpecterOps/BloodHound](https://github.com/SpecterOps/BloodHound)

---

## What it does

- Collects AD data (users, groups, sessions, ACLs, trusts, etc.)
- Builds a graph of attack paths
- Identifies shortest paths to Domain Admin / high value targets
- Supports BloodHound CE (Community Edition) and legacy

---

## Environments

| Platform     | Support |
|--------------|---------|
| Linux        | Excellent (Docker recommended) |
| Windows      | Native SharpHound collectors |
| Termux       | Possible for analysis (Neo4j + BloodHound UI is heavy) |
| Docker       | Preferred |

---

## Quick Start — Docker (recommended)

```bash
# Pull official or community images
docker pull specterops/bloodhound

# Or use the full stack
git clone https://github.com/SpecterOps/BloodHound.git
cd BloodHound
docker compose up
```

Access the UI usually at http://localhost:8080

---

## Data Collection (SharpHound)

On a domain-joined Windows host (or from Linux with proper tooling):

```powershell
# Classic SharpHound
.\SharpHound.exe -c All

# Or the newer BloodHound CE collector
```

Upload the generated zip into the BloodHound UI.

---

## Termux / Mobile Notes

- Running the full Neo4j + web UI on Termux is resource heavy.
- Better approach: collect data on Windows, transfer the zip, analyze on a real Linux box or cloud instance.
- You can run `neo4j` in Termux with enough RAM, but expect pain.

---

## Linux Native-ish

```bash
# Install Neo4j + BloodHound CE
# Follow official SpecterOps docs for the current CE release

sudo apt install neo4j
# then configure and start
```

---

## Paradox Collection

- **Paradox Sovereign** — C2 framework
- **Paradox Oracle** — AD graph & attack paths (this repo)
- More coming

Use only on authorized networks.
