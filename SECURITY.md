# Security Policy

## Supported versions

Only the latest state of the `main` branch is supported.

## Scope

This repository contains a resume template and its build tooling only:

- There is no hosted service, database or network endpoint.
- No credentials, tokens or real personal data are stored in the repository; all sample data
  is fictional.
- The Python preview helper (`scripts/render_preview.py`) and the GitHub Actions workflows are
  in scope.

## Reporting a vulnerability

Please report suspected vulnerabilities privately through GitHub:

1. Open the repository's **Security** tab.
2. Click **Report a vulnerability** (GitHub Security Advisories).
3. Include reproduction steps, affected files and any relevant logs.

Please do not open a public issue for security reports. You can expect a best-effort
acknowledgement within a few days. This is a personal project and there is no bug bounty
program.

## Hardening checklist for users

- Keep `resume-private/` (name, phone) out of public forks.
- Replace the sample `photo.jpg` before publishing your own resume.
- Review the AGPL-3.0 obligations before publishing derivative works.
