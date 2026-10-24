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
      "工程能力：熟悉 Git 分支协作、Docker Compose、单元测试与持续集成流程，能够编写清晰的接口和部署文档 ",
    )

  == #fa[#project-diagram] 个人项目

    #cventry(
        tl: "VisionBoard —— 多模态视频检索演示系统（Python + Vue 3） ",
        tr: "2025.03 - 2025.09 ",
    )[
      #list(
        "面向示例视频库构建多模态语义检索原型，支持文本、图片、人物与时间区间联合查询；在 1,200 段虚构视频、8,600 个片段的演示集上取得 Recall@5 82.4%、平均查询延迟 180 ms（均为示例指标）。 ",
        "设计关键帧抽取、CLIP 向量化、分段索引与结果重排流程，加入索引缓存和失败重试，将 50 GB 模拟数据的一键处理耗时由 18 分钟降至 6 分钟。 ",
        "实现视频播放器与检索面板联动，支持按人物、动作和场景过滤，自动高亮命中片段与时间戳，并提供时间轴缩略图和结果导出。 ",
        "基于 Docker Compose 提供一键启动环境，补充 24 个单元与集成测试，覆盖索引构建、查询解析、缓存失效和结果排序流程。 ",
      )
    ]

    #cventry(
        tl: "PaperLens —— 论文阅读与引用管理工具（React + FastAPI） ",
        tr: "2024.10 - 2025.02 ",
    )[
      #list(
        "基于 PDF.js 实现双栏阅读器，支持划词批注、引用抽取和阅读进度同步；在 60 份公开示例论文上完成交互与兼容性测试。 ",
        "设计 SQLite + FTS5 数据模型，提供标签、作者、会议和年份筛选；在 10 万字符级示例库中，常用查询响应时间低于 200 ms（模拟指标）。 ",
        "使用 FastAPI 封装文档解析、摘要与引用导出接口，接入自动格式检查和单元测试，并提供 Docker 镜像与本地运行说明。 ",
      )
    ]

  == #fa[#microscope] 科研项目

    #cventry(
        tl: "结构化视觉记忆的课程研究（示例） ",
        tr: "2024.09 - 2025.06 ",
    )[
      #list(
        "设计实体—状态—事件三层记忆结构，为视频片段维护人物、物体、动作与时间证据，并定义创建、更新、合并和失效规则。 ",
        "比较文本摘要、帧级向量和结构化记忆三种检索方案，在 300 条模拟查询上记录召回率、时延和显存占用，并完成统计汇总。 ",
        "完成时间过滤、实体约束与关系扩展的消融实验，结合错误案例分析复杂查询的失败原因，整理为可复现的实验记录。 ",
        "实现结构化记忆的可视化检查面板，支持按事件回放证据链并标记冲突条目，为后续人工复核提供统一入口。 ",
      )
    ]

  == #fa[#th.list] 竞赛经历

    #cventry(
        tl: "桌面机械臂视觉抓取演示项目 ",
        tr: "2024.03 - 2024.08 ",
    )[
      #list(
        "使用 RGB-D 相机和 YOLO 示例模型完成目标定位，结合手眼标定与轨迹规划在仿真环境中实现抓取流程；抓取成功率、响应时延等均为示例数值。 ",
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

    具备良好的编程基础与项目实践习惯，能够独立完成资料检索、原型开发和结果复盘。乐于沟通与协作，对多模态检索和视觉语言模型保持长期兴趣。能够在学习新工具的同时沉淀文档与测试，重视交付质量和可维护性。喜欢阅读、跑步与摄影。本页仅用于展示排版，所有个人信息、经历、奖项和指标均为虚构。
