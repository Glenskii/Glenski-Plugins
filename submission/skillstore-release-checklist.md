# Skillstore Release Checklist

Use this checklist before every Skillstore submission. A GitHub push is not a published Store release.

## Immutable source

- Run `git rev-parse HEAD` from the repository that contains the skill.
- Use the full 40-character commit hash in the source URL.
- Submit this format only: `https://github.com/<owner>/<repository>/tree/<40-character-commit>/<skill-directory>`.
- Open the exact URL before submitting. Confirm it shows the intended `SKILL.md`, version, license, scripts, assets, and documentation.
- Do not submit a branch URL, a short hash, or an unverified path.

## Preflight

- Run the skill validator.
- Install and run declared dependencies.
- Run the relevant tests in an isolated environment.
- Review `git diff --check` and the staged file list.
- Scan public Markdown for prohibited wording and em dashes.
- Confirm version, author attribution, permissive license, and current date.

## Scorecard coverage

- Include `SKILL.md`, a clean directory, scripts or assets when useful, progressive references, and additional documentation.
- Include a source repository, permissive license, author attribution, semantic version, and complete documentation.
- Include the required use cases, best practices, anti-patterns, FAQ entries, prompt templates, output examples, value statement, capabilities, limits, specificity, and distinctiveness.

## Submission and readback

- Record the submission ID and immutable source URL.
- Wait for the Store processing result. Do not claim approval from a GitHub push.
- If processing fails, read the linked workflow log before changing or resubmitting anything.
- After approval, read back the public listing and scorecard. Record each remaining red check and its evidence.
