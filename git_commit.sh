#!/bin/bash
set -e
cd /root/metamod-source
git add -A
git status
git commit -m "$(cat <<'EOF'
Fork hardening: crash reduction, branding, build workflow

- Plugin lifecycle: null handle guards, strrchr UB fix, partial-load
  failure logging, unload refusal logging, provider null guards
- Engine detection: gamedll_bridge null guards on all failure paths,
  improved unknown-engine error messages, strncpy null-termination
- Build: added -Wextra -Wformat=2 -Wformat-security -Wnull-dereference
  warnings, -O2 production optimization
- Branding: Snaximusss+ fork info in version.rc, README fork section
- CI: GitHub Actions build workflow for Linux
- Docs: README with build/debug instructions, CS2 path example,
  troubleshooting guide

This fork is maintained by Snaximusss+ server infrastructure.
Original project by AlliedModders.
EOF
)"
echo "Commit done."
