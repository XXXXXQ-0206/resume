# resume-demo — Typst 中文单页简历模板

> **示例数据声明**：本仓库中的姓名、联系方式、学校、经历、项目、奖项、指标和照片均为虚构内容，不对应任何真实个人或事实。

[下载示例 PDF](./resume-demo.pdf)

本仓库使用与个人简历相同的单页中文版式和构建方式，仅包含虚构示例数据，不含英文版本或私有信息。

## 构建

需要 Typst，以及 `SimSun`、`FangSong`、`STFangsong` 字体。当前使用 Typst 0.15.1 验证。

```powershell
./make.ps1
./make.ps1 clean
```

`Makefile` 提供等价命令：

```sh
make
make clean
```

编辑 `resume-cn.typ` 即可替换简历内容，替换 `证件照-黑.jpg` 即可更换照片。

第三方许可证见 [THIRD_PARTY_NOTICES.md](./THIRD_PARTY_NOTICES.md)。
