// 演示用虚构数据（Fictional sample data）——详见 README。
// Based on ice1000/resume (https://github.com/ice1000/resume), AGPL-3.0.
#import "chicv.typ": *

#show: chicv
#set par(justify: true, leading: 0.74em)


= #text(font: ("SimSun", "FangSong", "STFangsong"))[张三]

  #fa[#phone] 138-0000-0000 |
  #fa[#envelope] zhangsan\@example.com |
  #fa[#github] #link("https://github.com/zhangsan")[github.com/zhangsan] #linebreak()
  出生日期：2004 年 1 月 1 日 |
  政治面貌：共青团员

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
        font: ("SimSun", "FangSong", "STFangsong"),
        weight: "bold",
      )[#fa[#graduation-cap] 教育背景]

        #cventry(
            tl: "示例大学 计算机学院",
            tr: "2022.09 - 2026.06（预计）",
        )[
          本科，计算机科学与技术（荣誉班）。#linebreak()
          专业排名：1/120（前 1%） | 平均学分绩点：4.00/4.00。#linebreak()
          获 2024-2025 学年度校长特别奖学金；入选校级「未来学者」计划。
        ]
    ],
    [],
  )

  == #fa[#trophy] 荣誉与奖项

    #cventry(
        tl: "诺贝尔物理学奖",
        tr: "2025 年",
        compact: true,
    )[]
    #v(-0.2em)

    #cventry(
        tl: "ACM 图灵奖",
        tr: "2024 年",
        compact: true,
    )[]
    #v(-0.2em)

    #cventry(
        tl: "NeurIPS 最佳论文奖（两次）· ACL 最佳论文奖",
        tr: "2022 - 2023 年",
        compact: true,
    )[]
    #v(-0.2em)

    #cventry(
        tl: "国际大学生程序设计竞赛（ICPC）全球总决赛金牌",
        tr: "2022 年",
        compact: true,
    )[]
    #v(-0.2em)

    #cventry(
        tl: "国际数学奥林匹克（IMO）满分金牌",
        tr: "2021 年",
        compact: true,
    )[]

  == #fa[#book] 代表性论文

    #cventry(
        tl: "Attention Is All You Need",
        tr: "2017 · 第一作者",
    )[
      #list(
        "提出完全基于注意力机制的 Transformer 架构，以自注意力替代循环与卷积结构，成为现代大语言模型的基础范式（演示数据）。",
      )
    ]

    #cventry(
        tl: "Deep Residual Learning for Image Recognition",
        tr: "2016 · 第一作者",
    )[
      #list(
        "提出残差学习框架与深度残差网络 ResNet，解决深层网络退化问题，支撑上百层网络的稳定训练（演示数据）。",
      )
    ]

    #cventry(
        tl: "Language Models are Few-Shot Learners",
        tr: "2020 · 通讯作者",
    )[
      #list(
        "系统验证大规模语言模型的少样本学习能力，推动「预训练 + 提示」研究范式（演示数据）。",
      )
    ]

  == #fa[#flask] 科研与项目经历

    #cventry(
        tl: "通用智能体的对齐与安全研究",
        tr: "2023.09 - 至今",
    )[
      #list(
        "面向大规模智能体的价值对齐与可解释性，设计基于因果干预的行为审计框架，在模拟环境中将有害行为检出率提升至 99.9%（演示数据）。",
        "相关工作获 NeurIPS 2023 最佳论文奖，并开源配套工具链（演示数据）。",
      )
    ]

    #cventry(
        tl: "神经网络缩放定律与训练动力学",
        tr: "2021.03 - 2023.08",
    )[
      #list(
        "通过上千组控制实验拟合损失与算力、参数量、数据量之间的幂律关系，为训练预算分配提供可预测模型（演示数据）。",
      )
    ]

  == #fa[#laptop.code] 专业技能

    #list(
      "编程语言：Python、C++、Rust、Julia；深度学习框架：PyTorch、JAX、Transformers。",
      "科研工具：LaTeX、Typst、NumPy、Pandas、WandB；工程能力：Git、Docker、Linux、MySQL。",
      "语言能力：英语（托福 120）、日语（N1）；长期担任国际会议审稿人。",
      "研究兴趣：大模型基础架构、训练动力学、安全对齐与可解释性。",
    )

  == #fa[#user] 个人简介

    数学与工程直觉兼备的研究型工程师，习惯用第一性原理拆解问题，乐于分享与协作。（本页为演示用虚构数据，不指向任何真实人物。）

#v(0.6em)
#align(center)[#text(size: 8pt, fill: gray)[— 演示用虚构数据 · Fictional sample data — 所示奖项与论文仅用于模板展示 —]]
