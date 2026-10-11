# resume-demo — 基于 Typst 的中英双语简历模板

[English](README.md) | 中文

> **示例数据声明** — 本仓库中的所有简历内容均为虚构。`张三`人设、诺贝尔奖与图灵奖条目、
> 论文列表（含 *Attention Is All You Need*）以及证件照均为模板演示用的占位内容，
> 不指向任何真实人物，也不构成任何真实声明。

一个紧凑的单页中英双语简历模板，使用 [Typst](https://typst.app/) 编写。
`resume-cn.typ` 与 `resume-en.typ` 两个源文件共享同一套样式模块，分别编译为 A4 PDF；
姓名、电话等私有字段通过单独的 JSON 文件注入，公开源码中不出现真实个人信息。

## 截图

| 中文 | English |
| --- | --- |
| ![中文简历预览](assets/screenshots/resume-cn-post.png) | ![英文简历预览](assets/screenshots/resume-en-post.png) |

## 项目简介

本仓库是一个可直接 fork 使用的双语单页简历起点：双栏头部布局带 2.9 × 3.8 cm 证件照位，
章节标题配 Font Awesome 图标，条目采用紧凑的双栏排版，并提供脱敏机制用于公开发布时隐藏字段。

仓库自带一套虚构的示例数据，因此每次构建与每张截图都可以完整复现，同时不暴露任何真实个人数据。

## 特性

- 中英文各一份单页 A4 简历，两个 `.typ` 源文件保持同步。
- 共享样式模块（`chicv.typ`），内置 Font Awesome 图标与头部栅格布局。
- 标准 2.9 × 3.8 cm 证件照位（`photo.jpg`）。
- 私有字段存放在 `resume-private/private_info.json`，构建时注入。
- 脱敏支持：`--input level=submit` 输出完整内容，`--input level=post` 可遮盖或替换指定字段。
- 支持 `make` 构建，Windows 下可用等价的 `make.ps1`。
- `scripts/render_preview.py` 可将编译后的 PDF 渲染为 README 预览图。

## 安装

依赖：

- [Typst](https://github.com/typst/typst#installation) 0.13+（本仓库使用 0.15.1 验证）
- GNU Make，或 Windows 下的 PowerShell
- Python 3.10+（可选，仅用于渲染预览图）

```bash
git clone https://github.com/XXXXXQ-0206/resume-demo.git
cd resume-demo
```

## 使用

1. 编辑 `resume-private/private_info.json`（示例中为虚构的「张三」）。
2. 编辑 `resume-cn.typ` 与 `resume-en.typ`，并保持两个文件同步。
3. 将 `photo.jpg` 替换为自己的证件照（建议 2.9:3.8 比例）。

如需将个人信息排除在公开仓库之外，可把 `resume-private/` 移出版本控制，改为本地保存或私有 submodule。

## 构建说明

```bash
make          # 构建全部 4 个 PDF
make clean    # 清理产物
```

Windows 下没有 GNU Make 时，使用等价的 PowerShell 脚本：

```powershell
./make.ps1          # 等价于 make
./make.ps1 clean    # 等价于 make clean
```

| 生成文件 | 源文件 | 级别 |
| --- | --- | --- |
| `resume-cn-submit.pdf` | `resume-cn.typ` | `submit` |
| `resume-en-submit.pdf` | `resume-en.typ` | `submit` |
| `resume-cn-post.pdf` | `resume-cn.typ` | `post` |
| `resume-en-post.pdf` | `resume-en.typ` | `post` |

编译产物不入库；可在 [Releases](https://github.com/XXXXXQ-0206/resume-demo/releases) 下载，或本地构建。

渲染预览图（可选）：

```bash
pip install -r requirements.txt
python scripts/render_preview.py resume-cn-post.pdf resume-en-post.pdf
```

## 项目结构

```
.
├── resume-cn.typ                  # 中文简历源文件（示例数据）
├── resume-en.typ                  # 英文简历源文件（示例数据）
├── chicv.typ                      # 共享样式模块
├── fontawesome.typ                # Font Awesome 图标定义
├── resume-private/
│   └── private_info.json          # 构建时注入的姓名 / 电话
├── fonts/
│   └── FontAwesome6.otf           # 图标字体（SIL OFL 1.1）
├── photo.jpg                      # 占位证件照（公有领域示例）
├── Makefile / make.ps1            # 构建脚本
├── scripts/render_preview.py      # PDF → PNG 预览图工具
├── requirements.txt
├── assets/screenshots/            # README 预览图
└── .github/                       # CodeQL、Dependabot 与 Issue / PR 模板
```

## 路线图

- [ ] 增加 CI：每次推送自动编译两份简历，并把 PDF 附加到 Release。
- [ ] 增加第三种语言示例（如日语），验证样式模块的通用性。

## 参与贡献

欢迎提交问题、修复与改进，详见 [CONTRIBUTING.md](CONTRIBUTING.md)。
请勿在 issue、commit message 或 PR 中添加真实个人信息。

## 许可证

本项目以 **GNU Affero General Public License v3.0** 发布，见 [LICENSE](LICENSE)。
项目派生自同样采用 AGPL-3.0 的 [ice1000/resume](https://github.com/ice1000/resume)，
作为衍生作品沿用同一许可证；对本仓库的衍生作品也必须沿用该许可证。

## 常见问题

**诺贝尔奖是真的吗？**
不是。示例简历中的全部内容（包括奖项）均为虚构，仅用于展示模板的排版效果。

**为什么论文列表里有 *Attention Is All You Need*？**
它是占位用的著名论文之一，真实作者是 Vaswani 等人；虚构人设与这篇论文没有关联。

**照片里的人是谁？**
一张公有领域的 Elon Musk 照片（美国空军 Trevor Cokley 摄，来自 Wikimedia Commons），
仅作为 2.9 × 3.8 cm 证件照位的占位素材，与虚构人设无关。

**示例人物为什么叫「张三」？**
「张三」相当于中文里的「John Doe」，是最常用的占位姓名。

**能用这个模板做自己的简历吗？**
可以，需遵循 AGPL-3.0：替换示例数据、避免把个人信息提交到公开仓库，并保留许可证与署名。

## 致谢

- [ice1000/resume](https://github.com/ice1000/resume) — 本项目所基于的原始 Typst 简历模板（AGPL-3.0）。
- [Typst](https://typst.app/) — 排版系统。
- [Font Awesome Free](https://fontawesome.com/) — 图标（字体部分为 SIL OFL 1.1）。
- 占位证件照：美国空军 Trevor Cokley 摄，公有领域，来自 Wikimedia Commons。

## 免责声明

本软件与全部内容按“原样”（AS IS）提供，不附带任何明示或默示的保证，包括但不限于对适销性、
特定用途适用性及非侵权的保证。作者或版权持有人不对任何索赔、损害或其他责任承担责任，
无论是在合同诉讼、侵权诉讼还是其他情形下，亦无论是在与本软件相关还是无关的场合。

- 本仓库中的简历内容均为虚构示例，不得作为任何真实人物的资历或成就对外展示。
- 使用本模板时，你需自行遵守所在司法辖区的法律法规。
- 禁止将本项目、其构建流程或内容用于任何违法用途、虚假陈述或侵犯他人权利的行为。
- 使用本模板及示例数据的一切风险由使用者自行承担。
