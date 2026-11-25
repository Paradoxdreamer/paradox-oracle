# Paradox Oracle

Active Directory attack path mapping and privilege escalation graphing (BloodHound ecosystem).

Paradox operator kit focused on practical collection + analysis workflows.

**Upstream:** [SpecterOps/BloodHound](https://github.com/SpecterOps/BloodHound)

---

## Files

| File | Purpose |
|------|---------|
| `install-linux.sh` | Basic Linux dependency + clone helper |
| `install-termux.sh` | Termux reality check + light tooling |
| `collect-tips.md` | SharpHound collection commands and tips |
| `README.md` | This file |

---

## Recommended Workflow

### 1. Collection (Windows)

Use SharpHound or the BloodHound CE collector on a domain-joined host (or with proper credentials).

See `collect-tips.md` for common command lines.

### 2. Analysis

**Best option: BloodHound CE via Docker**

```bash
git clone https://github.com/SpecterOps/BloodHound.git
cd BloodHound
docker compose up
```

Then open the web UI (usually https://localhost:8080 or the port shown).

Upload the zip produced by the collector and start querying.

---

## Termux Notes

Full Neo4j + BloodHound UI is not practical on Termux.  
Collect on Windows → move the data → analyze on a real Linux box / VPS / Docker host.

---

## Quick Commands

```bash
# After cloning this repo
chmod +x install-linux.sh install-termux.sh
./install-linux.sh
```

---

## Operational Notes

Only run collection and analysis against environments you are authorized to test.

---

## Paradox Collection

- Paradox Sovereign → Havoc
- Paradox Alloy → Sliver
- Paradox Phantom → Evilginx
- **Paradox Oracle** → BloodHound (this)
- Paradox Packet → Impacket
- + more
