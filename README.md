# Calc-Workbook

`Calc-Workbook` 是一个基于 Typst 的高等数学题册排版项目，当前仓库收录《高等数学（下）》内容，后续会与上册内容合并为统一题册。

- Repository: `git@github.com:xihale/Calc-Workbook.git`
- License: `MIT`
- Current scope: 《高等数学（下）》第八章到第十二章

## 项目定位

- 面向高等数学题册的习题整理与版式排版
- 统一维护题目、答案、解析与章节结构
- 输出适合打印和电子阅读的 PDF 文档

## 名称说明

项目名采用 `Calc-Workbook`，是因为后续计划将上册与下册合并维护，而不是长期拆分成两个独立仓库。

## 当前内容

- 第八章：向量代数与空间解析几何
- 第九章：多元函数微分法及其应用
- 第十章：重积分
- 第十一章：曲线积分与曲面积分
- 第十二章：无穷级数

## 目录结构

- `main-question.typ`：习题版入口
- `main-answer.typ`：参考答案版入口
- `template.typ`：全局版式、题型宏、封面与目录配置
- `chapters/all.typ`：章节汇总入口
- `chapters/chapter-08.typ` 到 `chapters/chapter-12.typ`：各章题目与解析
- `check_non_ascii.py`：检查数学环境中的非 ASCII 字符

## 构建方式

生成习题版：

```bash
typst compile "main-question.typ"
```

生成答案版：

```bash
typst compile "main-answer.typ"
```

日常校验建议优先使用：

```bash
typst compile "main-answer.typ"
```

## 字体与环境

模板当前优先使用以下字体：

- `New Computer Modern`
- `New Computer Modern Math`
- `Noto Serif CJK SC`
- `SimSun`

如果本机缺失对应字体，Typst 的实际渲染效果可能会有差异。

## 编辑约定

- 题目统一通过 `#question(...)` 组织
- 填空答案优先写在题干中的 `#ans[...]`
- 选择/判断题答案使用 `#choice[...]`
- 大范围改数学语法前，先编译答案版确认版面无异常

更具体的维护规则见 `MAINTAINING.md`。

## License

本项目采用 `MIT` License，详见 `LICENSE`。
