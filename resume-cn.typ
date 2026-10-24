#import "chicv.typ": *

#show: chicv
#set document(
  title: "张三简历（虚构示例）",
  author: "张三（虚构）",
)
#set text(lang: "zh", region: "CN")
#set par(justify: true, leading: 0.72em)
#set list(spacing: 0.9em)


= #text(font: ("SimSun", "FangSong", "STFangsong"))[张三（示例）]

  #fa[#phone] 138-0000-0000 |
  #fa[#envelope] zhangsan\@example.com |
  #fa[#github] #link("https://github.com/your-name")[github.com/your-name] #linebreak()
  出生日期：2004 年 1 月 1 日（虚构） |
  政治面貌：共青团员（虚构）

  #place(top + right, dx: -0.1cm, dy: 0.45cm)[
    #std.image(
      "证件照-黑.jpg",
      width: 2.9cm,
      height: 3.8cm,
      fit: "cover",
      alt: "虚构人物的示例证件照",
    )
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
            tl: [示例大学 #text(size: 8.5pt, weight: "regular")[示例]],
            tr: "2022.09 - 2026.06 ",
        )[
          本科，计算机学院，软件工程专业 #linebreak()
          年级排名：12/180（6.67%） | 平均学分绩点：3.82/4.0 #linebreak()
          学生工作：示例学院学生会技术部部长 #linebreak()
          获得荣誉：示例一等奖学金、示例优秀学生干部、示例创新竞赛校级一等奖
        ]
    ],
    [],
  )

  == #fa[#laptop.code] 专业技能

    #list(
      "编程基础：熟练使用 Python、C++、TypeScript、PyTorch 和 Vue 3，熟悉 SQL、Java、Linux、Git 与 Docker ",
      "研究方向：多模态检索、视觉语言模型与智能体工作流 ",
      "英语能力：CET-6 520（示例），能够阅读英文技术文档与论文 ",
    )

  == #fa[#project-diagram] 个人项目

    #cventry(
        tl: "VisionBoard —— 多模态视频检索演示系统（Python + Vue 3） ",
        tr: "2025.03 - 2025.09 ",
    )[
      #list(
        "面向示例视频库构建语义检索原型，支持文本、图片与时间区间查询；在 1,200 段虚构视频上实现 Recall@5 82.4%（示例指标）。 ",
        "设计关键帧抽取、CLIP 向量化与分段索引流程，将演示数据处理耗时由 18 分钟降至 6 分钟（模拟数据）。 ",
        "实现视频播放器与检索面板联动，支持按人物、动作和场景过滤，并展示命中片段与时间戳。 ",
        "基于 Docker Compose 提供一键启动环境，补充单元测试与接口文档，覆盖索引、查询和结果排序流程。 ",
      )
    ]

  == #fa[#microscope] 科研项目

    #cventry(
        tl: "结构化视觉记忆的课程研究（示例） ",
        tr: "2024.09 - 2025.06 ",
    )[
      #list(
        "设计实体—状态—事件三层记忆结构，为视频片段维护人物、物体、动作与时间证据。 ",
        "比较文本摘要、帧级向量和结构化记忆三种检索方案，并在示例数据集上记录召回率、时延和显存占用。 ",
        "完成消融实验与错误分析，验证时间过滤和实体约束对复杂查询的改进（数据均为模拟）。 ",
      )
    ]

  == #fa[#th.list] 竞赛经历

    #cventry(
        tl: "桌面机械臂视觉抓取演示项目 ",
        tr: "2024.03 - 2024.08 ",
    )[
      #list(
        "使用 RGB-D 相机和 YOLO 示例模型完成目标定位，在仿真环境中实现抓取流程；成功率、响应时延等均为示例数值。 ",
      )
    ]

    #cventry(
      tl: [#text(size: 10pt)[示例程序设计竞赛] #text(font: ("FangSong", "STFangsong", "SimSun"), weight: "regular", size: 10pt)[指导老师：示例教师 A ]],
        tr: "2025 年，校级一等奖（示例） ",
      compact: true,
    )[]
    #v(-0.2em)

    #cventry(
      tl: [#text(size: 10pt)[示例数学建模竞赛] #text(font: ("FangSong", "STFangsong", "SimSun"), weight: "regular", size: 10pt)[指导老师：示例教师 B ]],
        tr: "2024 年，校级二等奖（示例） ",
      compact: true,
    )[]
    #v(-0.2em)

    #cventry(
      tl: [#text(size: 10pt)[示例创新训练计划] #text(font: ("FangSong", "STFangsong", "SimSun"), weight: "regular", size: 10pt)[指导老师：示例教师 C ]],
        tr: "2024 年，优秀结题（示例） ",
      compact: true,
    )[]

  == #fa[#user] 个人简介

    具备良好的编程基础与项目实践习惯，能够独立完成资料检索、原型开发和结果复盘。乐于沟通与协作，对多模态检索和视觉语言模型保持长期兴趣。喜欢阅读、跑步与摄影。本页仅用于展示排版，所有个人信息、经历、奖项和指标均为虚构。
