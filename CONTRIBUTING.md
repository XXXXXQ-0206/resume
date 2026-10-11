# Contributing

Thanks for taking the time to contribute. This is a small template project, so the process is
intentionally light.

## Ways to contribute

- Report a bug or a rendering problem (open an issue, with a screenshot if possible).
- Improve the layout, the build scripts or the documentation.
- Suggest a feature.

## Development workflow

1. Fork the repository and create a topic branch from `main`, e.g. `fix/heading-spacing`.
2. Build the resumes locally:

   ```bash
   make            # or ./make.ps1 on Windows
   ```

3. Regenerate the preview screenshots if the layout changed:

   ```bash
   pip install -r requirements.txt
   python scripts/render_preview.py resume-cn-post.pdf resume-en-post.pdf
   ```

4. Open a pull request against `main` and describe what changed and why.

## Guidelines

- Keep `resume-cn.typ` and `resume-en.typ` in sync; a change to one usually needs the other.
- Never commit real personal data. The fictional sample persona exists so the repository is
  safe to share and fork.
- Keep pull requests focused: one logical change per pull request.
- Match the existing code style; comments in English or Chinese are both fine.
- By participating you agree to follow the [Code of Conduct](CODE_OF_CONDUCT.md).

## Commit style

Conventional-commit style subjects are appreciated, e.g. `fix: align heading icon`,
`docs: clarify build steps`, `feat: add preview script`.
