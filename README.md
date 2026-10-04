# Glenski Assurance Suite

Open-source developer skills for practical release assurance.

This repository is a portable [Agent Plugins v1](https://agent-plugins.org/) package and a native Codex plugin. The same skill files can be inspected, installed, and used by compatible clients without adding a hosted service, a public MCP endpoint, or access to private systems.

The current suite includes six skills:

- Cross Platform Compliance: browser, responsive, touch, and accessibility checks for web frontends.
- Universal Software Audit: evidence-led release assessment with a clear verdict.
- Python Web App Security Audit: defensive checks for FastAPI, Flask, and Django applications.
- Human Writer: minimal, natural-voice editing of supplied copy.
- Task State Ledger: a small local status file for multi-step work, with an optional roadmap and decision log.
- Save Context: a verified, secret-safe handoff before a session is compacted or transferred.

## Install in Codex

Add the public GitHub marketplace, then install the suite:

```powershell
codex plugin marketplace add Glenskii/Glenski-Plugins --ref main
codex plugin add glenski-assurance-suite@glenski-local
```

Start a new Codex task after installation so the skills are loaded.

## Use with another compatible client

The portable manifest is at [`plugins/glenski-assurance-suite/plugin.json`](plugins/glenski-assurance-suite/plugin.json). A compatible client can load that directory and discover the skills in its `skills/` folder. Installation, permissions, updates, and user interface remain the responsibility of that client.

## Privacy and scope

This repository contains portable skill instructions and test resources. It contains no project credentials, customer data, private infrastructure details, or connected MCP services.

## License

MIT. See [LICENSE](LICENSE).
