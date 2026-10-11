#!/usr/bin/env python3
"""Render pages of the compiled resume PDFs into PNG previews for the README.

Usage:
    python scripts/render_preview.py resume-cn-post.pdf resume-en-post.pdf
    python scripts/render_preview.py resume-cn-post.pdf --out-dir assets/screenshots --dpi 150

Requires pypdfium2 (see requirements.txt).
"""

from __future__ import annotations

import argparse
import sys
from pathlib import Path

import pypdfium2 as pdfium


def render_page(pdf_path: Path, out_path: Path, dpi: int = 144, page_index: int = 0) -> Path:
    """Render a single page of ``pdf_path`` to a PNG file and return its path."""
    pdf = pdfium.PdfDocument(str(pdf_path))
    try:
        page = pdf[page_index]
        image = page.render(scale=dpi / 72).to_pil()
        out_path.parent.mkdir(parents=True, exist_ok=True)
        image.save(str(out_path), optimize=True)
    finally:
        pdf.close()
    return out_path


def main(argv: list[str] | None = None) -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("inputs", nargs="+", type=Path, help="compiled PDF files")
    parser.add_argument(
        "--out-dir",
        type=Path,
        default=Path("assets/screenshots"),
        help="output directory (default: assets/screenshots)",
    )
    parser.add_argument("--dpi", type=int, default=144, help="render resolution (default: 144)")
    parser.add_argument("--page", type=int, default=0, help="zero-based page index (default: 0)")
    args = parser.parse_args(argv)

    failures = 0
    for pdf_path in args.inputs:
        if not pdf_path.is_file():
            print(f"skip: {pdf_path} not found", file=sys.stderr)
            failures += 1
            continue
        out_path = args.out_dir / f"{pdf_path.stem}.png"
        render_page(pdf_path, out_path, dpi=args.dpi, page_index=args.page)
        print(f"rendered {pdf_path} -> {out_path} ({out_path.stat().st_size / 1024:.0f} KB)")
    return 1 if failures else 0


if __name__ == "__main__":
    raise SystemExit(main())
