HEAD
# Charlie Unified

Charlie Unified merges:

- Charlie 2.0
- CVRCC
- Charlie Android
- Charlie Nexus
- Charlie Aegis

The system treats PC + Galaxy A16 + Termux + ADB + PowerShell as one deterministic machine.

## Repository Structure

- `/core` - Charlie 2.0 engine
- `/cvrcc` - validation, routing, recovery
- `/android` - Termux + ADB scripts
- `/nexus` - sync protocols and state
- `/aegis` - integrity checks and policies
- `/tools` - installers and helper scripts
- `/examples` - real workflows

See `/docs/overview.md` for the architecture map.

## Quick Start

PowerShell:

```powershell
pwsh -NoProfile -ExecutionPolicy Bypass -File .\tools\powershell\bootstrap.ps1
```

Termux:

```bash
bash ./android/termux/bootstrap.sh
```

