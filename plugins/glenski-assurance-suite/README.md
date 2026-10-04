# Glenski Assurance Suite

Six portable skills for developers who want clear evidence and stated limits before they call work finished. Each skill is plain Markdown instructions with optional helper scripts. The plugin has no hooks, no MCP servers, and no background processes, and it makes no network requests by itself.

## Skills

| Skill | What it does |
| --- | --- |
| `universal-audit` | Runs an evidence-based software audit and ends with a clear release verdict and stated limits. |
| `python-web-app-security-audit` | Runs defensive pre-release security tests for FastAPI, Flask, and Django applications. |
| `cross-platform-compliance` | Checks web frontends for browser-engine, responsive, touch, and accessibility problems. |
| `human-writer` | Edits text you supply for clarity and natural voice without changing its meaning. |
| `task-state-ledger` | Keeps a small local status file for multi-step work, plus an optional roadmap and decision log. |
| `save-context` | Writes a verified, secret-safe handoff before a session is compacted or transferred. |

## What the plugin runs, writes, and fetches

- **Instructions:** every skill loads only when its description matches your request.
- **Local scripts:** `human-writer` includes a rule checker that reads a file you point it at. `task-state-ledger` includes `memctl.py` and `write_evidence.py`, which write Markdown files inside the project folder you choose. Both reject common secret patterns, and `memctl.py init` never overwrites an existing file. `write_evidence.py` replaces an evidence record that uses the same node ID.
- **Security tests:** `python-web-app-security-audit` includes a setup script that copies a pytest suite into your project and refuses to overwrite an existing suite folder. The tests import your own application and call it in-process. They send no requests to outside hosts themselves, but your application runs as it normally would.
- **Image builders:** `save-context` and `universal-audit` include small Python scripts in `assets/` that regenerate their listing images. The skills do not use them.
- **Browser checks:** `cross-platform-compliance` includes an optional PowerShell script. When you run it, it installs Playwright and axe-core with npm, downloads the browsers you name, and loads the URL you give it. Nothing here runs unless you start it.
- **Data sent anywhere:** none. The plugin contains no credentials, analytics, or telemetry.

## Privacy and scope

Records created by the skills may contain project details, so treat them as potentially discoverable. Do not store credentials, personal information, or customer data in them. The project decision log from `task-state-ledger` is opt-in for version control, and repositories that may become public should keep it out of git.

## License

MIT. See `LICENSE`.
