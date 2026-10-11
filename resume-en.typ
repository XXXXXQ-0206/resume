// Fictional sample data — see README.
// Based on ice1000/resume (https://github.com/ice1000/resume), AGPL-3.0.
#import "chicv.typ": *

#show: chicv
#set par(justify: true, leading: 0.68em)
#set list(spacing: 0.6em)
#set text(size: 9.5pt)

#let private_info = json("resume-private/private_info.json")
#let resume_name = private_info.name_en
#let resume_phone = private_info.phone

// Latin-first font stack; New Computer Modern ships with Typst as a fallback.
#let latin-fonts = ("Palatino Linotype", "New Computer Modern", "Times New Roman", "SimSun")
#set text(font: latin-fonts)
#show heading.where(level: 1): set text(font: latin-fonts)
#show heading.where(level: 2): set text(font: latin-fonts)

= #text(font: latin-fonts)[#resume_name]

  #fa[#phone] #resume_phone |
  #fa[#envelope] zhangsan\@example.com |
  #fa[#github] #link("https://github.com/zhangsan")[github.com/zhangsan] #linebreak()
  Date of Birth: Jan 1, 2004 |
  Political Status: Member of the Communist Youth League of China

  #place(top + right, dx: -0.1cm, dy: 0.45cm)[
    #std.image("photo.jpg", width: 2.9cm, height: 3.8cm, fit: "cover")
  ]

  #grid(
    columns: (1fr, 3.1cm),
    column-gutter: 1.2em,
    [
      #v(0.42em)
      #text(
        size: 12pt,
        font: latin-fonts,
        weight: "bold",
      )[#fa[#graduation-cap] Education]

        #cventry(
            tl: "Sample University, College of Computer Science ",
            tr: "2022.09 - 2026.06 (expected) ",
            font: latin-fonts,
        )[
          B.Sc. in Computer Science and Technology (Honors Program).#linebreak()
          Major rank: 1/120 (top 1%) | GPA: 4.00/4.00.#linebreak()
          Presidential Special Scholarship, 2024-2025; selected for the "Future Scholars" program.
        ]
    ],
    [],
  )

  == #fa[#trophy] Honors and Awards

    #cventry(
        tl: "Nobel Prize in Physics",
        tr: "2025 ",
        compact: true,
        font: latin-fonts,
    )[]
    #v(-0.2em)

    #cventry(
        tl: "ACM A.M. Turing Award",
        tr: "2024 ",
        compact: true,
        font: latin-fonts,
    )[]
    #v(-0.2em)

    #cventry(
        tl: "NeurIPS Best Paper Award (twice) · ACL Best Paper Award",
        tr: "2022 - 2023 ",
        compact: true,
        font: latin-fonts,
    )[]
    #v(-0.2em)

    #cventry(
        tl: "ICPC World Finals Gold Medal",
        tr: "2022 ",
        compact: true,
        font: latin-fonts,
    )[]
    #v(-0.2em)

    #cventry(
        tl: "International Mathematical Olympiad, Perfect Score Gold Medal",
        tr: "2021 ",
        compact: true,
        font: latin-fonts,
    )[]

  == #fa[#book] Selected Publications

    #cventry(
        tl: "Attention Is All You Need",
        tr: "2017 · First author ",
        font: latin-fonts,
    )[
      #list(
        "Introduced the attention-only Transformer architecture, replacing recurrence and convolution with self-attention; it became the foundation of modern large language models (sample data). ",
      )
    ]

    #cventry(
        tl: "Deep Residual Learning for Image Recognition",
        tr: "2016 · First author ",
        font: latin-fonts,
    )[
      #list(
        "Proposed residual learning and the ResNet family, enabling stable training of networks with more than one hundred layers (sample data). ",
      )
    ]

    #cventry(
        tl: "Language Models are Few-Shot Learners",
        tr: "2020 · Corresponding author ",
        font: latin-fonts,
    )[
      #list(
        "Demonstrated few-shot learning at scale and popularized the pretrain-then-prompt paradigm (sample data). ",
      )
    ]

  == #fa[#flask] Research and Project Experience

    #cventry(
        tl: "Alignment and Safety of General-Purpose Agents",
        tr: "2023.09 - Present ",
        font: latin-fonts,
    )[
      #list(
        "Designed a causal-intervention behavior auditing framework for value alignment and interpretability of large-scale agents, raising harmful-behavior detection to 99.9% in simulation (sample data). ",
        "The work received a NeurIPS 2023 Best Paper Award and the toolchain was open-sourced (sample data). ",
      )
    ]

    #cventry(
        tl: "Neural Scaling Laws and Training Dynamics",
        tr: "2021.03 - 2023.08 ",
        font: latin-fonts,
    )[
      #list(
        "Fitted power-law relations between loss and compute, parameters and data over thousands of controlled experiments, providing a predictive model for training-budget allocation (sample data). ",
      )
    ]

  == #fa[#laptop.code] Technical Skills

    #list(
      "Languages: Python, C++, Rust, Julia. Deep learning: PyTorch, JAX, Transformers. ",
      "Research tooling: LaTeX, Typst, NumPy, Pandas, WandB. Engineering: Git, Docker, Linux, MySQL. ",
      "Languages (human): English (TOEFL 120), Japanese (JLPT N1); regular reviewer for international conferences. ",
      "Research interests: foundation model architectures, training dynamics, safety alignment and interpretability. ",
    )

  == #fa[#user] Personal Profile

    A research-minded engineer with strong mathematical and engineering intuition, who enjoys decomposing problems from first principles and collaborating openly. (This page is fictional sample data and does not describe any real person.)

#v(0.6em)
#align(center)[#text(size: 8pt, fill: gray)[— Fictional sample data · 演示用虚构数据 — awards and papers are shown for template demonstration only —]]
