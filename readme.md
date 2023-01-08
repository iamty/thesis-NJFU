# thesis-NJFU

thesis-NJFU是根据南京林业大学官方Microsoft Word毕业论文模板及撰写规范设计的LaTeX模板，旨在为广大本科毕业生的毕业论文撰写提供更优秀的体验。

本项目在最新的MikTeX发行版上测试通过，欢迎TeX Live, Mac TeX等平台用户反馈测试结果。

**CTeX套件恕不收到支持。**

## 特性
* 自动生成封面及中文日期
* 自动生成符合GB/T 7714-2015标准的参考文献条目
* 自动生成摘要
* 自动生成符合要求的目录
* 提供多种定理环境
* 在查重系统中表现正常

## 许可
本项目许可证为**LaTeX Project Public License v1.3c**.

## 项目结构

项目结构如下

```
THESIS-NJFU
│  main.pdf
│  main.tex
│  readme.md
│  references.bib
│  thesis-NJFU.cls
│
├─pic
│      mRNA_volcano.pdf
│
└─res
    ├─copyright
    │      ty_publlication.png
    │
    └─cover
            logo.jpg
            sn.jpg
```

根目录中包含说明文件的LaTeX源文件``main.tex``，PDF文件``main.pdf``，BibTeX参考文献数据库文件``references.bib``以及LaTeX类文件``thesis-NJFU.cls``。``./pic``目录下包含了文档编译所需要的图片文件，``./res``目录下包含了项目所需要的一些资源。

## 在开始前

在开始使用本项目前，请确保
* 已经正确安装你所喜爱的LaTeX发行版
* 你的电脑已经安装华文中宋与仿宋字体
* 你已经具备一定的LaTeX编写及使用基础
* 你能够使用BibTeX进行文献管理

## 从编译``main.tex``开始

按照``XeLaTeX-Biber-XeLaTeX-XeLaTeX``的顺序进行编译。如使用命令行，命令为
```
xelatex main.tex
biber main
xelatex main.tex
xelatex main.tex
```
如果设置正确，应该得到交叉引用正确的``main.pdf``及相应的辅助文件。如出现问题欢迎在issues中反馈。

## 撰写论文的工作流

* 文件位置：确保你的LaTeX源文件与``thesis-NJFU.cls``, ``./pic``和``./res``处在同一目录下。
* 在文件中：
1. 使用``\documentclass[12pt]{thesis-NJFU}``命令来使用本项目。
2. 参考``main.pdf``中的*1.2.1节: 基本信息*来正确设置封面。
3. 使用``\makecover``命令绘制封面。
4. 使用``cnabstract``环境以及``enabstract``来分别生成中英文摘要，``cnkeywords``和``enkeywords``来分别生成中英文关键词。
5. 摘要结束后使用``\tableofcontents``命令生成目录。
6. 在开始正文前, 使用``\mainpart``命令调整文章样式至正文部分。
7. 开始你的正文部分。请按照你掌握的LaTeX技术及``main.pdf``中的相关说明进行撰写。请仔细参阅参考文献的示例与图片的示例。
8. 使用``\conclusion``命令和``\acknowledgement``命令来开始结论与致谢部分。
9. 使用``\thesisreferences``来生成符合GB/T 7714-2015标准的参考文献条目。

如需打印项目版权页，使用``\copyrightpage``命令。

* 编译：按照``XeLaTeX-Biber-XeLaTeX-XeLaTeX``的顺序进行编译。

## 问题反馈

请在issues版块中提出，每条issue请包含：
* 问题简述
* 编译环境
* 编译log
